$privateKeyFile = "private-key\release.pem"
$chromePath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
$releaseDirectory ="release\"

if (-not(Test-Path $chromePath -PathType leaf))
{
    Write-Host "Google Chrome executable not found at $chromePath"
    Write-Host "We use this executable to generate the .crx file"
    exit -1
}

# if (-not(Test-Path $privateKeyFile -PathType leaf))
# {
#     Write-Host "private key file not found at $privateKeyFile"
#     Write-Host "We use the private key to sign the .crx file"
#     exit -1
# }

if (Test-Path $releaseDirectory -PathType Container)
{
    Write-Host "$releaseDirectory already exists. deleting it"
    Remove-Item $releaseDirectory -Recurse
}

# copy files from root directory to release
# so that screenshots are not included
New-Item -Path . -Name "release" -ItemType "directory"
Copy-Item -Path "*.js" -Destination "release"
Copy-Item -Path "*.html" -Destination "release"
Copy-Item -Path "*.json" -Destination "release"
Copy-Item -Path "images" -Destination "release" -Recurse


# https://stackoverflow.com/questions/3196615/how-to-create-chrome-crx-file-programmatically-preferably-in-java
# --pack-extension is : Package an extension to a .crx installable file from a given directory.
# --pack-extension-key : Optional PEM private key is to use in signing packaged .crx.
Start-Process -FilePath $chromePath -ArgumentList "--pack-extension=$releaseDirectory","--pack-extension-key=$privateKeyFile"