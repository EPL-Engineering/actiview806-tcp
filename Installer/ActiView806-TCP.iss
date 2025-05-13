; -- SPL Meter Installer.iss --

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!
#define semver "2.0"
#define verStr_ StringChange(semver, '.', '-')

[Setup]
AppName=ActiView806-TCP
AppVerName=ActiView806-TCP {#semver}}
DefaultDirName=C:\Biosemi\ActiView806-TCP\V{#semver}
OutputDir=.\Output
DefaultGroupName=EPL
AllowNoIcons=yes
OutputBaseFilename=ActiView806-TCP_{#verStr_}
UsePreviousAppDir=no
UsePreviousGroup=no
DisableProgramGroupPage=yes
PrivilegesRequired=admin

[Files]
Source: "..\Build\*.*"; DestDir: "{app}"; Flags: replacesameversion

[Icons]
Name: "{commondesktop}\ActiView806-TCP"; Filename: "{app}\ActiView806-TCP.exe"; IconFilename: "{app}\BioSemi.ico"; IconIndex: 0;

