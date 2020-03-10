VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "����"
   ClientHeight    =   3525
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5865
   ClipControls    =   0   'False
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3525
   ScaleWidth      =   5865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   Tag             =   "���� ����ǥ"
   Begin VB.PictureBox picIcon 
      AutoSize        =   -1  'True
      BorderStyle     =   0  '����
      ClipControls    =   0   'False
      Height          =   480
      Left            =   240
      Picture         =   "frmAbout.frx":000C
      ScaleHeight     =   480
      ScaleMode       =   0  '�����
      ScaleWidth      =   480
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   240
      Width           =   480
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "Ȯ��"
      Default         =   -1  'True
      Height          =   345
      Left            =   4245
      TabIndex        =   0
      Tag             =   "Ȯ��"
      Top             =   2625
      Width           =   1467
   End
   Begin VB.CommandButton cmdSysInfo 
      Caption         =   "�ý��� ����..."
      Height          =   345
      Left            =   4260
      TabIndex        =   1
      Tag             =   "�ý��� ����..."
      Top             =   3075
      Width           =   1452
   End
   Begin VB.Label lblDescription 
      Caption         =   "���� ���α׷� ����"
      ForeColor       =   &H00000000&
      Height          =   1170
      Left            =   1050
      TabIndex        =   6
      Tag             =   "���� ���α׷� ����"
      Top             =   1125
      Width           =   4092
   End
   Begin VB.Label lblTitle 
      Caption         =   "���� ���α׷� ����"
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   1050
      TabIndex        =   5
      Tag             =   "���� ���α׷� ����"
      Top             =   240
      Width           =   4092
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  '���� �ܻ�
      Index           =   1
      X1              =   225
      X2              =   5657
      Y1              =   2430
      Y2              =   2430
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   240
      X2              =   5657
      Y1              =   2445
      Y2              =   2445
   End
   Begin VB.Label lblVersion 
      Caption         =   "����"
      Height          =   225
      Left            =   1050
      TabIndex        =   4
      Tag             =   "����"
      Top             =   780
      Width           =   4092
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "���: ..."
      ForeColor       =   &H00000000&
      Height          =   825
      Left            =   255
      TabIndex        =   3
      Tag             =   "���: ..."
      Top             =   2625
      Visible         =   0   'False
      Width           =   3870
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ������Ʈ�� Ű ���� �ɼ�...
Const KEY_ALL_ACCESS = &H2003F
                                          

' ������Ʈ�� Ű ROOT ����...
Const HKEY_LOCAL_MACHINE = &H80000002
Const ERROR_SUCCESS = 0
Const REG_SZ = 1                         ' Unicode null ���� ���ڿ�
Const REG_DWORD = 4                      ' 32��Ʈ ����


Const gREGKEYSYSINFOLOC = "SOFTWARE\Microsoft\Shared Tools Location"
Const gREGVALSYSINFOLOC = "MSINFO"
Const gREGKEYSYSINFO = "SOFTWARE\Microsoft\Shared Tools\MSINFO"
Const gREGVALSYSINFO = "PATH"


Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, ByRef phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, ByRef lpType As Long, ByVal lpData As String, ByRef lpcbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long

Private Sub Form_Load()
    'lblVersion.Caption = "���� " & App.Major & "." & App.Minor & "." & App.Revision
    lblVersion.Caption = "���� 3.0.0 ��Ÿ 3"
    lblTitle.Caption = App.Title ' & " " & App.Major
    Me.Caption = App.Title & " ����"
    lblDescription.Caption = App.FileDescription
End Sub



Private Sub cmdSysInfo_Click()
        Call StartSysInfo
End Sub


Private Sub cmdOK_Click()
        Unload Me
End Sub


Public Sub StartSysInfo()
    On Error GoTo SysInfoErr

        Dim rc As Long
        Dim SysInfoPath As String
        

        ' ������Ʈ������ �ý��� ���� ���α׷� ���\�̸��� �������⸦ �õ��մϴ�...
        If GetKeyValue(HKEY_LOCAL_MACHINE, gREGKEYSYSINFO, gREGVALSYSINFO, SysInfoPath) Then
        ' ������Ʈ������ �ý��� ���� ���α׷� ��θ��� �������⸦ �õ��մϴ�...
        ElseIf GetKeyValue(HKEY_LOCAL_MACHINE, gREGKEYSYSINFOLOC, gREGVALSYSINFOLOC, SysInfoPath) Then
                ' �˰� �ִ� 32��Ʈ ���� ������ �ִ� ���� Ȯ���մϴ�.
                If (Dir(SysInfoPath & "\MSINFO32.EXE") <> "") Then
                        SysInfoPath = SysInfoPath & "\MSINFO32.EXE"
                        

                ' ���� - ������ ã�� �� �����ϴ�...
                Else
                        GoTo SysInfoErr
                End If
        ' ���� - ������Ʈ�� �׸��� ã�� �� �����ϴ�...
        Else
                GoTo SysInfoErr
        End If
        

        Call Shell(SysInfoPath, vbNormalFocus)
        

        Exit Sub
SysInfoErr:
        MessageBox "������ �ý��� ������ ����� �� �����ϴ�. �ý��ۿ� MS Info ������Ұ� ��ġ�ƴ��� Ȯ���Ͻʽÿ�. ������ �ٽ� ��ġ�Ͻʽÿ�.", "�ý��� ����", Me, 16
End Sub


Public Function GetKeyValue(KeyRoot As Long, KeyName As String, SubKeyRef As String, ByRef KeyVal As String) As Boolean
        Dim i As Long                                           ' ���� ī����
        Dim rc As Long                                          ' ��ȯ �ڵ�
        Dim hKey As Long                                        ' ���� �ִ� ������Ʈ�� Ű�� ó���մϴ�.
        Dim hDepth As Long                                      '
        Dim KeyValType As Long                                  ' ������Ʈ�� Ű�� ������ ����
        Dim tmpVal As String                                    ' ������Ʈ�� Ű ���� �ӽ÷� �����մϴ�.
        Dim KeyValSize As Long                                  ' ������Ʈ�� Ű ������ ũ��
        '------------------------------------------------------------
        ' KeyRoot �Ʒ��� RegKey�� ���ϴ�.{HKEY_LOCAL_MACHINE...}
        '------------------------------------------------------------
        rc = RegOpenKeyEx(KeyRoot, KeyName, 0, KEY_ALL_ACCESS, hKey) ' ������Ʈ�� Ű�� ���ϴ�.
        

        If (rc <> ERROR_SUCCESS) Then GoTo GetKeyError          ' ������ ó���մϴ�...
        

        tmpVal = String$(1024, 0)                             ' ���� ������ �Ҵ��մϴ�.
        KeyValSize = 1024                                       ' ���� ũ�⸦ ǥ���մϴ�.
        

        '------------------------------------------------------------
        ' ������Ʈ�� Ű ���� �˻��մϴ�...
        '------------------------------------------------------------
        rc = RegQueryValueEx(hKey, SubKeyRef, 0, KeyValType, tmpVal, KeyValSize)    ' Ű ���� ���� ���� �ۼ��մϴ�.
                                                

        If (rc <> ERROR_SUCCESS) Then GoTo GetKeyError          ' ������ ó���մϴ�.
        

        tmpVal = VBA.Left(tmpVal, InStr(tmpVal, VBA.Chr(0)) - 1)
        '------------------------------------------------------------
        ' ��ȯ�� Ű �� ������ �����մϴ�...
        '------------------------------------------------------------
        Select Case KeyValType                                  ' ������ ������ �˻��մϴ�...
        Case REG_SZ                                             ' ���ڿ� ������Ʈ�� Ű ������ ����
                KeyVal = tmpVal                                     ' ���ڿ� ���� �����մϴ�.
        Case REG_DWORD                                          ' ���� ���� ������Ʈ�� Ű ������ ����
                For i = Len(tmpVal) To 1 Step -1                    ' ������ ��Ʈ�� ��ȯ�մϴ�.
                        KeyVal = KeyVal + Hex(Asc(Mid(tmpVal, i, 1)))   ' ���� ���ڸ� ���ں��� �ۼ��մϴ�.
                Next
                KeyVal = Format$("&h" + KeyVal)                     ' ���� ���带 ���ڿ��� ��ȯ�մϴ�.
        End Select
        

        GetKeyValue = True                                      ' ������ ��ȯ�մϴ�.
        rc = RegCloseKey(hKey)                                  ' ������Ʈ�� ���� �ݽ��ϴ�.
        Exit Function                                           ' �����ϴ�.
        

GetKeyError:    ' �߻��� ������ ó���մϴ�...
        KeyVal = ""                                             ' ��ȯ���� �� ���ڿ��� �����մϴ�.
        GetKeyValue = False                                     '���и� ��ȯ�մϴ�.
        rc = RegCloseKey(hKey)                                  ' ������Ʈ�� Ű�� �ݽ��ϴ�.
End Function

