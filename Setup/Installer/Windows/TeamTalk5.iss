; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=TeamTalk5
AppVerName=TeamTalk 5
AppPublisher=BearWare.dk
AppPublisherURL=http://www.bearware.dk
AppSupportURL=http://www.bearware.dk
AppUpdatesURL=http://www.bearware.dk
DefaultDirName={pf}\TeamTalk5
DefaultGroupName=TeamTalk 5
AllowNoIcons=yes
OutputBaseFilename=TeamTalk_v5.17.0.5145_Setup
SetupIconFile=c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\qtTeamTalk\images\teamtalk.ico
Compression=lzma/ultra64
SolidCompression=yes
LicenseFile=License.txt
ArchitecturesInstallIn64BitMode=x64

[Types]
Name: "i_client"; Description: "{cm:Client}"
Name: "i_full"; Description: "{cm:Full}"

[Components]
Name: "client"; Description: "Client files"; Types: i_client i_full; Flags: fixed
Name: "server"; Description: "Server files"; Types: i_full

[Languages]
Name: bg; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: cs; MessagesFile: "compiler:Languages\Czech.isl"
Name: da; MessagesFile: "compiler:Languages\Danish.isl"
Name: de; MessagesFile: "compiler:Languages\German.isl"
Name: en; MessagesFile: "compiler:Default.isl"
Name: es; MessagesFile: "compiler:Languages\Spanish.isl"
Name: fr; MessagesFile: "compiler:Languages\French.isl"
Name: he; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: hu; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: it; MessagesFile: "compiler:Languages\Italian.isl"
Name: ko; MessagesFile: "compiler:Languages\Korean.isl"
Name: nl; MessagesFile: "compiler:Languages\Dutch.isl"
Name: pl; MessagesFile: "compiler:Languages\Polish.isl"
Name: pt_BR; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: pt_PT; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: ru; MessagesFile: "compiler:Languages\Russian.isl"
Name: sk; MessagesFile: "compiler:Languages\Slovak.isl"
Name: sl; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: tr; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "chinesesimplified"; MessagesFile: "Languages\ChineseSimplified.isl"

[Messages]
BeveledLabel={cm:LanguageName}

[CustomMessages]
en.Client=TeamTalk 5 Client
en.Full=TeamTalk 5 Client & Server
fr.Client=Client TeamTalk 5
fr.Full=Client et Serveur TeamTalk 5
chinesesimplified.Client=TeamTalk 5 客户端
chinesesimplified.Full=TeamTalk 5 客户端 & 服务器

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;x64
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\windeployqt\*"; Excludes: "vc_redist.x64.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion recursesubdirs; Check: Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\windeployqt\vc_redist.x64.exe"; DestDir: {tmp}; Components: client; Flags: deleteafterinstall; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\TeamTalk5.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Library\TeamTalk_DLL\TeamTalk5.dll"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\nvdaControllerClient64.dll"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\SAAPI64.dll"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\Tolk.dll"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Server\tt5svc.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Server\tt5srv.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;

;cfg files
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{app}"; DestName: "TeamTalk5.ini.default"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5svc_install.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5svc_uninstall.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5srv_console.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{userappdata}\BearWare.dk"; Components: client; Flags: ignoreversion onlyifdoesntexist;
Source: "License.txt"; DestDir: "{app}"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Documentation\TeamTalk\output\TeamTalk5.chm"; DestDir: "{app}"; Components: client; Flags: ignoreversion;
;wave files
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\Majorly-G\*"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\Old\*"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\*.wav"; DestDir: "{app}\Sounds"; Components: client; Flags: ignoreversion;
;language files
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\qtTeamTalk\languages\*.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client;
Name: "{commondesktop}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: desktopicon;
Name: "{group}\TeamTalk 5 Help"; Filename: "{app}\TeamTalk5.chm"; WorkingDir: "{app}";
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TeamTalk"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: quicklaunchicon;
Name: "{group}\TeamTalk 5 NT Service\Install TeamTalk NT Service"; Filename: "{app}\tt5svc_install.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 NT Service\Uninstall TeamTalk NT Service"; Filename: "{app}\tt5svc_uninstall.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 Console Server"; Filename: "{app}\tt5srv_console.bat"; WorkingDir: "{app}"; Components: server;

[Run]
Filename: "{tmp}\vc_redist.x64.exe"; Parameters: "/install /quiet /norestart"; Components: client; Check: Is64BitInstallMode;
Filename: "{app}\TeamTalk5.exe"; Description: "{cm:LaunchProgram,TeamTalk}"; WorkingDir: "{app}"; Parameters: ""; Components: client; Flags: postinstall nowait skipifsilent

[Registry]
Root: HKCR; Subkey: "TeamTalk"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk"; ValueType: string; ValueData: "TeamTalk Host Settings"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey

Root: HKCR; Subkey: "tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueData: "URL:TeamTalk Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey

Root: HKCR; Subkey: ".tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: ".tt"; ValueType: string; ValueData: "TeamTalk"; Flags: uninsdeletekey

Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; ValueName: "InstallPath"; ValueData: "{app}"

[InstallDelete]
; Delete pre version 5.17 language files
Type: files; Name: "{app}\Languages\Bulgarian.qm"
Type: files; Name: "{app}\Languages\Chinese_Simplified.qm"
Type: files; Name: "{app}\Languages\Chinese_Traditional.qm"
Type: files; Name: "{app}\Languages\Croatian.qm"
Type: files; Name: "{app}\Languages\Czech.qm"
Type: files; Name: "{app}\Languages\Danish.qm"
Type: files; Name: "{app}\Languages\Dutch.qm"
Type: files; Name: "{app}\Languages\English.qm"
Type: files; Name: "{app}\Languages\French.qm"
Type: files; Name: "{app}\Languages\German.qm"
Type: files; Name: "{app}\Languages\Hebrew.qm"
Type: files; Name: "{app}\Languages\Hungarian.qm"
Type: files; Name: "{app}\Languages\Indonesian.qm"
Type: files; Name: "{app}\Languages\Italian.qm"
Type: files; Name: "{app}\Languages\Korean.qm"
Type: files; Name: "{app}\Languages\Persian.qm"
Type: files; Name: "{app}\Languages\Polish.qm"
Type: files; Name: "{app}\Languages\Portuguese_BR.qm"
Type: files; Name: "{app}\Languages\Portuguese_EU.qm"
Type: files; Name: "{app}\Languages\Russian.qm"
Type: files; Name: "{app}\Languages\Slovak.qm"
Type: files; Name: "{app}\Languages\Slovenian.qm"
Type: files; Name: "{app}\Languages\Spanish.qm"
Type: files; Name: "{app}\Languages\Thai.qm"
Type: files; Name: "{app}\Languages\Turkish.qm"
Type: files; Name: "{app}\Languages\Vietnamese.qm"
