VERSION 5.00
Begin VB.Form frmReminder 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "�� �����ϴ� ������ �ֽ��ϴ�."
   ClientHeight    =   3195
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   6030
   Icon            =   "reminder.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   6030
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows �⺻��
   Begin VB.TextBox txtContent 
      BackColor       =   &H8000000F&
      Height          =   1215
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   5
      Text            =   "����"
      Top             =   1800
      Width           =   3615
   End
   Begin VB.CommandButton cmdReAlert 
      Cancel          =   -1  'True
      Caption         =   "�ٽ� �˸�(&R)"
      Height          =   375
      Left            =   4680
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "�ݱ�(&C)"
      Default         =   -1  'True
      Height          =   375
      Left            =   4680
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblLoca 
      Caption         =   "��ġ"
      Height          =   255
      Left            =   840
      TabIndex        =   4
      Top             =   1320
      Width           =   3495
   End
   Begin VB.Label lblTitle 
      Caption         =   "���� �̸�"
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   840
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   240
      Picture         =   "reminder.frx":000C
      Top             =   240
      Width           =   480
   End
   Begin VB.Label Label1 
      Caption         =   "���� ������ �� �����մϴ�."
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "frmReminder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

'https://stackoverflow.com/questions/17651725/vb6-how-to-make-a-floating-window-top-most

  Const SWP_NOMOVE = 2
  Const SWP_NOSIZE = 1
  Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE
  Const HWND_TOPMOST = -1
  Const HWND_NOTOPMOST = -2

  Private Declare Function SetWindowPos Lib "user32" _
        (ByVal hwnd As Long, _
        ByVal hWndInsertAfter As Long, _
        ByVal x As Long, _
        ByVal y As Long, _
        ByVal cx As Long, _
        ByVal cy As Long, _
        ByVal wFlags As Long) As Long
        
Public yy As Integer
Public mm As Integer
Public dd As Integer

  Function SetTopMostWindow(hwnd As Long, Topmost As Boolean) _
     As Long

     If Topmost = True Then 'Make the window topmost
        SetTopMostWindow = SetWindowPos(hwnd, HWND_TOPMOST, 0, 0, 0, _
           0, FLAGS)
     Else
        SetTopMostWindow = SetWindowPos(hwnd, HWND_NOTOPMOST, 0, 0, _
           0, 0, FLAGS)
        SetTopMostWindow = False
     End If
  End Function

Private Sub cmdReAlert_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    SetTopMostWindow Me.hwnd, True
    MessageBeep 16
    MessageBeep 16
End Sub

Private Sub OKButton_Click()
    SaveSetting "Calendar", "NotifiedPlans\" & yy & "\" & mm & "\" & dd, lblTitle.Caption, ""
    Unload Me
End Sub
