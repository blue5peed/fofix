; Frets on Fire X (FoFiX) 
; Copyright (C) 2009-2010 FoFiX Team 
; See CREDITS for a full list of contributors 
; 
; This program is free software; you can redistribute it and/or 
; modify it under the terms of the GNU General Public License 
; as published by the Free Software Foundation; either version 2 
; of the License, or (at your option) any later version. 
; 
; This program is distributed in the hope that it will be useful, 
; but WITHOUT ANY WARRANTY; without even the implied warranty of 
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
; GNU General Public License for more details. 
; 
; You should have received a copy of the GNU General Public License 
; along with this program; if not, write to the Free Software 
; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, 
; MA 02110-1301, USA. 

; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{16D9A229-1B3C-4D9E-8D70-0B966FD43E14}
AppName=FoFiX
AppVersion=4.0.0-alpha0-pre
;AppVerName=FoFiX 4.0.0-alpha0-pre
AppPublisher=FoFiX
AppPublisherURL=http://code.google.com/p/fofix/
AppSupportURL=http://code.google.com/p/fofix/
AppUpdatesURL=http://code.google.com/p/fofix/
DefaultDirName={pf}\FoFiX
DefaultGroupName=FoFiX
AllowNoIcons=yes
LicenseFile=..\COPYING
InfoBeforeFile=..\README
InfoAfterFile=..\CREDITS
OutputBaseFilename=FoFiX-4.0.0-alpha0-pre-setup
SetupIconFile=..\win32\fofix.ico
Compression=lzma2
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\FoFiX.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\*"; DestDir: "{app}";  Excludes: "data\themes\*,*.pyc,*.c"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\data\themes\MegaLight V4\*"; DestDir: "{app}\data\themes\MegaLight V4\";  Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\FoFiX"; Filename: "{app}\FoFiX.exe"
Name: "{commondesktop}\FoFiX"; Filename: "{app}\FoFiX.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\FoFiX"; Filename: "{app}\FoFiX.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\FoFiX.exe"; Description: "{cm:LaunchProgram,FoFiX}"; Flags: nowait postinstall skipifsilent

