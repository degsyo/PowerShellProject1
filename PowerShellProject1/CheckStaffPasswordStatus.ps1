Add-PSSnapin Quest.ActiveRoles.ADManagement
Connect-qadservice staff.uws.loc
$BannerID = Read-Host "Which StaffID would you like to check"
get-qaduser $BannerID -properties passwordlastset, passwordneverexpires, PasswordStatus | sort name | ft Name, passwordlastset, Passwordneverexpires, PasswordStatus
Read-Host -Prompt "Press Enter to exit"