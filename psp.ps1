Function psp {

   param($InputObject = $null)

 

   BEGIN {$status = $True}

 

   PROCESS {

      if ($InputObject -and $_) {

         throw 'ParameterBinderStrings\AmbiguousParameterSet'

      } elseif ($InputObject -or $_) {

         $processObject = $(if ($InputObject) {$InputObject} else {$_})

 

         write-host "Ping [$processObject]"

         $result = Get-CIMinstance win32_pingstatus -Filter "address = '$processObject' and Timeout=1000"

 

         if ($result.StatusCode -eq 0) {

           write-host "Ping response OK" -ForegroundColor DarkGreen

             # write-host $result.protocoladdress

         }

         else {

            write-host "Ping failed - host not found" -ForegroundColor red

            $status = $False

         }

      }

      else {throw 'ParameterBinderStrings\InputObjectNotBound'}

 

   # next processObject

   }

 

   # Return True if pings to all machines succeed:

   END {return $status}

} 