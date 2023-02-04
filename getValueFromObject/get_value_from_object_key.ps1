function getKeyValue ($inputObject,$key)
{
   #Get input object
   $functionInput = $inputObject
   $functionInput
   #Calculate key lenght
   $keyLenght = $key.Split('/').Length
   $keyLenght
   #Get keys
   $keyValues = $key.Split('/')
   $keyValues
   #Convert to PSobject
   $functionInputkey = $functionInput | ConvertFrom-Json

   foreach ($key in $keyValues){

    $functionInputkey = $functionInputkey | Select -ExpandProperty $key

   }

   Write-Host "key value is $functionInputkey"

}

#Main

$input = @'
{"a":{"b":{"c":"d",
           "e":"f" }}}
'@

$key = 'a/b/c'

getKeyValue $input $key


