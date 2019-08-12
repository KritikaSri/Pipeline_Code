echo "logging in"
login_file https://blrkeccdsrv01.ad.infosys.com:9443/ase " C:\Users\Kritika_S\.ounce\ouncecli.token"  -acceptssl
echo "Signed IN"
pase "C:\Program Files (x86)\Jenkins\workspace\Cicd_pipeline\AppScan\src\AppScan_Pipeline_Normal_CLI_Assessment_1565265170089.ozasmt" -name AppScan_Pipeline -aseapplication -folder "https://blrkeccdsrv01.ad.infosys.com:9443/ase" "AppScan_Pipeline"
