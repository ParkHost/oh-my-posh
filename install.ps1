$params = @{
    Method = 'GET'
    URI = 'https://raw.githubusercontent.com/ParkHost/oh-my-posh/master/parkhost.omp.json'
    Outfile = "$($HOME)\.parkhost.omp.json"
}
Invoke-RestMethod @params > $null
if ($profile) {
    [void]'Set-PoshTheme $HOME\.parkhost.omp.json' >> $profile
} else {
    [void]'Set-PoshTheme $HOME\.parkhost.omp.json' > $profile
}
