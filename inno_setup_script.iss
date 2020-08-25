; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Magic DXLink Configurator"
#define MyAppVersion "4.0.5"
#define MyAppPublisher "MagicSoftware"
#define MyAppURL "http://www.ornear.com/give_a_beer"
#define MyAppExeName "Magic_DXLink_Configurator.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F0DAFB35-3835-4C8A-A515-EC75CEF07FBB}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=output
OutputBaseFilename=Magic_DXLink_Configurator_v{#MyAppVersion}
SetupIconFile=C:\Users\jim\Documents\magic_dxlink_configurator\dist\Magic_DXLink_Configurator\icon\mdc.ico
Compression=lzma
SolidCompression=yes
VersionInfoVersion={#MyAppVersion}
UninstallDisplayIcon={app}\icon\MDC_icon.ico
SignTool=signtool $f
SignedUninstaller=yes
CloseApplications=force


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\jim\Documents\magic_dxlink_configurator\dist\Magic_DXLink_Configurator\Magic_DXlink_configurator.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\jim\Documents\magic_dxlink_configurator\dist\Magic_DXLink_Configurator\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "
;Source: "C:\Users\Kylie\Dropbox\python_projects\eclipse\workspace2\Magic DXLink Configurator\dist\Magic_DXLink_Configurator"; DestDir: "{userdocs}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;[Dirs]
;Name: "{userdocs}\Magic_DXLink_Configurator"; Permissions: users-modify
                                 
[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

