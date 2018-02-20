powershell_script 'Install IIS' do
code 'Add-WindowsFeature Web-Server'
end
template 'c:\inetpub\wwwroot\Default.htm' do
end
service 'w3svc' do
action [:enable, :start]
end
