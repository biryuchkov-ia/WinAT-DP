{\rtf1\ansi\ansicpg1251\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # =================================================================\
# WinAutoDeploy - Automated Workstation Setup Script\
# Features: \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1087 \u1088 \u1072 \u1074 , \u1057 \u1077 \u1090 \u1080 , \u1056 \u1086 \u1083 \u1077 \u1074 \u1072 \u1103  \u1091 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  + \u1051 \u1086 \u1075 \u1080 \u1088 \u1086 \u1074 \u1072 \u1085 \u1080 \u1077 \
# =================================================================\
\
# 0. \uc0\u1053 \u1072 \u1089 \u1090 \u1088 \u1086 \u1081 \u1082 \u1072  \u1083 \u1086 \u1075 \u1080 \u1088 \u1086 \u1074 \u1072 \u1085 \u1080 \u1103 \
$logFile = "$env:USERPROFILE\\Desktop\\WinAutoDeploy_Log.txt"\
function Write-Log \{\
    param([string]$Message, [string]$Color = "White")\
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"\
    $logEntry = "[$timestamp] $Message"\
    Add-Content -Path $logFile -Value $logEntry\
    Write-Host $Message -ForegroundColor $Color\
\}\
\
# \uc0\u1054 \u1095 \u1080 \u1089 \u1090 \u1082 \u1072  \u1089 \u1090 \u1072 \u1088 \u1086 \u1075 \u1086  \u1083 \u1086 \u1075 \u1072  \u1080 \u1083 \u1080  \u1089 \u1086 \u1079 \u1076 \u1072 \u1085 \u1080 \u1077  \u1085 \u1086 \u1074 \u1086 \u1075 \u1086 \
"--- WinAutoDeploy Log Start ---" | Out-File -FilePath $logFile\
\
# 1. \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1087 \u1088 \u1072 \u1074  \u1072 \u1076 \u1084 \u1080 \u1085 \u1080 \u1089 \u1090 \u1088 \u1072 \u1090 \u1086 \u1088 \u1072 \
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) \{\
    Write-Log "\uc0\u1054 \u1096 \u1080 \u1073 \u1082 \u1072 : \u1047 \u1072 \u1087 \u1091 \u1089 \u1082  \u1073 \u1077 \u1079  \u1087 \u1088 \u1072 \u1074  \u1072 \u1076 \u1084 \u1080 \u1085 \u1080 \u1089 \u1090 \u1088 \u1072 \u1090 \u1086 \u1088 \u1072 !\'bb "Red"\
    Pause\
    return\
\}\
\
# 2. \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1080 \u1085 \u1090 \u1077 \u1088 \u1085 \u1077 \u1090 -\u1089 \u1086 \u1077 \u1076 \u1080 \u1085 \u1077 \u1085 \u1080 \u1103 \
Write-Log "--- \uc0\u1055 \u1088 \u1086 \u1074 \u1077 \u1088 \u1082 \u1072  \u1080 \u1085 \u1090 \u1077 \u1088 \u1085 \u1077 \u1090 -\u1089 \u1086 \u1077 \u1076 \u1080 \u1085 \u1077 \u1085 \u1080 \u1103  ---" "Cyan"\
$chocoServer = "community.chocolatey.org"\
try \{\
    $connection = Test-NetConnection -ComputerName $chocoServer -Port 443 -InformationLevel Quiet\
    if (!$connection) \{\
        Write-Log \'ab\uc0\u1054 \u1096 \u1080 \u1073 \u1082 \u1072 : \u1053 \u1077 \u1090  \u1076 \u1086 \u1089 \u1090 \u1091 \u1087 \u1072  \u1082  $chocoServer!" "Red"\
        Pause\
        return\
    \}\
    Write-Log "\uc0\u1057 \u1074 \u1103 \u1079 \u1100  \u1089  \u1089 \u1077 \u1088 \u1074 \u1077 \u1088 \u1086 \u1084  \u1091 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1083 \u1077 \u1085 \u1072  \u1091 \u1089 \u1087 \u1077 \u1096 \u1085 \u1086 ." "Green"\
\}\
catch \{\
    Write-Log "!!! \uc0\u1050 \u1088 \u1080 \u1090 \u1080 \u1095 \u1077 \u1089 \u1082 \u1072 \u1103  \u1086 \u1096 \u1080 \u1073 \u1082 \u1072  \u1089 \u1077 \u1090 \u1080  !!!" "Red"\
    Pause\
    return\
\}\
\
# 3. \uc0\u1059 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  Chocolatey\
if (!(Get-Command choco -ErrorAction SilentlyContinue)) \{\
    Write-Log "\uc0\u1059 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  Chocolatey..." "Cyan"\
    Set-ExecutionPolicy Bypass -Scope Process -Force\
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072\
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org'))\
\}\
\
# 4. \uc0\u1053 \u1072 \u1073 \u1086 \u1088 \u1099  \u1087 \u1088 \u1086 \u1075 \u1088 \u1072 \u1084 \u1084 \
$officeApps = @("googlechrome", "firefox", "microsoft-teams.install", "zoom", "adobereader", "7zip", "libreoffice-fresh", "vlc")\
$devApps    = @("vscode", "git", "notepadplusplus")\
$adminApps  = @("putty", "anydesk", "sysinternals", "wiztree", "hwinfo.install", "crystaldiskinfo", "aida64extreme")\
\
# 5. \uc0\u1052 \u1077 \u1085 \u1102 \
Write-Host "`n==========================================" -ForegroundColor Yellow\
Write-Host "      \uc0\u1042 \u1067 \u1041 \u1045 \u1056 \u1048 \u1058 \u1045  \u1055 \u1056 \u1054 \u1060 \u1048 \u1051 \u1068  \u1059 \u1057 \u1058 \u1040 \u1053 \u1054 \u1042 \u1050 \u1048 :" -ForegroundColor Yellow\
Write-Host "==========================================" -ForegroundColor Yellow\
Write-Host "1. Office | 2. Developer | 3. Admin/Master"\
$choice = Read-Host "`n\uc0\u1042 \u1074 \u1077 \u1076 \u1080 \u1090 \u1077  \u1085 \u1086 \u1084 \u1077 \u1088  (1-3)"\
\
switch ($choice) \{\
    "1" \{ $installList = $officeApps; $roleName = "OFFICE" \}\
    "2" \{ $installList = $officeApps + $devApps; $roleName = "DEVELOPER" \}\
    "3" \{ $installList = $officeApps + $adminApps; $roleName = "ADMIN/MASTER" \}\
    default \{ Write-Log "\uc0\u1053 \u1077 \u1074 \u1077 \u1088 \u1085 \u1099 \u1081  \u1074 \u1099 \u1073 \u1086 \u1088 . \u1042 \u1099 \u1093 \u1086 \u1076 ." "Red"; return \}\
\}\
\
# 6. \uc0\u1059 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  \u1089  \u1079 \u1072 \u1087 \u1080 \u1089 \u1100 \u1102  \u1074  \u1083 \u1086 \u1075 \
Write-Log "\uc0\u1053 \u1072 \u1095 \u1072 \u1090 \u1072  \u1091 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  \u1087 \u1088 \u1086 \u1092 \u1080 \u1083 \u1103 : $roleName" "Green"\
foreach ($app in $installList) \{\
    Write-Log "\uc0\u1059 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072 : $app..." "Green"\
    # \uc0\u1047 \u1072 \u1087 \u1091 \u1089 \u1082 \u1072 \u1077 \u1084  choco \u1080  \u1087 \u1077 \u1088 \u1077 \u1085 \u1072 \u1087 \u1088 \u1072 \u1074 \u1083 \u1103 \u1077 \u1084  \u1086 \u1096 \u1080 \u1073 \u1082 \u1080  \u1074  \u1083 \u1086 \u1075 \
    choco install $app -y --no-progress | Out-File -FilePath $logFile -Append\
\}\
\
Write-Log "\uc0\u1059 \u1089 \u1090 \u1072 \u1085 \u1086 \u1074 \u1082 \u1072  \u1079 \u1072 \u1074 \u1077 \u1088 \u1096 \u1077 \u1085 \u1072 ! \u1051 \u1086 \u1075  \u1089 \u1086 \u1093 \u1088 \u1072 \u1085 \u1077 \u1085  \u1085 \u1072  \u1088 \u1072 \u1073 \u1086 \u1095 \u1077 \u1084  \u1089 \u1090 \u1086 \u1083 \u1077 ." "Cyan"\
Pause\
}