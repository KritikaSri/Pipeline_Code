echo "logging in"
login_file https://blrkeccdsrv01.ad.infosys.com:9443/ase " C:\Users\Kritika_S\.ounce\ouncecli.token"  -acceptssl
echo "logged in"
oa "C:\Program Files (x86)\Jenkins\workspace\Cicd_pipeline\AppScan\AppScan_Pipeline.paf"
echo "completed"
scan "C:\Program Files (x86)\Jenkins\workspace\Cicd_pipeline\AppScan\AppScan_Pipeline.ppf"
echo "ApplicationScan"
publishassessase https://blrkeccdsrv01.ad.infosys.com:9443/ase
pause 
