# Monitoring Windows SQL CLuster

## Exemple of powershell script

````powershell
####################################################
#     script name: sqlcluster_monitoring.ps1
#       Authors: Jérémie CUADRADO
####################################################
#     Version: 0.1 (20/09/2019)
####################################################
Import-Module FailoverClusters -Force

$LogFolder = "C:\logs\sqlcluster"
$LogFile = $LogFolder + "\cluster.log"
$datett = Get-Date 
$ClusterGroup = Get-ClusterGroup
$ClusterGroup | Add-Member -Name "timestamp" -Value $datett -MemberType NoteProperty
#$ClusterGroup|Format-List|ConvertTo-Json -Compress| Out-File -Encoding "UTF8" $LogFile
$ClusterGroup|ConvertTo-Json -Compress| Out-File -Encoding "UTF8" $LogFile

````