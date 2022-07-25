# Copyright 1998-2018 Epic Games, Inc. All Rights Reserved.

Write-Output "Public IP: 218.238.220.142"

Push-Location $PSScriptRoot

$peerConnectionOptions = "{ \""iceServers\"": [{\""urls\"": [\""stun:" + "stun1.l.google.com:19302\"",\""turn:121.125.62.71:19303\""], \""username\"": \""PixelStreamingUser\"", \""credential\"": \""Another TURN in the road\""}] }"

$ProcessExe = "node.exe"
$Arguments = @("cirrus", "--peerConnectionOptions=""$peerConnectionOptions""", "--PublicIp=rzmeta.co.kr")
# Add arguments passed to script to Arguments for executable
$Arguments += $args

Push-Location ..\..
Write-Output "Running: $ProcessExe $Arguments"
Start-Process -FilePath $ProcessExe -ArgumentList $Arguments -Wait -NoNewWindow
Pop-Location

Pop-Location