Start-Transcript -Path "C:\Users\fsjoberg\Desktop\index.txt"
Get-AudioDevice -list
Stop-Transcript
Get-PnpDevice -PresentOnly