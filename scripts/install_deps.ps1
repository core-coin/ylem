$ErrorActionPreference = "Stop"

# Needed for Invoke-WebRequest to work via CI.
$progressPreference = "silentlyContinue"

if ( -not (Test-Path "$PSScriptRoot\..\deps\boost") ) {
  New-Item -ItemType Directory -Force -Path "$PSScriptRoot\..\deps"
  Invoke-WebRequest -URI "https://boostorg.jfrog.io/artifactory/main/release/1.83.0/source/boost_1_83_0.tar.gz" -OutFile boost.tar.gz
  tar -xf boost.tar.gz
  cd boost_1_83_0
  .\bootstrap.bat
  .\b2 -j4 -d0 link=static runtime-link=static variant=release threading=multi address-model=64 --with-filesystem --with-system --with-program_options --with-test --prefix="$PSScriptRoot\..\deps\boost" install
  if ( -not $? ) { throw "Error building boost." }
  cd ..
}
