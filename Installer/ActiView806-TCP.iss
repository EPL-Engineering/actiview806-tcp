; -- SPL Meter Installer.iss --

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!
#define verStr GetFileVersion("..\Build\ActiView806-TCP.exe")
#define lastDot RPos(".", verStr)
#define revStr Copy(verStr, lastDot+1)

[Setup]
AppName=ActiView806-TCP
AppVerName=ActiView806-TCP {#verStr}
DefaultDirName=C:\Biosemi\ActiView806-TCP\V{#revStr}
OutputDir=.\Output
DefaultGroupName=EPL
AllowNoIcons=yes
OutputBaseFilename=ActiView806-TCP_{#revStr}
UsePreviousAppDir=no
UsePreviousGroup=no
DisableProgramGroupPage=yes
PrivilegesRequired=admin

[Files]
Source: "..\Build\*.*"; DestDir: "{app}"; Flags: replacesameversion

[Icons]
Name: "{commondesktop}\ActiView806-TCP"; Filename: "{app}\ActiView806-TCP.exe"; IconFilename: "{app}\BioSemi.ico"; IconIndex: 0;

