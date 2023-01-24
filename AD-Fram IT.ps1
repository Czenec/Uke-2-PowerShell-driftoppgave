import-module activedirectory

New-ADOrganizationalUnit -Name "Grupper" -Path "DC=PowerShell-practice,DC=lan"

New-ADGroup -Name "Ledergruppa" -GroupScope Global -GroupCategory Security -Path "OU=Grupper,DC=PowerShell-practice,DC=lan"
New-ADGroup -Name "Salgsavdelingen" -GroupScope Global -GroupCategory Security -Path "OU=Grupper,DC=PowerShell-practice,DC=lan"
New-ADGroup -Name "Utviklere" -GroupScope Global -GroupCategory Security -Path "OU=Grupper,DC=PowerShell-practice,DC=lan"


New-ADOrganizationalUnit -Name "Brukere" -Path "DC=PowerShell-practice,DC=lan"

New-ADOrganizationalUnit -Name "Fram IT" -Path "OU=Brukere,DC=PowerShell-practice,DC=lan"

New-ADOrganizationalUnit -Name "Ledergruppa" -Path "OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
New-ADOrganizationalUnit -Name "Salgsavdelingen" -Path "OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
New-ADOrganizationalUnit -Name "Utviklere" -Path "OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"


# ---Ledergruppa---

$AccountPassword = "Qwerty123"
$DisplayName = "Cain Roth"
#$Enabled = "1"
$GivenName = "Cain"
$Name = "Cain Roth"
#$PasswordNeverExpires = "1"
$Path = "OU=Ledergruppa,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Cain Roth"
$Surname = "Roth"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Randy Carpenter"
#$Enabled = "1"
$GivenName = "Randy"
$Name = "Randy Carpenter"
#$PasswordNeverExpires = "1"
$Path = "OU=Ledergruppa,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Randy Carpenter"
$Surname = "Carpenter"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Colin Norton"
#$Enabled = "1"
$GivenName = "Colin"
$Name = "Colin Norton"
#$PasswordNeverExpires = "1"
$Path = "OU=Ledergruppa,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Colin Norton"
$Surname = "Norton"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


Add-ADGroupMember -Identity "Ledergruppa" -Members "Cain Roth","Randy Carpenter","Colin Norton"


# ---Salgsavdelingen---

$AccountPassword = "Qwerty123"
$DisplayName = "Jessica Hancock"
#$Enabled = "1"
$GivenName = "Jessica"
$Name = "Jessica Hancock"
#$PasswordNeverExpires = "1"
$Path = "OU=Salgsavdelingen,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Jessica Hancock"
$Surname = "Hancock"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Honor Manning"
#$Enabled = "1"
$GivenName = "Honor"
$Name = "Honor Manning"
#$PasswordNeverExpires = "1"
$Path = "OU=Salgsavdelingen,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Honor Manning"
$Surname = "Manning"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Anoushka Anthony"
#$Enabled = "1"
$GivenName = "Anoushka"
$Name = "Anoushka Anthony"
#$PasswordNeverExpires = "1"
$Path = "OU=Salgsavdelingen,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Anoushka Anthony"
$Surname = "Anthony"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Fay Dyer"
#$Enabled = "1"
$GivenName = "Fay"
$Name = "Fay Dyer"
#$PasswordNeverExpires = "1"
$Path = "OU=Salgsavdelingen,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Fay Dyer"
$Surname = "Dyer"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


Add-ADGroupMember -Identity "Salgsavdelingen" -Members "Jessica Hancock","Honor Manning","Anoushka Anthony","Fay Dyer"


# ---Utviklere---

$AccountPassword = "Qwerty123"
$DisplayName = "Aron Pace"
#$Enabled = "1"
$GivenName = "Aron"
$Name = "Aron Pace"
#$PasswordNeverExpires = "1"
$Path = "OU=Utviklere,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Aron Pace"
$Surname = "Pace"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Nora Odling"
#$Enabled = "1"
$GivenName = "Nora"
$Name = "Nora Odling"
#$PasswordNeverExpires = "1"
$Path = "OU=Utviklere,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Nora Odling"
$Surname = "Odling"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


$AccountPassword = "Qwerty123"
$DisplayName = "Zeeshan Maldonado"
#$Enabled = "1"
$GivenName = "Zeeshan"
$Name = "Zeeshan Maldonado"
#$PasswordNeverExpires = "1"
$Path = "OU=Utviklere,OU=Fram IT,OU=Brukere,DC=PowerShell-practice,DC=lan"
$UserPrincipalName = "Zeeshan Maldonado"
$Surname = "Maldonado"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force) -DisplayName $DisplayName -Enabled 1 -GivenName $GivenName -Name $Name -PasswordNeverExpires 1 -Path $Path -UserPrincipalName $UserPrincipalName -Surname $Surname


Add-ADGroupMember -Identity "Utviklere" -Members "Aron Pace","Nora Odling","Zeeshan Maldonado"