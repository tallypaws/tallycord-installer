$link = "https://github.com/tallypaws/tallycord-installer/releases/latest/download/TallycordInstallerCli.exe"

$outfile = "$env:TEMP\TallycordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
