Disable-WindowsOptionalFeature -FeatureName "WindowsMediaPlayer" -Online
Disable-WindowsOptionalFeature -FeatureName "SearchEngine-Client-Package" -Online

#Get-Appxpackage -allusers *HolographicFirstRun* | remove-appxpackage

#Get-Appxpackage -allusers *holographic* | remove-appxpackage

Dism /online /Remove-Capability /CapabilityName:Analog.Holographic.Desktop

Function DisableCortana
{  
    $path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"    
    IF(!(Test-Path -Path $path)) { 
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search"
    } 
    Set-ItemProperty -Path $path -Name "AllowCortana" -Value 0 
    #Restart Explorer to change it immediately    
    Stop-Process -name explorer
}
DisableCortana

Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage

Get-AppXProvisionedPackage -Online |where DisplayName -eq "Microsoft.XboxApp" |Remove-AppxProvisionedPackage -Online

Get-AppxPackage -allusers *3dbuilder* | Remove-AppxPackage

Get-AppxPackage -allusers *windowsalarms* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowscalculator* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowscommunicationsapps* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowscamera* | Remove-AppxPackage

Get-AppxPackage  -allusers *officehub* | Remove-AppxPackage

Get-AppxPackage  -allusers *skypeapp* | Remove-AppxPackage

Get-AppxPackage  -allusers *getstarted* | Remove-AppxPackage

Get-AppxPackage  -allusers *zunemusic* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowsmaps* | Remove-AppxPackage

Get-AppxPackage  -allusers *solitairecollection* | Remove-AppxPackage

Get-AppxPackage  -allusers *bingfinance* | Remove-AppxPackage

Get-AppxPackage  -allusers *zunevideo* | Remove-AppxPackage

Get-AppxPackage  -allusers *bingnews* | Remove-AppxPackage

Get-AppxPackage  -allusers *onenote* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowsphone* | Remove-AppxPackage

Get-AppxPackage  -allusers *photos* | Remove-AppxPackage

Get-AppxPackage  -allusers *windowsstore* | Remove-AppxPackage

Get-AppxPackage  -allusers *bingsports* | Remove-AppxPackage

Get-AppxPackage  -allusers *soundrecorder* | Remove-AppxPackage

Get-AppxPackage  -allusers *bingweather* | Remove-AppxPackage

Get-Appxpackage -allusers *windowsstore* | remove-appxpackage

Get-Appxpackage -allusers *3d* | remove-appxpackage

Get-Appxpackage -allusers *sway* | remove-appxpackage

Get-Appxpackage -allusers *sticky* | remove-appxpackage

Get-Appxpackage -allusers *phone* | remove-appxpackage

Get-Appxpackage -allusers *windowsphone* | remove-appxpackage

Get-Appxpackage -allusers *oneconnect* | remove-appxpackage

Get-Appxpackage -allusers *bing* | remove-appxpackage

Get-Appxpackage -allusers *connectivitystore* | remove-appxpackage

Get-Appxpackage -allusers *wallet* | remove-appxpackage

Get-Appxpackage -allusers *messaging* | remove-appxpackage

Get-Appxpackage -allusers *zune* | remove-appxpackage

Get-Appxpackage -allusers *skypeapp* | remove-appxpackage

Get-Appxpackage -allusers *camera* | remove-appxpackage

Get-Appxpackage -allusers *appinstaller* | remove-appxpackage

Get-Appxpackage -allusers *appconnector* | remove-appxpackage

Get-Appxpackage -allusers *Advertising.Xaml* | remove-appxpackage

Get-AppxPackage -allusers *Candy* | Remove-AppxPackage

Get-AppxPackage -allusers *Dragon* | Remove-AppxPackage

Get-AppxPackage -allusers *Disney* | Remove-AppxPackage

Get-AppxPackage -allusers *Saga* | Remove-AppxPackage

Get-Appxpackage -allusers Microsoft.MSPaint | remove-appxpackage
