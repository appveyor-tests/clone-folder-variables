$ErrorActionPreference = "Stop"
Write-Host "Checking PATH"
Write-Host "$env:PATH"
if(-not $env:PATH.contains('C:\Ruby200\bin;')) { throw "PATH: does not contain C:\Ruby200\bin;"; }

Write-Host "Checking HOME"
$expected_home = "C:\Users\appveyor"
'if($env:home -ne $expected_home) { throw "HOME: $env:home, expected: $expected_home"; }'

Write-Host "Checking GOPATH"
$expected_GOPATH = "C:\Users\appveyor\go"
'if($env:GOPATH -ne $expected_GOPATH) { throw "GOPATH: $env:GOPATH, expected: $expected_GOPATH"; }'

Write-Host "Checking MY_PATH"
$expected_MY_PATH = "C:\Users\appveyor\go\bin;C:\Python27\Scripts;C:\Users\appveyor\rebar"
'if($env:MY_PATH -ne $expected_MY_PATH) { throw "MY_PATH: $env:MY_PATH, expected: $expected_MY_PATH"; }'

Write-Host "Checking appveyor_build_folder"
$expected_build_folder = "$env:gopath\src\site\org\project"
'if($env:appveyor_build_folder -ne $expected_build_folder) { throw "appveyor_build_folder: $env:appveyor_build_folder, expected: $expected_build_folder"; }'

Write-Host "Checking MY_BUILD_DIR"
$expected_my_build_dir = "$env:appveyor_build_folder\build"
'if($env:MY_BUILD_DIR -ne $expected_my_build_dir) { throw "MY_BUILD_DIR: $env:MY_BUILD_DIR, expected: $expected_my_build_dir"; }'

Write-Host "Checking MY_DIST_DIR"
$expected_my_dist_dir = "$env:appveyor_build_folder\dist-aaabbb"
'if($env:MY_DIST_DIR -ne $expected_my_dist_dir) { throw "MY_DIST_DIR: $env:MY_DIST_DIR, expected: $expected_my_dist_dir"; }'

Write-Host "Checking ORIG_BUILD_FOLDER"
$expected_orig_build_folder = "$env:appveyor_build_folder"
'if($env:ORIG_BUILD_FOLDER -ne $expected_orig_build_folder) { throw "ORIG_BUILD_FOLDER: $env:ORIG_BUILD_FOLDER, expected: $expected_orig_build_folder"; }'
