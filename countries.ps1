$b=Invoke-RestMethod -Uri "https://restcountries.com/v3.1/all"
$data=$b
$c= $data.name.common
$of= $data.name.official
$cp=$data.capital
$crsn=$data.car.signs
$crsd=$data.car.side
$t=$data.timezones
$a= Read-Host("Enter any country name")

for($i=0; $i -lt $data.count; $i++){
if ($a -in $c[$i]){
Write-Host "`n"
Write-Host "The official name of the $($a) is $($of[$i])"

$crn=[string]$data[$i].currencies
$crn1=$crn[2]+$crn[3]+$crn[4]
Write-Host "The currency of the $($a) is $($crn1)"

Write-Host "The capital of the $($a) is $($cp[$i])"
Write-Host "The list of boarders shared by other countries $($data[$i]| Select-Object -ExpandProperty borders)"
write-Host "Car sign of the $($a) is $($crsn[$i]) $($crsd[$i])"
Write-Host "Time zone of the $($a) is $($t[$i])"
Write-Host "Latitude and Longitude of the $($a) is $($data[$i].latlng[0]) $($data[$i].latlng[1])"
 }
}
