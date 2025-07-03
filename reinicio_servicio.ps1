$servicio = 'Spooler'
Restart-Service -Name $servicio
Write-Output "Servicio $servicio reiniciado."