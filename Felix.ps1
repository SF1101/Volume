Start-Transcript -Path "C:\Temp\Felix\Ferror.txt"

Set-Audiodevice -index <string>
Set-AudioDevice -PlaybackMute 0
Set-AudioDevice -PlaybackVolume 40
Set-Audiodevice -index <string>
Set-AudioDevice -RecordingVolume 50 


stop-Transcript
if ($error)
{
Send-MailMessage -Smtpserver "smtp.abo.fi" -From "adminreport@abo.fi" -To "john.sjoholm@abo.fi" -Subject "Error" -Body "Powershell script in <hus> <rum> has failed" -Attachments "C:\Temp\Felix\Ferror.txt"
}
else {
exit
}
