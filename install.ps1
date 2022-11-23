# This simple powershell script installs IIS service on a Azure virtual machine.
# Automatically install IIS service on the server.
Add-WindowsFeature Web-Server
# Create a default html file and add a content taking the name of the server.
Set-Content -Path "C:\inetpub\wwwroot\Default.html" -Value "This is the server $($env:computername) !"