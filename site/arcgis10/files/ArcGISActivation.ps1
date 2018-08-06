#Activate ArcGIS IFF it is installed
$SILENT = "-s"
$VERSION = "-ver 10.6"
$LICENSEFILE = "-lif `"\\192.168.1.233\DeploymentShare\Applications\ESRI ArcGIS Desktop 10.6\ArcGISDesktopAdvanced_SingleUse_566914.prvc`""
$AUTHPATH = 'C:\Program Files (x86)\Common Files\ArcGIS\bin\SoftwareAuthorization.exe' 
 
if (Test-Path $AUTHPATH) {
     $ACTIVATION = (start-process -filepath $AUTHPATH -ArgumentList $SILENT,$VERSION,$LICENSEFILE -PassThru -Wait)
     if ($ACTIVATION.ExitCode = 0) {
        New-Item -ItemType File -Path 'C:\Program Files (x86)\ArcGIS\Desktop10.6\licensed'    
     }
}
