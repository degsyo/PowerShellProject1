Add-PSSnapin Quest.ActiveRoles.ADManagement
Connect-qadservice staff.uws.loc
get-content C:\scratch\staff.txt | %  {

$user = Get-QADUser $_

if (!$user){

     "User $_ could not be found"

} else {

   Get-QADUser $user | SELECT NTAccountName,DisplayName,samAccountName }} |

Write-Host
Read-Host -Prompt "Press Enter to exit"