$startdate = Get-Date -Date '2019-05-01'
$enddate = Get-Date -Date '2019-12-20'

$difference = New-TimeSpan -Start $startdate -End $enddate
$days = [Math]::Ceiling($difference.TotalDays)+1

1..$days | ForEach-Object {
  $startdate
  $startdate = $startdate.AddDays(1)
} |
  (Where-Object { $_.DayOfWeek -gt 0 -and $_.DayOfWeek -le 2} | Select-Object -Property Date).count()
