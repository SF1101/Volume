Start-Transcript -Path "$env:userprofile\Desktop\index.txt"
Get-AudioDevice -list
Stop-Transcript
exit
