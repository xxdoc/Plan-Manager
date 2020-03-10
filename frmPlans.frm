VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmPlans 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "���� ���"
   ClientHeight    =   3615
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   4515
   Icon            =   "frmPlans.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3615
   ScaleWidth      =   4515
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "Command1"
      Height          =   180
      Left            =   2760
      TabIndex        =   5
      Top             =   3840
      Width           =   255
   End
   Begin VB.FileListBox lvPlanFiles 
      Height          =   450
      Left            =   2400
      TabIndex        =   4
      Top             =   1680
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton cmdViewPlan 
      Caption         =   "����(&V)..."
      Height          =   375
      Left            =   3000
      TabIndex        =   3
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton cmdDelBtn 
      Caption         =   "����(&D)"
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton cmdAddBtn 
      Caption         =   "�߰�(&C)..."
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3120
      Width           =   1335
   End
   Begin ComctlLib.ListView lstPlanList 
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   5106
      View            =   3
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
End
Attribute VB_Name = "frmPlans"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Public CurrentDate As Date
Dim Year As Integer
Dim Month As Integer
Dim Day As Integer
Dim Plans As String
Dim Plan As Integer

Dim Title As String
Dim Time As String
Dim Category As String
Dim PlanData As String
Dim PlanItem As ListItem

Private Sub cmdAddBtn_Click()
    frmAddPlan.CurrentDate = CurrentDate
    frmAddPlan.Show vbModal, Me
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdDelBtn_Click()
    On Error Resume Next
    If Confirm("'" & lstPlanList.SelectedItem.Text & "' ������ �����Ͻðڽ��ϱ�?", "���� ����", Me) Then
        Kill "C:\CALPLANS\" & Year & "\" & Month & "\" & Day & "\" & lstPlanList.SelectedItem.Text
        DeleteSetting "Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Cate"
        DeleteSetting "Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Time"
        DeleteSetting "Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Location"
        DeleteSetting "Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Cont"
        DeleteSetting "Calendar", "NotifiedPlans\" & Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text
    End If
    
    frmMain.lvTodaysPlan.Refresh
    frmMain.lvTodaysPlans.Refresh
    frmMain.lvTmrPlans.Refresh
    
    LoadPlans
End Sub

Sub LoadPlans()
    On Error Resume Next
    lstPlanList.ListItems.Clear
    lvPlanFiles.Refresh
    
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\" & Year
    MkDir "C:\CALPLANS\" & Year & "\" & Month
    MkDir "C:\CALPLANS\" & Year & "\" & Month & "\" & Day
    
    lvPlanFiles.Path = "C:\CALPLANS\" & Year & "\" & Month & "\" & Day & "\"

    For Plan = 0 To lvPlanFiles.ListCount - 1
        'PlanData = GetSetting("Calendar", Year & "\" & Month & "\" & Day, lvPlanFIles.List(Plan), "(�������� ����)")

        Title = lvPlanFiles.List(Plan)
        Time = GetSetting("Calendar", Year & "\" & Month & "\" & Day, lvPlanFiles.List(Plan) & "Time", "(�������� ����)")
        Category = GetSetting("Calendar", Year & "\" & Month & "\" & Day, lvPlanFiles.List(Plan) & "Cate", "(�������� ����)")

        lstPlanList.ListItems.Add , , Title
        lstPlanList.ListItems(Plan + 1).SubItems(1) = Left$(Time, 2) & ":" & Right$(Time, 2)
        lstPlanList.ListItems(Plan + 1).SubItems(2) = Category
    Next Plan
End Sub

Private Sub cmdViewPlan_Click()
    On Error GoTo exitsub
    frmPlanView.CurrentDate = CurrentDate
    frmPlanView.Caption = lstPlanList.SelectedItem.SubItems(2) & " ���� - " & lstPlanList.SelectedItem.Text
    frmPlanView.Category = lstPlanList.SelectedItem.SubItems(2)
    frmPlanView.Title = lstPlanList.SelectedItem.Text
    frmPlanView.lblTimeHrs.Caption = Split(lstPlanList.SelectedItem.SubItems(1), ":")(0) & "��"
    frmPlanView.lblTimeMin.Caption = Split(lstPlanList.SelectedItem.SubItems(1), ":")(1) & "��"
    frmPlanView.lblLocation.Text = GetSetting("Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Location", "�� �� ����")
    frmPlanView.txtContent.Text = GetSetting("Calendar", Year & "\" & Month & "\" & Day, lstPlanList.SelectedItem.Text & "Cont", "�ڼ��� ���� ����")
    frmPlanView.Show vbModal, Me
    
exitsub:
    Exit Sub
End Sub

Private Sub Form_Load()
    Year = Split(CurrentDate, "-")(0)
    Month = Split(CurrentDate, "-")(1)
    Day = Split(CurrentDate, "-")(2)
    Me.Caption = Year & "�� " & Month & "�� " & Day & "���� ���� ���"
    
    lstPlanList.ColumnHeaders.Add , , "����", 2000
    lstPlanList.ColumnHeaders.Add , , "�ð�", 350
    lstPlanList.ColumnHeaders.Add , , "�з�", 850
    
    LoadPlans
    
    lstPlanList.SortKey = 1
End Sub

Private Sub lstPlanList_ColumnClick(ByVal ColumnHeader As ComctlLib.ColumnHeader)
    lstPlanList.SortKey = ColumnHeader.SubItemIndex
    
    If lstPlanList.SortOrder = lvwAscending Then
        lstPlanList.SortOrder = lvwDescending
    Else
        lstPlanList.SortOrder = lvwAscending
    End If
End Sub

Private Sub lstPlanList_DblClick()
    On Error Resume Next
    cmdViewPlan_Click
End Sub

Private Sub lstPlanList_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 46 Then
        cmdDelBtn_Click
    End If
End Sub
