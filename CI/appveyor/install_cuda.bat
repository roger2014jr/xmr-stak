@echo off
echo Downloading CUDA 8
appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_windows-exe -FileName cuda_8.0.44_windows.exe
echo Installing CUDA 8
cuda_8.0.44_windows.exe -s compiler_8.0 cudart_8.0
set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v8.0\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v8.0\libnvvp;%PATH%
dir "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7"
dir "C:\Program Files (x86)\Microsoft Visual Studio 14.0\\Common7\Tools\"
nvcc -V