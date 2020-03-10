VERSION 5.00
Begin VB.Form frmEditPlan 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "���� ����"
   ClientHeight    =   3510
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   6030
   Icon            =   "frmEditPlan.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3510
   ScaleWidth      =   6030
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   Begin VB.CommandButton OKButton 
      Caption         =   "����(&S)"
      Default         =   -1  'True
      Height          =   375
      Left            =   4680
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton CancelButton 
      Cancel          =   -1  'True
      Caption         =   "���"
      Height          =   375
      Left            =   4680
      TabIndex        =   7
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox txtTitle 
      BackColor       =   &H8000000F&
      Height          =   270
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   360
      Width           =   4335
   End
   Begin VB.TextBox txtTimeHrs 
      Height          =   270
      Left            =   120
      MaxLength       =   2
      TabIndex        =   5
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txtTimeMin 
      Height          =   270
      Left            =   720
      MaxLength       =   2
      TabIndex        =   4
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txtLocation 
      Height          =   270
      Left            =   1320
      TabIndex        =   3
      Top             =   960
      Width           =   3135
   End
   Begin VB.ComboBox txtCategory 
      Height          =   300
      ItemData        =   "frmEditPlan.frx":0442
      Left            =   120
      List            =   "frmEditPlan.frx":044F
      TabIndex        =   2
      Top             =   1680
      Width           =   4335
   End
   Begin VB.TextBox txtContent 
      Height          =   975
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  '����
      TabIndex        =   1
      Top             =   2400
      Width           =   4335
   End
   Begin VB.FileListBox lvCateFiles 
      Height          =   270
      Left            =   5160
      TabIndex        =   0
      Top             =   1920
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "����:"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "�ð�:"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   " :"
      Height          =   255
      Left            =   480
      TabIndex        =   12
      Top             =   960
      Width           =   255
   End
   Begin VB.Label Label4 
      Caption         =   "��ġ:"
      Height          =   255
      Left            =   1320
      TabIndex        =   11
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "�з�:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label Label6 
      Caption         =   "����:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   2160
      Width           =   855
   End
End
Attribute VB_Name = "frmEditPlan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Dim txtTime As String
Dim Category As Integer
Public Title As String
Public CurrentDate As Date
Public Year As Integer
Public Month As Integer
Public Day As Integer
Dim iFileNo As Integer

Private Sub CancelButton_Click()
    If Confirm("���� ������ ����Ͻðڽ��ϱ�? �ӽ� ������� �ʽ��ϴ�.", "���� �߰�", Me) Then
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    Me.Caption = "���� ���� - " & Title
    
    On Error Resume Next
    MkDir "C:\CALPLANS\CTGORIES"
    
    txtCategory.Clear
    txtCategory.AddItem "����"
    txtCategory.AddItem "������Ȱ"
    txtCategory.AddItem "���"
    txtCategory.AddItem "���"
    
    lvCateFiles.Path = "C:\CALPLANS\CTGORIES"
    
    For Category = 0 To lvCateFiles.ListCount - 1
        txtCategory.AddItem lvCateFiles.List(Category)
    Next Category
End Sub

Private Sub OKButton_Click()
    '�Է°��� �˻��Ѵ�.
    If IsNumeric(txtTimeHrs.Text) = False Or IsNumeric(txtTimeMin.Text) = False Then
        MessageBox "�ð��� ���� �ùٸ��� �ʽ��ϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    If GetSetting("Calendar", "Options", "NoTimeCheck", 0) = 0 Then
        If txtTimeHrs.Text > 23 Or txtTimeMin.Text > 59 Or txtTimeHrs.Text < 0 Or txtTimeMin.Text < 0 Then
            MessageBox "�ð����� �ô� 0���� 24, ���� 0���� 59������ �����̿��� �մϴ�.", "�Է� �� ����", Me, 16
            Exit Sub
        End If
    End If
    If txtTitle.Text = "" Then
        MessageBox "������ ���� �ʼ��Դϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    If txtCategory.Text = "" Then
        txtCategory.Text = "(�������� ����)"
    End If
    
    '������Ʈ���� ������ ��Ÿ ������ �����Ѵ�.
    If txtTimeHrs.Text < 9 Then
        If txtTimeMin.Text < 9 Then
            txtTime = "0" & txtTimeHrs.Text & ":0" & txtTimeMin.Text
        Else
            txtTime = "0" & txtTimeHrs.Text & ":" & txtTimeMin.Text
        End If
    Else
        If txtTimeMin.Text < 9 Then
            txtTime = txtTimeHrs.Text & ":0" & txtTimeMin.Text
        Else
            txtTime = txtTimeHrs.Text & ":" & txtTimeMin.Text
        End If
    End If
    
    SaveSetting "Calendar", Year & "\" & Month & "\" & Day, txtTitle.Text & "Time", txtTime
    SaveSetting "Calendar", Year & "\" & Month & "\" & Day, txtTitle.Text & "Location", txtLocation.Text
    SaveSetting "Calendar", Year & "\" & Month & "\" & Day, txtTitle.Text & "Cate", txtCategory.Text
    SaveSetting "Calendar", Year & "\" & Month & "\" & Day, txtTitle.Text & "Cont", txtContent.Text
    
    frmPlans.LoadPlans
    
    '�з��� �߰��Ѵ�.
    If FileExists("C:\CALPLANS\CTGORIES\" & txtCategory.Text) = False Then
        If txtCategory.Text <> "����" And txtCategory.Text <> "������Ȱ" And txtCategory.Text <> "���" And txtCategory.Text <> "���" And txtCategory.Text <> "(�������� ����)" Then
            'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
            iFileNo = FreeFile
            '������ ����.
            
            Open "C:\CALPLANS\CTGORIES\" & txtCategory.Text For Output As #iFileNo
            
            '������ ������ ���� �����Ƿ� �� ĭ����...
            Print #iFileNo, ""
            
            '������ �ݴ´�.
            Close #iFileNo
        End If
    End If
    
    Unload Me
End Sub

Private Sub txtTimeHrs_Change()
    On Error Resume Next
    If Len(txtTimeHrs.Text) = 2 Or (txtTimeHrs.Text >= 3 And txtTimeHrs.Text <= 9) Then
        txtTimeMin.SetFocus '�� �Է� ĭ�� ä��� ���� ĭ�� Ȱ��ȭ�Ѵ�.
    End If
End Sub

Private Sub txtTimeMin_Change()
    If txtTimeMin.Text = "" Then txtTimeHrs.SetFocus
End Sub

Private Sub txtTimeMin_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 8 Then
        If txtTimeMin.Text = "" Then txtTimeHrs.SetFocus
    End If
End Sub

