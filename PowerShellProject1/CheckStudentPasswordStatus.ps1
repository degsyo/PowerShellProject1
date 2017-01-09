Add-PSSnapin Quest.ActiveRoles.ADManagement
Connect-qadservice student.uws.loc
$BannerID = Read-Host "Which BannerID would you like to check"
get-qaduser $BannerID -properties passwordlastset, passwordneverexpires, PasswordStatus | sort name | ft Name, passwordlastset, Passwordneverexpires, PasswordStatus
Read-Host -Prompt "Press Enter to exit"