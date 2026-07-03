Set objShell = CreateObject("Wscript.Shell")
strPath = Wscript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile)
strBat = strFolder & "\bot.bat"

' Jalanin bot.bat sebagai admin (tanpa prompt UAC)
objShell.Run "powershell -Command ""Start-Process '" & strBat & "' -Verb runAs""", 0, False
