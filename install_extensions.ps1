Write-Output "Installing VS Code Extensions"
$extensions = Get-ChildItem *.vsix -Recurse
ForEach ($extension in $extensions) {
    code --install-extension $extension.fullName
}
Write-Output "VS Code Extensions Installation Finished"


