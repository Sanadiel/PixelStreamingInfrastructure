:: Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.
@echo off

pushd %~dp0

title Cirrus

::Run node server
Powershell.exe -executionpolicy unrestricted -File Rayzone_SignallingServer.ps1 %*

popd
pause
