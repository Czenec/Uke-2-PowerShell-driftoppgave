$counter = 0

while ($counter -lt 5)
{
    Write-Output "looping"

    $TargetTime = [DateTime]::ParseExact("HH:mm:ss", "02:00:00", [System.Globalization.CultureInfo]::InvariantCulture)

    while ($(Get-Date) -lt $TargetTime)
    {
        Start-Sleep -Seconds 1
    }

    # Script continues after the specified time

    sudo shutdown -r now


}
# the loop part is useless but its there.