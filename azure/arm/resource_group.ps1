New-AzResourceGroup -Name "RedTeam" -Location eastUS \
    -Tag @{Env="lab"; Project="RedTeam"} \
    -Force