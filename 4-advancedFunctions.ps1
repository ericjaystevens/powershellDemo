################
# Advanced Fuctions #
########################

function get-advancedFunctionExample {
<#
.SYNOPSIS
    Simple Advanced function
  
.EXAMPLE
     get-advancedFunctionExample
.EXAMPLE 
    get-vmwareStatus -helloWorldText 

.
.NOTES
    Author:  Eric Stevens
#>

[CmdletBinding()]
param( 
    [string] $helloWorldText = "Hello World!"
)

    #this is about the only time you should ever use write host
    write-host $helloWorldText



}









#actually run the function
get-advancedFunctionExample # "Nice to meet you"