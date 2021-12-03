# red-team
RedTeam environment.


### Helpful Documentation
- [New-AzResourceGroupDeployment manpage](https://docs.microsoft.com/en-us/powershell/module/az.resources/new-azresourcegroupdeployment?view=azps-6.6.0)
- [New-AzResourceGroup manpage](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2)
- [Installing Powershell on Ubuntu](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2)

Instructions
1. Log onto the UCIBOX desktop using the vagrant account
2. Obtain the account Tenant Id
    1. After logging into the AWS console.
    2. GoTo: Azure Active Directory -> Overview
    3. Copy the Tenant ID, store it in a secure place
    
3. Install Powershell
> Run
> 
>bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/setup)"

.
> Run
> 
> iwr https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/resource_group.ps1 -UseBasicParsing | iex

4. Connect the Powershell Session to the Azure Account
> Run
>
>bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/authenticate)"


### Install Powershell on Ubuntu 
