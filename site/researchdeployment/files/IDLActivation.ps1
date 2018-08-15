#Activate IDL IFF it is installed
$LICENSECODE = "-a D4A6-940D-D903-A163"
$AUTHPATH = "c:\Program Files\Harris\IDL86\license_utils\bin.x86_64\activate.exe"

if (Test-Path $AUTHPATH) {
    $ACTIVATION = (start-process -filepath $AUTHPATH -ArgumentList $LICENSECODE -PassThru -Wait)
    if ($ACTIVATION.ExitCode -eq "0") {
        New-Item -ItemType File -Path 'C:\Program Files\Harris\licensed'    
     }
}