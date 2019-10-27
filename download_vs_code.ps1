$arguments = "download config",`
             "--output .\vscode\",`
             ".\config.json"
$timestamp = Get-Date -Format "yyy-MM-dd-HHmmPST"
$zipFile = @{
    Path= ".\vscode\*"
    CompressionLevel = "Optimal"
    DestinationPath = ".\vs-code-$timestamp.zip"
}
If (Test-Path .\vscode) {
    Remove-Item -Path .\vscode `
    -Recurse `
    -Force
}
Start-Process -NoNewWindow -Wait -FilePath vscod -ArgumentList $arguments
Compress-Archive @zipFile
Remove-Item -Path .\vscode `
    -Recurse `
    -Force