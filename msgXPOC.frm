VERSION 5.00
Begin VB.Form msgXPOC 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "�޽��� ����"
   ClientHeight    =   1335
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   28440
   Icon            =   "msgXPOC.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1335
   ScaleWidth      =   28440
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "���"
      Default         =   -1  'True
      Height          =   320
      Left            =   4320
      TabIndex        =   2
      Top             =   840
      Width           =   1455
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "����"
      Height          =   320
      Left            =   2760
      TabIndex        =   0
      Top             =   840
      Width           =   1455
   End
   Begin VB.Image imgMBIconQuestion 
      Height          =   480
      Left            =   240
      Picture         =   "msgXPOC.frx":000C
      Top             =   240
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgMBIconError 
      Height          =   480
      Left            =   240
      Picture         =   "msgXPOC.frx":044E
      Top             =   240
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgMBIconWarning 
      Height          =   480
      Left            =   240
      Picture         =   "msgXPOC.frx":0890
      Top             =   240
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label lblContent 
      Caption         =   "����"
      Height          =   495
      Left            =   960
      TabIndex        =   1
      Top             =   360
      Width           =   27255
   End
   Begin VB.Image imgMBIconInfo 
      Height          =   480
      Left            =   240
      Picture         =   "msgXPOC.frx":0CD2
      Top             =   240
      Visible         =   0   'False
      Width           =   480
   End
End
Attribute VB_Name = "msgXPOC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public BeepSnd As Long
Dim isOK As Integer

Private Sub cmdCancel_Click()
    default.MSGRS = False
    Unload Me
End Sub

Private Sub cmdOK_Click()
    default.MSGRS = True
    isOK = 1
    Unload Me
End Sub

Private Sub Image1_Click()

End Sub

Private Sub Form_Load()
    MessageBeep BeepSnd '���� �� �ǳ�
    
    'Beep 600, 3
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If isOK <> 1 Then
        default.MSGRS = False
        Unload Me
    End If
End Sub
