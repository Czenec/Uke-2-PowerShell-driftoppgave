$Time = "08:47"

$TotalSeconds = ((get-date $Time) - (get-date)).TotalSeconds;
Write-Output $TotalSeconds

# Short version
start-sleep ((get-date $Time) - (get-date)).TotalSeconds;

# Tutorial version curtesy of u/JewStyleKungfu https://www.reddit.com/r/PowerShell/comments/2d8hy4/comment/cjn6d60/?utm_source=share&utm_medium=web2x&context=3
#Set your execution time here
<#
$triggerTime = "7:00pm";

#Get a DateTime object for the Trigger Time
$triggerDate = get-date $triggerTime;

#Get a DateTime object for the current time
$currentDate = get-date;

#Subtract the Current Date from the Trigger Date to get a TimeSpan object
#representing the amount of time you need to sleep
$timeToSleep = $triggerDate - $currentDate;

#Convert the timespan to seconds for use as an argument in the start-sleep command
$secondsToSleep = $timeToSleep.TotalSeconds;

#Start sleeping
start-sleep $secondsToSleep;
#>



Write-Output "BOM"

#sudo shutdown -r now