$ccpserver="srv_name"
$appid="appID"
$safe="cyberarkSafe"
$username="user"
$address="hostname"
$accountdetails=$null
 
$accountdetails = Invoke-RestMethod -Method Get -Uri "https://$ccpserver/AIMWebService/api/Accounts?AppID=$appid&Safe=$safe&username=$username&Query=address=$address"
$name=$accountdetails.username
$name
$password=$accountdetails.Content
$safe=$allaccountdetails.safe
if($password -ne $null)
{
"Password of account $name in safe $safe is $password"
}
else
{
"Sorry: password retrieval failed. Please check errors displayed after running script"
}
