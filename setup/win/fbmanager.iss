;------------------------------------------------------------------------------
;
;       ������������ ������� ��� Inno Setup 5.5.5 ��� ��������� FBManager
;       (c) alexs, 17.07.2019
;
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;   ���������� ��������� ���������
;------------------------------------------------------------------------------

; ��� ����������
#define   Name       "FreeDataBaseManager"
; ������ ����������
#define   Version    "0.9.1"
; �����-�����������
#define   Publisher  "alexs"
; ���� ����� ������������
#define   URL        "http://w7site.ru"
; ��� ������������ ������
#define   ExeName    "IBManager.exe"

;------------------------------------------------------------------------------
;   ������������� ����� ��� �������� ���������
;------------------------------------------------------------------------------
[Languages]
;Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
;Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"
Name: "english"; MessagesFile: "compiler:Default.isl"; 
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; 

;------------------------------------------------------------------------------
;   ��������� ���������
;------------------------------------------------------------------------------
[Setup]

; ���������� ������������� ����������, 
;��������������� ����� Tools -> Generate GUID
AppId={{3A838A8A-75B3-40B7-B704-AA1242EBD769}

; ������ ����������, ������������ ��� ���������
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; ���� ��������� ��-���������
DefaultDirName={pf}\{#Name}
; ��� ������ � ���� "����"
DefaultGroupName={#Name}

; �������, ���� ����� ������� ��������� setup � ��� ������������ �����
OutputDir=c:\test-setup
OutputBaseFileName=FBM-setup
           
; ���� ������
;SetupIconFile=W:\FBManager\IBManager.ico

; ��������� ������
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
;   ����������� - ��������� ������, ������� ���� ��������� ��� ���������
;------------------------------------------------------------------------------
[Tasks]
; �������� ������ �� ������� �����
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked


;------------------------------------------------------------------------------
;   �����, ������� ���� �������� � ����� �����������
;------------------------------------------------------------------------------
[Files]

; ����������� ����
Source: "W:\FBManager\IBManager.exe"; DestDir: "{app}"; Flags: ignoreversion

; ������������� �������
Source: "W:\FBManager\docs\COPYING.GPL"; DestDir: "{app}\docs\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "W:\FBManager\reports\*"; DestDir: "{app}\reports"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "W:\FBManager\languages\*"; DestDir: "{app}\languages"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "W:\FBManager\dlls\freetype6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\iconv.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\intl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libcairo-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libcurl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libfontconfig-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libfreetype-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libglib-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libgmodule-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libgobject-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libgthread-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libiconv.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libidn-11.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libintl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\liblzma-5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libmariadb.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libpango-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libpangocairo-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libpangoft2-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libpangowin32-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libpng14-14.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libssh2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libssl32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libxml2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\libxml2-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "W:\FBManager\dlls\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\fblib\fbclient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\fblib\firebird.msg"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\FBManager\dlls\fblib\msvcr100.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "W:\sto\dll\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\sto\dll\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\sto\dll\libintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\sto\dll\libpq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\sto\dll\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "W:\sto\dll\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion

;------------------------------------------------------------------------------
;   ��������� �����������, ��� �� ������ ����� ������
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"
Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon