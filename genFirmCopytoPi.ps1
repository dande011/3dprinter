$location = Get-Location

Write-Host "Changing to Platformio project directory"
Set-Location D:\Users\david\Documents\GitHub\3dprinter\Marlin-Firmware
Write-Host "Executing Platformio run"
C:\Users\david\.platformio\penv\Scripts\pio.exe run

Write-Host "Changing to build directory"
Set-Location D:\Users\david\Documents\GitHub\3dprinter\Marlin-Firmware\.pio\build\mega2560\
Write-Host "Print the working directory:"
Get-Location
Write-Host "Send the file to the pi"
scp firmware.hex pi@192.168.1.5:~/Documents/


Set-Location $location