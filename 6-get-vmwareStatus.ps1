function get-vmwareStatus {
<#
.SYNOPSIS
    Gets the status of importaint Vmware services
  
.EXAMPLE
     get-vmwareStatus

.EXAMPLE 
    get-vmwareStatus computer1, computer2 
.NOTES
    Author:  Eric Stevens
#>

[CmdletBinding()]
param( 
    [string[]] $computerName = $env:COMPUTERNAME
)

    foreach ($computer in $computerName){

        $vmwareServices = @('VMnetDHCP', 'VMUSBArbService', 'VMware NAT Service')
        write-verbose "testing VMware services: $vmwareServices "

        if ($computer -eq $env:COMPUTERNAME){

            get-service -Name $vmwareServices
        
        } else {

            Invoke-Command -ComputerName $computer -ScriptBlock{

                get-service -Name $vmwareServices
            }
    

        }
    }

}