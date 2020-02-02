vscod download config --output ./vscode/ ./config.json
cp ./install_extensions.ps1 ./vscode
zip -mr ./vs-code-$(date +'%d-%b-%Y').zip ./vscode 
