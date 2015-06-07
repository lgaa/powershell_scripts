[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.Smo")
$srv =  New-Object ('Microsoft.SqlServer.Management.Smo.Server') "<SQLserver name>"
$srv.JobServer.jobs| Where-Object {$_.Name -eq 'test'} | Select Name,isEnabled,CurrentRunRetryAttempt,CurrentRunStatus,CurrentRunStep,CurrentRunSteplastRunDate,LastRunDate,lastRunOutCome | Format-Table -Auto
