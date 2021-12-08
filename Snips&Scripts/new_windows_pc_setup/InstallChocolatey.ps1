# Set-ExecutionPolicy AllSigned
# Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iwr -useb chocolatey.org/install.ps1 | iex

choco feature enable -n allowGlobalConfirmation