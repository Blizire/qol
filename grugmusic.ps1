
$filepath = "D:\programming\jmusic"
$filename = "JMusicBot-0.3.9.jar"


cd $filepath
write-host (pwd)
java -jar $filename
cd ~

<#

trying to hard... will keep for later in the future and encrpyt the token

$filepath = ""
$token = "Mjg3NjgxMjc3MTU3NzAzNjgw.GCnCAn.ryWxlX44dAIeCurMJaW7oAFjpGO8NCRFvRQvvo"
$owner_id = "236323016617754636"


if ( !$args[0] ) 
{
    $filepath = "D:\programming\jmusic\JMusicBot-0.3.9.jar"
    write-host "Using default path"  $filepath 
}
else
{
    $filepath = $args[0]
}

try
{
    java -jar $filepath
}
catch
{
    write-host "Could not open JAR file supplied, does it exist?"
    write-host $_
}
#>