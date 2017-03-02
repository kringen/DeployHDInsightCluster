$cred = Get-Credential
Login-AzureRmAccount -Credential $cred

# To view all subscriptions for your account
Get-AzureRmSubscription

# To select a default subscription for your current session.
# This is useful when you have multiple subscriptions.
Get-AzureRmSubscription -SubscriptionName "Visual Studio Professional with MSDN" | Select-AzureRmSubscription

Switch-AzureRMMode -Name AzureResourceManager

New-AzureRmResourceGroup -Name HDInsight -Location 'South Central US'
