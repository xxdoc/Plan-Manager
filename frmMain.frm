VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{0D452EE1-E08F-101A-852E-02608C4D0BB4}#2.0#0"; "FM20.DLL"
Begin VB.Form frmMain 
   BackColor       =   &H8000000C&
   BorderStyle     =   1  '���� ����
   Caption         =   "����������"
   ClientHeight    =   6660
   ClientLeft      =   150
   ClientTop       =   480
   ClientWidth     =   10950
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   10950
   StartUpPosition =   3  'Windows �⺻��
   Begin VB.CommandButton cmdTltRef 
      Caption         =   "����(&R)"
      Height          =   300
      Left            =   8760
      TabIndex        =   62
      ToolTipText     =   "������ ��������� �����մϴ�."
      Top             =   5820
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Interval        =   10000
      Left            =   6840
      Top             =   0
   End
   Begin TabDlg.SSTab ssTodaysPlan 
      Height          =   6135
      Left            =   8640
      TabIndex        =   58
      Top             =   120
      Width           =   2205
      _ExtentX        =   3889
      _ExtentY        =   10821
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483636
      TabCaption(0)   =   "���� ����"
      TabPicture(0)   =   "frmMain.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lvTodaysPlan"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lvTodaysPlans"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "���� ����"
      TabPicture(1)   =   "frmMain.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lvTmrPlans"
      Tab(1).ControlCount=   1
      Begin VB.FileListBox lvTmrPlans 
         Height          =   5490
         Left            =   -74880
         TabIndex        =   61
         Top             =   360
         Width           =   1935
      End
      Begin VB.FileListBox lvTodaysPlans 
         Height          =   270
         Left            =   240
         TabIndex        =   60
         Top             =   140
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.FileListBox lvTodaysPlan 
         Height          =   5310
         Left            =   120
         TabIndex        =   59
         Top             =   375
         Width           =   1935
      End
   End
   Begin VB.CommandButton cmdHelp 
      BackColor       =   &H8000000C&
      Caption         =   "���� ��"
      Height          =   360
      Left            =   7440
      TabIndex        =   51
      ToolTipText     =   "���α׷��� ���򸻰� ���õ� �׸��Դϴ�."
      Top             =   70
      Width           =   1095
   End
   Begin TabDlg.SSTab ssRibbonMenu 
      Height          =   1335
      Left            =   120
      TabIndex        =   44
      Top             =   120
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   2355
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   6
      TabHeight       =   520
      TabMaxWidth     =   1940
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483636
      MouseIcon       =   "frmMain.frx":047A
      TabCaption(0)   =   " Ȩ"
      TabPicture(0)   =   "frmMain.frx":0496
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "cmdPlanList"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "cmdPlanIndex"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "cmdEndPrg"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   " ����"
      TabPicture(1)   =   "frmMain.frx":08E8
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "tglCalWeekNum"
      Tab(1).Control(1)=   "tglStatusBar"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   " ����"
      TabPicture(2)   =   "frmMain.frx":0D3A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmdPlanCategories"
      Tab(2).Control(1)=   "cmdDelAllTodaysPlan"
      Tab(2).Control(2)=   "cmdTodaysPlan"
      Tab(2).ControlCount=   3
      TabCaption(3)   =   " ����"
      TabPicture(3)   =   "frmMain.frx":118C
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "cmdOptions"
      Tab(3).ControlCount=   1
      Begin VB.CommandButton cmdOptions 
         Caption         =   "ȯ�漳��"
         Height          =   855
         Left            =   -74880
         Picture         =   "frmMain.frx":15DE
         Style           =   1  '�׷���
         TabIndex        =   57
         ToolTipText     =   "���α׷��� �����մϴ�."
         Top             =   360
         Width           =   1095
      End
      Begin VB.CommandButton cmdPlanCategories 
         Caption         =   "���� �з�"
         Height          =   855
         Left            =   -72240
         Picture         =   "frmMain.frx":1A20
         Style           =   1  '�׷���
         TabIndex        =   56
         ToolTipText     =   "�з� ����� ǥ���մϴ�."
         Top             =   360
         Width           =   1215
      End
      Begin VB.CommandButton cmdDelAllTodaysPlan 
         Caption         =   "�̳���   ���� ����"
         Height          =   855
         Left            =   -73680
         Picture         =   "frmMain.frx":1E62
         Style           =   1  '�׷���
         TabIndex        =   54
         ToolTipText     =   "������ ���� ������ ��� �����մϴ�."
         Top             =   360
         UseMaskColor    =   -1  'True
         Width           =   975
      End
      Begin VB.CommandButton cmdTodaysPlan 
         Caption         =   "�̳��� ����"
         Height          =   855
         Left            =   -74880
         Picture         =   "frmMain.frx":22A4
         Style           =   1  '�׷���
         TabIndex        =   53
         ToolTipText     =   "ǥ���� ��¥�� ���� ����� ǥ���մϴ�."
         Top             =   360
         Width           =   1095
      End
      Begin VB.CommandButton cmdEndPrg 
         Caption         =   "������"
         Height          =   855
         Left            =   2760
         Picture         =   "frmMain.frx":26E6
         Style           =   1  '�׷���
         TabIndex        =   50
         ToolTipText     =   "���α׷��� �����ϴ�."
         Top             =   380
         Width           =   1215
      End
      Begin VB.CommandButton cmdPlanIndex 
         Caption         =   "������ ����"
         Height          =   855
         Left            =   1200
         Picture         =   "frmMain.frx":2B28
         Style           =   1  '�׷���
         TabIndex        =   49
         ToolTipText     =   "�ּҷ�, ���� ��ü����Դϴ�."
         Top             =   380
         Width           =   1215
      End
      Begin VB.CommandButton cmdPlanList 
         Caption         =   "���� ���"
         Height          =   855
         Left            =   120
         Picture         =   "frmMain.frx":2F6A
         Style           =   1  '�׷���
         TabIndex        =   48
         ToolTipText     =   "ǥ���� ��¥�� ���� ����� ǥ���մϴ�."
         Top             =   380
         Width           =   975
      End
      Begin MSForms.ToggleButton tglCalWeekNum 
         Height          =   855
         Left            =   -73680
         TabIndex        =   55
         ToolTipText     =   "�޷¿��� ���� ��ȣ�� ǥ���ϰų� ����ϴ�."
         Top             =   360
         Width           =   1095
         BackColor       =   -2147483633
         ForeColor       =   -2147483630
         DisplayStyle    =   6
         Size            =   "1931;1508"
         Value           =   "1"
         Caption         =   "�� ��ȣ"
         Picture         =   "frmMain.frx":33AC
         FontName        =   "����"
         FontHeight      =   180
         FontCharSet     =   129
         FontPitchAndFamily=   34
         ParagraphAlign  =   3
      End
      Begin MSForms.ToggleButton tglStatusBar 
         Height          =   855
         Left            =   -74880
         TabIndex        =   47
         ToolTipText     =   "����ǥ������ ǥ���ϰų� ����ϴ�."
         Top             =   380
         Width           =   1095
         BackColor       =   -2147483633
         ForeColor       =   -2147483630
         DisplayStyle    =   6
         Size            =   "1931;1508"
         Value           =   "1"
         Caption         =   "����ǥ����"
         Picture         =   "frmMain.frx":36C6
         FontName        =   "����"
         FontHeight      =   180
         FontCharSet     =   129
         FontPitchAndFamily=   34
         ParagraphAlign  =   3
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4695
      Left            =   120
      TabIndex        =   1
      Top             =   1560
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   8281
      _Version        =   393216
      TabOrientation  =   1
      TabHeight       =   582
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483636
      TabCaption(0)   =   "����"
      TabPicture(0)   =   "frmMain.frx":3B18
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "MonthView1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Dir1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "�ּҷ�"
      TabPicture(1)   =   "frmMain.frx":3F6A
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lvContacts"
      Tab(1).Control(1)=   "Frame1"
      Tab(1).Control(2)=   "Frame2"
      Tab(1).Control(3)=   "cmdSaveContact"
      Tab(1).Control(4)=   "Frame3"
      Tab(1).Control(5)=   "lvContactFiles"
      Tab(1).Control(6)=   "cmdDelContact"
      Tab(1).Control(7)=   "cmdDeleteAllContacts"
      Tab(1).Control(8)=   "cmdResetFields"
      Tab(1).ControlCount=   9
      TabCaption(2)   =   "�� ��"
      TabPicture(2)   =   "frmMain.frx":43BC
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmdDeleteAllTasks"
      Tab(2).Control(1)=   "lvTaskFiles"
      Tab(2).Control(2)=   "Frame4"
      Tab(2).Control(3)=   "cmdDelTask"
      Tab(2).Control(4)=   "cmdSaveTask"
      Tab(2).Control(5)=   "lvTasks"
      Tab(2).ControlCount=   6
      Begin VB.CommandButton cmdDeleteAllTasks 
         Caption         =   "��� ����(&L)"
         Height          =   495
         Left            =   -67920
         TabIndex        =   52
         Top             =   3720
         Width           =   1215
      End
      Begin VB.CommandButton cmdResetFields 
         Caption         =   "���� �ʱ�ȭ(&R)"
         Height          =   495
         Left            =   -68040
         TabIndex        =   46
         Top             =   3720
         Width           =   1335
      End
      Begin VB.CommandButton cmdDeleteAllContacts 
         Caption         =   "��� ����(&E)"
         Height          =   495
         Left            =   -68040
         TabIndex        =   45
         Top             =   2520
         Width           =   1335
      End
      Begin VB.DirListBox Dir1 
         Height          =   300
         Left            =   8040
         TabIndex        =   43
         Top             =   0
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.FileListBox lvTaskFiles 
         Height          =   270
         Left            =   -67920
         TabIndex        =   40
         Top             =   720
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Caption         =   "�� �� ����"
         Height          =   4095
         Left            =   -72480
         TabIndex        =   28
         Top             =   120
         Width           =   4455
         Begin ComCtl2.UpDown UpDown1 
            Height          =   270
            Left            =   3840
            TabIndex        =   37
            Top             =   1200
            Width           =   255
            _ExtentX        =   450
            _ExtentY        =   476
            _Version        =   327681
            BuddyControl    =   "txtPercentage"
            BuddyDispid     =   196630
            OrigLeft        =   3850
            OrigTop         =   1200
            OrigRight       =   4105
            OrigBottom      =   1455
            Increment       =   10
            Max             =   100
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin VB.TextBox txtMemo 
            Height          =   2055
            Left            =   120
            MultiLine       =   -1  'True
            ScrollBars      =   2  '����
            TabIndex        =   36
            Top             =   1920
            Width           =   4215
         End
         Begin VB.TextBox txtTaskTitle 
            Height          =   270
            Left            =   120
            TabIndex        =   33
            Top             =   480
            Width           =   4215
         End
         Begin VB.TextBox txtPercentage 
            Alignment       =   1  '������ ����
            Height          =   270
            Left            =   3450
            TabIndex        =   32
            Text            =   "0"
            Top             =   1200
            Width           =   420
         End
         Begin ComctlLib.ProgressBar TaskProgress 
            Height          =   300
            Left            =   120
            TabIndex        =   29
            Top             =   1200
            Width           =   3255
            _ExtentX        =   5741
            _ExtentY        =   529
            _Version        =   327682
            Appearance      =   0
         End
         Begin VB.Label Label11 
            Caption         =   "����:"
            Height          =   255
            Left            =   120
            TabIndex        =   35
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label10 
            Caption         =   "����:"
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label9 
            Alignment       =   1  '������ ����
            Caption         =   "%"
            Height          =   255
            Left            =   4155
            TabIndex        =   31
            Top             =   1245
            Width           =   135
         End
         Begin VB.Label Label8 
            Caption         =   "�Ϸ���:"
            Height          =   255
            Left            =   120
            TabIndex        =   30
            Top             =   960
            Width           =   855
         End
      End
      Begin VB.CommandButton cmdDelTask 
         Caption         =   "����(&D)"
         Enabled         =   0   'False
         Height          =   495
         Left            =   -67920
         TabIndex        =   27
         Top             =   3120
         Width           =   1215
      End
      Begin VB.CommandButton cmdSaveTask 
         Caption         =   "����(&S)"
         Height          =   495
         Left            =   -67920
         TabIndex        =   26
         Top             =   120
         Width           =   1215
      End
      Begin VB.ListBox lvTasks 
         Height          =   4050
         ItemData        =   "frmMain.frx":480E
         Left            =   -74880
         List            =   "frmMain.frx":4815
         Style           =   1  'Ȯ�ζ�
         TabIndex        =   25
         Top             =   120
         Width           =   2295
      End
      Begin VB.CommandButton cmdDelContact 
         Caption         =   "����(&D)"
         Height          =   495
         Left            =   -68040
         TabIndex        =   24
         Top             =   1440
         Width           =   1335
      End
      Begin VB.FileListBox lvContactFiles 
         Height          =   270
         Left            =   -69240
         TabIndex        =   23
         Top             =   120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Frame Frame3 
         Caption         =   "�޸�"
         Height          =   1575
         Left            =   -73080
         TabIndex        =   10
         Top             =   2640
         Width           =   4935
         Begin VB.TextBox txtContent 
            Height          =   1215
            Left            =   120
            MultiLine       =   -1  'True
            ScrollBars      =   2  '����
            TabIndex        =   22
            Top             =   240
            Width           =   4695
         End
      End
      Begin VB.CommandButton cmdSaveContact 
         Caption         =   "����(&S)"
         Height          =   495
         Left            =   -68040
         TabIndex        =   9
         Top             =   240
         Width           =   1335
      End
      Begin VB.Frame Frame2 
         Caption         =   "��ȭ��ȣ"
         Height          =   975
         Left            =   -73080
         TabIndex        =   8
         Top             =   1560
         Width           =   4935
         Begin VB.TextBox txtOtherNumber 
            Height          =   270
            Left            =   2880
            TabIndex        =   21
            Top             =   600
            Width           =   1935
         End
         Begin VB.TextBox txtFax 
            Height          =   270
            Left            =   600
            TabIndex        =   19
            Top             =   600
            Width           =   1575
         End
         Begin VB.TextBox txtHome 
            Height          =   270
            Left            =   360
            TabIndex        =   14
            Top             =   240
            Width           =   1455
         End
         Begin VB.TextBox txtCompany 
            Height          =   270
            Left            =   3000
            TabIndex        =   13
            Top             =   240
            Width           =   1815
         End
         Begin VB.Label Label7 
            Caption         =   "��Ÿ:"
            Height          =   255
            Left            =   2400
            TabIndex        =   20
            Top             =   600
            Width           =   495
         End
         Begin VB.Label Label6 
            Caption         =   "�ѽ�:"
            Height          =   255
            Left            =   120
            TabIndex        =   18
            Top             =   600
            Width           =   495
         End
         Begin VB.Label Label5 
            Caption         =   "ȸ��(�б�):"
            Height          =   255
            Left            =   2040
            TabIndex        =   12
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label4 
            Caption         =   "��:"
            Height          =   255
            Left            =   120
            TabIndex        =   11
            Top             =   240
            Width           =   255
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "�⺻ ����"
         Height          =   1335
         Left            =   -73080
         TabIndex        =   4
         Top             =   120
         Width           =   4935
         Begin VB.TextBox txtAddress 
            Height          =   270
            Left            =   2520
            TabIndex        =   42
            Top             =   900
            Width           =   2295
         End
         Begin VB.TextBox txtPostalCode 
            Height          =   270
            Left            =   1080
            TabIndex        =   39
            Top             =   900
            Width           =   735
         End
         Begin VB.TextBox txtCellPhone 
            Height          =   270
            Left            =   3360
            TabIndex        =   17
            Top             =   240
            Width           =   1455
         End
         Begin VB.TextBox txtName 
            Height          =   270
            Left            =   600
            TabIndex        =   16
            Top             =   240
            Width           =   1695
         End
         Begin VB.TextBox txtEmail 
            Height          =   270
            Left            =   1080
            TabIndex        =   15
            Top             =   550
            Width           =   3735
         End
         Begin VB.Label Label13 
            Caption         =   "�ּ�:"
            Height          =   255
            Left            =   2040
            TabIndex        =   41
            Top             =   960
            Width           =   495
         End
         Begin VB.Label Label12 
            Caption         =   "�����ȣ:"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   950
            Width           =   855
         End
         Begin VB.Label Label3 
            Caption         =   "���ڿ���:"
            Height          =   255
            Left            =   120
            TabIndex        =   7
            Top             =   600
            Width           =   855
         End
         Begin VB.Label Label2 
            Caption         =   "�޴���ȭ:"
            Height          =   255
            Left            =   2520
            TabIndex        =   6
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label1 
            Caption         =   "�̸�:"
            Height          =   255
            Left            =   120
            TabIndex        =   5
            Top             =   240
            Width           =   495
         End
      End
      Begin VB.ListBox lvContacts 
         Height          =   4020
         ItemData        =   "frmMain.frx":482A
         Left            =   -74880
         List            =   "frmMain.frx":4831
         TabIndex        =   3
         Top             =   120
         Width           =   1695
      End
      Begin MSComCtl2.MonthView MonthView1 
         Height          =   4170
         Left            =   120
         TabIndex        =   2
         Top             =   120
         Width           =   8100
         _ExtentX        =   14288
         _ExtentY        =   7355
         _Version        =   393216
         ForeColor       =   -2147483630
         BackColor       =   -2147483633
         Appearance      =   0
         MonthColumns    =   3
         MonthRows       =   2
         StartOfWeek     =   80543745
         CurrentDate     =   43858
      End
   End
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  '�Ʒ� ����
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   6390
      Width           =   10950
      _ExtentX        =   19315
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   14129
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "2020-03-08"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "���� 10:05"
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "����(&F)"
      Visible         =   0   'False
      Begin VB.Menu mnuFileProperties 
         Caption         =   "���� ���(&I)..."
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuFilePlanBrowser 
         Caption         =   "��� ����/������ ����(&B)..."
      End
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "����(&S)"
         Shortcut        =   ^S
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "������(&X)"
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "����(&V)"
      Visible         =   0   'False
      Begin VB.Menu mnuViewStatusBar 
         Caption         =   "���� ǥ����(&B)"
         Checked         =   -1  'True
      End
      Begin VB.Menu erfaefewrfrfwe5r 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewOptions 
         Caption         =   "�ɼ�(&O)..."
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "����(&H)"
      Visible         =   0   'False
      Begin VB.Menu mnuHelpContents 
         Caption         =   "����(&C)"
      End
      Begin VB.Menu mnuHelpSearchForHelpOn 
         Caption         =   "����(&S)..."
      End
      Begin VB.Menu mnuHelpBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "����(&A)"
      End
   End
   Begin VB.Menu mnuDateMenu 
      Caption         =   "����(&P)"
      Visible         =   0   'False
      Begin VB.Menu mnuTodaysPlan 
         Caption         =   "�̳��� ����(&T)..."
      End
   End
   Begin VB.Menu mnuSysTray 
      Caption         =   "SysTray"
      Visible         =   0   'False
      Begin VB.Menu mnuQuit 
         Caption         =   "����(&Q)"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)
Dim Contact As Integer
Dim iFileNo As Integer
Dim Task As Integer

'�ۿ°�: http://www.vbforums.com/showthread.php?595990-VB6-System-tray-icon-systray
' \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
' The following code is required:
Option Explicit

'��ó: http://www.vbforums.com/showthread.php?546633-VB6-Sleep-Function
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

' Credits: (Milk (Sleep+Pause Sub)). (Wayne Spangler (Pause Sub))
Private Sub Pause(ByVal Delay As Single)
   Delay = Timer + Delay
   If Delay > 86400 Then 'more than number of seconds in a day
      Delay = Delay - 86400
      Do
          DoEvents ' to process events.
          Sleep 1 ' to not eat cpu
      Loop Until Timer < 1
   End If
   Do
       DoEvents ' to process events.
       Sleep 1 ' to not eat cpu
   Loop While Delay > Timer
End Sub

Private Sub cmdTltRef_Click()
    lvTodaysPlan.Refresh
    lvTodaysPlans.Refresh
    lvTmrPlans.Refresh
    
    sbStatusBar.Panels(1).Text = "���ŵǾ����ϴ�."
    Sleep 1000
    sbStatusBar.Panels(1).Text = ""
End Sub

' End required code
' /////////////////////////////////////////////

Sub LoadContacts()
    On Error Resume Next
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\CONTACTS"
    
    lvContacts.Clear
    lvContacts.AddItem "�� ����ó �߰�..."
    
    lvContactFiles.Refresh
    
    lvContacts.ListIndex = 0
    lvContactFiles.Path = "C:\CALPLANS\CONTACTS"
    
    For Contact = 0 To lvContactFiles.ListCount - 1
        lvContacts.AddItem lvContactFiles.List(Contact)
    Next Contact
End Sub

Private Sub cmdDelContact_Click()
    If Confirm(lvContacts.List(lvContacts.ListIndex) & " ����ó�� �����Ͻðڽ��ϱ�?", "�ּҷ� ����", Me) Then
        Kill "C:\CALPLANS\CONTACTS\" & lvContacts.List(lvContacts.ListIndex)
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "CellPhone"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Email"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Home"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Fax"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Company"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "OtherNum"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Content"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Addr"
        DeleteSetting "Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Postal"
        LoadContacts
    End If
End Sub

Private Sub cmdDeleteAllContacts_Click()
    frmOptions.cmdDelContacts_Click
End Sub

Private Sub cmdDeleteAllTasks_Click()
    frmOptions.cmdDelTasks_Click
End Sub

Private Sub cmdDelTask_Click()
    On Error Resume Next
    If Confirm(txtTaskTitle.Text & " �۾��� �����Ͻðڽ��ϱ�?", "�۾� ����", Me) Then
        DeleteSetting "Calendar", "Tasks", txtTaskTitle.Text & "Perc"
        DeleteSetting "Calendar", "Tasks", txtTaskTitle.Text & "Memo"
        Kill "C:\CALPLANS\TASKS\" & txtTaskTitle.Text
    End If
    
    LoadTasks
End Sub

Private Sub cmdEndPrg_Click()
    mnuFileExit_Click
End Sub

Private Sub cmdHelp_Click()
    If GetSetting("Calendar", "Options", "TP", 0) = 0 Then
        PopupMenu mnuHelp, , Me.Width - 2350 - ssTodaysPlan.Width - 150, 400
    Else
        PopupMenu mnuHelp, , Me.Width - 2350, 400
    End If
End Sub

Private Sub cmdOptions_Click()
    mnuViewOptions_Click
End Sub

Private Sub cmdPlanCategories_Click()
    frmPlanCategories.Show vbModal, Me
End Sub

Private Sub cmdPlanIndex_Click()
    mnuFilePlanBrowser_Click
End Sub

Private Sub cmdPlanList_Click()
    mnuFileProperties_Click
End Sub

Private Sub cmdResetFields_Click()
    If Confirm("�ѹ��� ����մϴ�. ��� �Է»����� ���� �ʱ�ȭ�Ͻðڽ��ϱ�?", "�ʱ�ȭ", Me) Then
        txtCellPhone.Text = ""
        txtEmail.Text = ""
        txtPostalCode.Text = ""
        txtAddress.Text = ""
        txtHome.Text = ""
        txtCompany.Text = ""
        txtFax.Text = ""
        txtOtherNumber.Text = ""
    End If
End Sub

Private Sub cmdSaveContact_Click()
    On Error Resume Next
    If InStr(1, txtName.Text, "?") > 0 Or InStr(1, txtName.Text, "\") > 0 Or InStr(1, txtName.Text, "|") > 0 Or InStr(1, txtName.Text, "/") > 0 Or InStr(1, txtName.Text, "*") > 0 Or InStr(1, txtName.Text, ":") > 0 Or InStr(1, txtName.Text, ".") > 0 Or InStr(1, txtName.Text, ChrW$(34)) > 0 Or txtName.Text = "" Then
        MessageBox "�̸��� ���� �ùٸ��� �ʽ��ϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    
    SaveSetting "Calendar", "Contacts", txtName.Text & "CellPhone", txtCellPhone.Text
    SaveSetting "Calendar", "Contacts", txtName.Text & "Email", txtEmail.Text
    
    SaveSetting "Calendar", "Contacts", txtName.Text & "Home", txtHome.Text
    SaveSetting "Calendar", "Contacts", txtName.Text & "Company", txtCompany.Text
    SaveSetting "Calendar", "Contacts", txtName.Text & "Fax", txtFax.Text
    SaveSetting "Calendar", "Contacts", txtName.Text & "OtherNum", txtOtherNumber.Text
    
    SaveSetting "Calendar", "Contacts", txtName.Text & "Content", txtContent.Text
    
    SaveSetting "Calendar", "Contacts", txtName.Text & "Postal", txtPostalCode.Text
    SaveSetting "Calendar", "Contacts", txtName.Text & "Addr", txtAddress.Text
    
    If lvContacts.List(lvContacts.ListIndex) = "�� ����ó �߰�..." Then
        '�ش� ����ó�� �������� �˸��� ������ �����.
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        iFileNo = FreeFile
        '������ ����.
        Open "C:\CALPLANS\CONTACTS\" & txtName.Text For Output As #iFileNo
        
        '������ ������ ���� �����Ƿ� �� ĭ����...
        Print #iFileNo, ""
        
        '������ �ݴ´�.
        Close #iFileNo
        
        txtName.Text = ""
        
        txtCellPhone.Text = ""
        txtEmail.Text = ""
        
        txtHome.Text = ""
        txtCompany.Text = ""
        txtFax.Text = ""
        txtOtherNumber.Text = ""
        
        txtContent.Text = ""
        
        txtPostalCode.Text = ""
    End If
    
    LoadContacts
End Sub

Sub LoadTasks()
    On Error Resume Next
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\TASKS"
    
    lvTaskFiles.Path = "C:\CALPLANS\TASKS"
    lvTaskFiles.Refresh
    lvTasks.Clear
    
    lvTasks.AddItem "�� �۾� �߰�..."
    
    For Task = 0 To lvTaskFiles.ListCount - 1
        lvTasks.AddItem lvTaskFiles.List(Task)
        If GetSetting("Calendar", "Tasks", lvTaskFiles.List(Task) & "Perc", "0") = "100" Then
            lvTasks.Selected(Task + 1) = True
        End If
    Next Task
    
    lvTasks.ListIndex = 0
    
    txtTaskTitle.Text = ""
    txtPercentage.Text = ""
    txtMemo.Text = ""
End Sub

Private Sub cmdSaveTask_Click()
    If InStr(1, txtTaskTitle.Text, "?") > 0 Or InStr(1, txtTaskTitle.Text, "\") > 0 Or InStr(1, txtTaskTitle.Text, "|") > 0 Or InStr(1, txtTaskTitle.Text, "/") > 0 Or InStr(1, txtTaskTitle.Text, "*") > 0 Or InStr(1, txtTaskTitle.Text, ":") > 0 Or InStr(1, txtTaskTitle.Text, ".") > 0 Or InStr(1, txtTaskTitle.Text, ChrW$(34)) > 0 Or txtTaskTitle.Text = "" Then
        MessageBox "������ ���� �ùٸ��� �ʽ��ϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    
    SaveSetting "Calendar", "Tasks", txtTaskTitle.Text & "Perc", txtPercentage.Text
    SaveSetting "Calendar", "Tasks", txtTaskTitle.Text & "Memo", txtMemo.Text
    
    If lvTasks.List(lvTasks.ListIndex) = "�� �۾� �߰�..." Then
        '�ش� �۾��� �������� �˸��� ������ �����.
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        iFileNo = FreeFile
        '������ ����.
        Open "C:\CALPLANS\TASKS\" & txtTaskTitle.Text For Output As #iFileNo
        
        '������ ������ ���� �����Ƿ� �� ĭ����...
        Print #iFileNo, ""
        
        '������ �ݴ´�.
        Close #iFileNo
        
        txtTaskTitle.Text = ""
        txtPercentage.Text = ""
        txtMemo.Text = ""
    End If
    
    LoadTasks
End Sub

Private Sub cmdTodaysPlan_Click()
    cmdPlanList_Click
End Sub

Private Sub cmdDelAllTodaysPlan_Click()
    On Error Resume Next
    If Confirm("�����Ͻðڽ��ϱ�?", "����", Me) Then
        If Confirm("���� *�Ұ���*�մϴ�. ������ " & MonthView1.SelStart & "�� ��� ������ �����Ͻðڽ��ϱ�?", "����", Me, , True) Then
            On Error Resume Next
            Shell "CMD /C RD /S /Q " & ChrW$(34) & "C:\CALPLANS\" & Split(MonthView1.SelStart, "-")(0) & "\" & Split(MonthView1.SelStart, "-")(1) & "\" & Split(MonthView1.SelStart, "-")(2) & ChrW$(34)
            Shell "COMMAND /C DELTREE /Y " & ChrW$(34) & "C:\CALPLANS\" & Split(MonthView1.SelStart, "-")(0) & "\" & Split(MonthView1.SelStart, "-")(1) & "\" & Split(MonthView1.SelStart, "-")(2) & ChrW$(34)
            
            MessageBox "�����Ǿ����ϴ�.", "����", Me
        End If
    End If
End Sub

Sub SetColor()
    Select Case GetSetting("Calendar", "Options", "BGColor", 0)
        Case 0
            Me.BackColor = &H8000000C
            ssRibbonMenu.BackColor = &H8000000C
            SSTab1.BackColor = &H8000000C
        Case 1
            Me.BackColor = &H8000000F
            ssRibbonMenu.BackColor = &H8000000F
            SSTab1.BackColor = &H8000000F
        Case 2
            Me.BackColor = &HFF&
            ssRibbonMenu.BackColor = &HFF&
            SSTab1.BackColor = &HFF&
        Case 3
            Me.BackColor = &HFFFF&
            ssRibbonMenu.BackColor = &HFFFF&
            SSTab1.BackColor = &HFFFF&
        Case 4
            Me.BackColor = &HC000&
            ssRibbonMenu.BackColor = &HC000&
            SSTab1.BackColor = &HC000&
        Case 5
            Me.BackColor = &HFFFF00
            ssRibbonMenu.BackColor = &HFFFF00
            SSTab1.BackColor = &HFFFF00
        Case 6
            Me.BackColor = &H808000
            ssRibbonMenu.BackColor = &H808000
            SSTab1.BackColor = &H808000
        Case 7
            Me.BackColor = &HC00000
            ssRibbonMenu.BackColor = &HC00000
            SSTab1.BackColor = &HC00000
        Case 8
            Me.BackColor = &H0&
            ssRibbonMenu.BackColor = &H0&
            SSTab1.BackColor = &H0&
    End Select
    
    ssTodaysPlan.BackColor = Me.BackColor
    cmdHelp.BackColor = Me.BackColor
End Sub

Private Sub Form_Load()
    If GetSetting("Calendar", "Options", "TP", 0) = 1 Then
        Me.Width = 8715
    End If
    
    tglCalWeekNum.Value = GetSetting("Calendar", "Options", "SWN", True)
    If GetSetting("Calendar", "Options", "SWN", "True") = "False" Then
        MonthView1.ShowWeekNumbers = "False"
    Else
        MonthView1.ShowWeekNumbers = "True"
    End If
    
    MonthView1.StartOfWeek = GetSetting("Calendar", "Options", "WSD", 0) + 1
    
    On Error Resume Next
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\CONTACTS"
    MkDir "C:\CALPLANS\TASKS"
    
    Dim ty As Integer
    ty = Split(DateAdd("d", 1, Date), "-")(0)
    Dim tm As Integer
    tm = Split(DateAdd("d", 1, Date), "-")(1)
    Dim td As Integer
    td = Split(DateAdd("d", 1, Date), "-")(2)
    
    MkDir "C:\CALPLANS\" & ty
    MkDir "C:\CALPLANS\" & ty & "\" & tm
    MkDir "C:\CALPLANS\" & ty & "\" & tm & "\" & td

    Select Case Command
        Case "/?"
            MessageBox "���������� Ǯ�׸��� �����մϴ�." & vbCrLf & vbCrLf & _
                   "    PLANMGR.EXE [/R]" & vbCrLf & vbCrLf & _
                   "    /R  �ּ�ȭ�� ���·� �����մϴ�.", _
                   "���������� ����", Me
            End
        Case "/R"
            Me.WindowState = 1
        Case ""
        Case Else
            MessageBox "����ġ�� Ʋ���ϴ� - " & Command, "����", Me, 16
    End Select
    
    'mnuHelpAbout.Caption = App.Title & " ����(&A)"
    
    'frmNotifyMgr.Show

    Me.Left = GetSetting("Calendar", "Settings", "MainLeft", 1000)
    Me.Top = GetSetting("Calendar", "Settings", "MainTop", 1000)
    
    Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab)
    Me.Caption = Me.Caption & " (" & MonthView1.Year & "�� " & MonthView1.Month & "��)"
    
    If GetSetting("Calendar", "Config", "FirstRun", "0") = "0" Then
        SaveSetting "Calendar", "Config", "FirstRun", "1"
        MessageBox "�� Ǯ�׸��� ����� ���¿����� �˸��� �������� " & ChrW$(34) & Dir1.Path & "\PLNMGR32.EXE /R" & ChrW$(34) & _
               "(��� �����) �ٷΰ��⸦ �������α׷��� �߰��Ͻʽÿ�.", "�˸��� Ȱ��ȭ", Me
        Clipboard.SetText ChrW$(34) & Dir1.Path & "\PLANMGR.EXE /R" & ChrW$(34)
    End If
    
    LoadContacts
    LoadTasks
    
    SSTab1.Tab = GetSetting("Calendar", "Options", "StartPage", 0)
    
    SetColor
    
    MkDir "C:\CALPLANS\" & Format(Now, "YYYY") & "\" & Format(Now, "M") & "\" & Format(Now, "D")
    
    MkDir "C:\CALPLANS\" & ty & "\" & tm & "\" & td
    
    lvTmrPlans.Path = "C:\CALPLANS\" & ty & "\" & tm & "\" & td
    
    lvTodaysPlan.Path = "C:\CALPLANS\" & Format(Now, "YYYY") & "\" & Format(Now, "M") & "\" & Format(Now, "D")
End Sub

Private Sub lvTodaysPlan_DblClick()
    On Error Resume Next
End Sub

Private Sub mnuQuit_Click()
    End
End Sub

Private Sub Timer1_Timer()
    '������ ������ ã�´�.
    On Error Resume Next
    
    Dim yy As Integer
    Dim mm As Integer
    Dim dd As Integer
    
    yy = Format(Now, "YYYY")
    mm = Format(Now, "M")
    dd = Format(Now, "D")
    
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\" & yy
    MkDir "C:\CALPLANS\" & yy & "\" & mm
    MkDir "C:\CALPLANS\" & yy & "\" & mm & "\" & dd
    
    
    
    lvTodaysPlans.Path = "C:\CALPLANS\" & yy & "\" & mm & "\" & dd
    
    lvTodaysPlans.Refresh
    Dim Plan As Integer
    Dim ttt As Integer
    
    For Plan = 0 To lvTodaysPlans.ListCount - 1
        ttt = CInt(Split(GetSetting("Calendar", yy & "\" & mm & "\" & dd, lvTodaysPlans.List(Plan) & "Time", "00:00"), ":")(0) & Split(GetSetting("Calendar", yy & "\" & mm & "\" & dd, lvTodaysPlans.List(Plan) & "Time", "00:00"), ":")(1)) - CInt(Format(Now, "hhmm"))
        '����ð��� �����ð����� ���̰� 10�� �̸��̸� �˸��� ����.
        'MsgBox Split(GetSetting("Calendar", yy & "\" & mm & "\" & dd, lvTodaysPlans.List(Plan) & "Time", "00:00"), ":")(0) & Split(GetSetting("Calendar", yy & "\" & mm & "\" & dd, lvTodaysPlans.List(Plan) & "Time", "00:00"), ":")(1) & " " & Format(Now, "hhmm") & " " & ttt
        If ttt < 10 And ttt >= -1 Then
            '��� ���� ������ �˸�
            If GetSetting("Calendar", "NotifiedPlans\" & yy & "\" & mm & "\" & dd, lvTodaysPlans.List(Plan), "abc") = "abc" Then
                'MsgBox 3
                frmReminder.yy = yy
                frmReminder.mm = mm
                frmReminder.dd = dd
                frmReminder.lblTitle.Caption = lvTodaysPlans.List(Plan)
                frmReminder.lblLoca.Caption = GetSetting("Calendar", yy & mm & dd, lvTodaysPlans.List(Plan) & "Location", "�ּ� �Һи�")
                frmReminder.txtContent.Text = GetSetting("Calendar", yy & mm & dd, lvTodaysPlans.List(Plan) & "Cont", "")
                frmReminder.Show
                'SysTray.ShowBalloonTip lvTodaysPlans.List(Plan) & " ���� ���۱��� 10�к��� ���� ���ҽ��ϴ�. �غ��Ͻʽÿ�.", beInformation, "����������"
                'Beep 950, 5
            End If
        End If
    Next Plan
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Confirm("���������ڸ� ������ ���� ���� �˸��� ���� �ʽ��ϴ�.", "���", Me, 48) = True Then
        Dim i As Integer
    
    
        'close all sub forms
        For i = Forms.Count - 1 To 1 Step -1
            Unload Forms(i)
        Next
        If Me.WindowState <> vbMinimized Then
            SaveSetting "Calendar", "Settings", "MainLeft", Me.Left
            SaveSetting "Calendar", "Settings", "MainTop", Me.Top
        End If
        
        End
    Else
        Cancel = 1
        Exit Sub
    End If
    
    'Cancel = 1
    'Me.Hide
    'frmNotifyMgr.Show
End Sub

Private Sub Frame5_DragDrop(Source As Control, x As Single, y As Single)

End Sub

Private Sub lvContacts_Click()
    If lvContacts.List(lvContacts.ListIndex) = "�� ����ó �߰�..." Then
        txtName.BackColor = &H80000005
        txtName.Locked = False
        
        txtName.Text = ""
        
        txtCellPhone.Text = ""
        txtEmail.Text = ""
        
        txtHome.Text = ""
        txtCompany.Text = ""
        txtFax.Text = ""
        txtOtherNumber.Text = ""
        
        txtAddress.Text = ""
        txtPostalCode.Text = ""
        
        txtContent.Text = ""
        
        cmdDelContact.Enabled = False
        
        If SSTab1.Tab = 1 Then Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab) & " (�� �ּҷ� �߰�)"
    Else
        txtName.BackColor = &H8000000F
        txtName.Locked = True
        
        txtName.Text = lvContacts.List(lvContacts.ListIndex)
        
        txtCellPhone.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "CellPhone", "")
        txtEmail.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Email", "")
        
        txtHome.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Home", "")
        txtCompany.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Company", "")
        txtFax.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Fax", "")
        txtOtherNumber.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "OtherNum", "")
        
        txtPostalCode.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Postal", "")
        txtAddress.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Addr", "")
        
        txtContent.Text = GetSetting("Calendar", "Contacts", lvContacts.List(lvContacts.ListIndex) & "Content", "")
        
        cmdDelContact.Enabled = True
        
        Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab) & " (" & txtName.Text & ")"
    End If
End Sub

Private Sub lvTasks_Click()
    If lvTasks.List(lvTasks.ListIndex) = "�� �۾� �߰�..." Then
        cmdDelTask.Enabled = False
    Else
        cmdDelTask.Enabled = True
    End If
    
    txtTaskTitle.Text = lvTasks.List(lvTasks.ListIndex)
    txtPercentage.Text = GetSetting("Calendar", "Tasks", lvTasks.List(lvTasks.ListIndex) & "Perc", "")
    txtMemo.Text = GetSetting("Calendar", "Tasks", lvTasks.List(lvTasks.ListIndex) & "Memo", "")
    
    If SSTab1.Tab = 2 Then
        Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab) & " (" & lvTasks.List(lvTasks.ListIndex) & ")"
        If lvTasks.List(lvTasks.ListIndex) = "�� �۾� �߰�..." Then
            Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab) & " (�� �۾� �߰�)"
        End If
    End If
End Sub

Private Sub lvTasks_ItemCheck(Item As Integer)
    If lvTasks.List(Item) <> "�� �۾� �߰�..." Then
        If lvTasks.Selected(Item) = True Then
            SaveSetting "Calendar", "Tasks", lvTasks.List(Item) & "Perc", "100"
        Else
            SaveSetting "Calendar", "Tasks", lvTasks.List(Item) & "Perc", "0"
        End If
    End If

    If lvTasks.Selected(Item) = True Then
        txtPercentage.Text = 100
    Else
        txtPercentage.Text = 0
    End If
    
    lvTasks.ListIndex = Item
End Sub

Private Sub mnuFilePlanBrowser_Click()
    frmDataBrowser.Show vbModal, Me
End Sub

Private Sub mnuTodaysPlan_Click()
    MonthView1_DateClick MonthView1.SelStart
End Sub

Private Sub MonthView1_DateClick(ByVal DateClicked As Date)
    frmPlans.CurrentDate = DateClicked
    frmPlans.Show vbModal, Me
End Sub

Private Sub mnuHelpAbout_Click()
    frmAbout.Show vbModal, Me
End Sub

Private Sub mnuHelpSearchForHelpOn_Click()
    Dim nRet As Integer


    '�� ������Ʈ�� ���� ���� ������ ������ ����ڿ��� �޽����� ǥ���մϴ�.
    '����ڴ� [������Ʈ �Ӽ�] ��ȭ ���ڿ��� ���� ���α׷��� ����
    '���� ������ ������ �� �ֽ��ϴ�.
    If Len(App.HelpFile) = 0 Then
        MessageBox "���� ������ ǥ���� �� �����ϴ�. �� ���α׷��� ������ ������ �����ϴ�.", App.Title, Me, 16
    Else
        On Error Resume Next
        If FileExists(Dir1.Path & "\PLNMGR32.HLP") = False Then
            MessageBox "���� ������ ã�� �� �����ϴ�. Ǯ�׸� ����ȭ�� ��ο� PLNMGR32.HLP�� �ִ��� Ȯ���Ͻʽÿ�. ������ �ٽ� ��ġ�ϰų� ����꿡�� �޾� �����Ͻʽÿ�.", "����", Me, 16
            Exit Sub
        End If
        
        nRet = OSWinHelp(Me.hwnd, Dir1.Path & "\PLNMGR32.HLP", 261, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub



Private Sub mnuHelpContents_Click()
    Dim nRet As Integer


    '�� ������Ʈ�� ���� ���� ������ ������ ����ڿ��� �޽����� ǥ���մϴ�.
    '����ڴ� [������Ʈ �Ӽ�] ��ȭ ���ڿ��� ���� ���α׷��� ����
    '���� ������ ������ �� �ֽ��ϴ�.
    If Len(App.HelpFile) = 0 Then
        MessageBox "���� ������ ǥ���� �� �����ϴ�. �� ���α׷��� ������ ������ �����ϴ�.", App.Title, Me, 16
    Else
        On Error Resume Next
        If FileExists(Dir1.Path & "\PLNMGR32.HLP") = False Then
            MessageBox "���� ������ ã�� �� �����ϴ�. Ǯ�׸� ����ȭ�� ��ο� PLNMGR32.HLP�� �ִ��� Ȯ���Ͻʽÿ�. ������ �ٽ� ��ġ�ϰų� ����꿡�� �޾� �����Ͻʽÿ�.", "����", Me, 16
            Exit Sub
        End If
        
        nRet = OSWinHelp(Me.hwnd, Dir1.Path & "\PLNMGR32.HLP", 3, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub


Private Sub mnuToolsOptions_Click()
    '�۾�: 'mnuToolsOptions_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuToolsOptions_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewWebBrowser_Click()
    '�۾�: 'mnuViewWebBrowser_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuViewWebBrowser_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewOptions_Click()
    '�۾�: 'mnuViewOptions_Click' �ڵ带 �߰��Ͻʽÿ�.
    frmOptions.Show vbModal, Me
End Sub

Private Sub mnuViewRefresh_Click()
    '�۾�: 'mnuViewRefresh_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuViewRefresh_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewStatusBar_Click()
    mnuViewStatusBar.Checked = Not mnuViewStatusBar.Checked
    sbStatusBar.Visible = mnuViewStatusBar.Checked
End Sub

'Private Sub mnuViewToolbar_Click()
    'mnuViewToolbar.Checked = Not mnuViewToolbar.Checked
    'tbToolBar.Visible = mnuViewToolbar.Checked
'End Sub

Private Sub mnuEditPasteSpecial_Click()
    '�۾�: 'mnuEditPasteSpecial_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditPasteSpecial_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditPaste_Click()
    '�۾�: 'mnuEditPaste_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditPaste_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditCopy_Click()
    '�۾�: 'mnuEditCopy_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditCopy_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditCut_Click()
    '�۾�: 'mnuEditCut_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditCut_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditUndo_Click()
    '�۾�: 'mnuEditUndo_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditUndo_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileExit_Click()
    '�˸��̴� ���ƾ� �ϹǷ� ���� ����⸸ �Ѵ�.
    'Unload Me
    Me.Hide
End Sub

Private Sub mnuFileSend_Click()
    '�۾�: 'mnuFileSend_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSend_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFilePrint_Click()
    '�۾�: 'mnuFilePrint_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFilePrint_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFilePrintPreview_Click()
    '�۾�: 'mnuFilePrintPreview_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFilePrintPreview_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

'Private Sub mnuFilePageSetup_Click()
'    On Error Resume Next
'    With dlgCommonDialog
'        .DialogTitle = "������ ����"
'        .CancelError = True
'        .ShowPrinter
'    End With
'
'End Sub

Private Sub mnuFileProperties_Click()
    '�۾�: 'mnuFileProperties_Click' �ڵ带 �߰��Ͻʽÿ�.
    MonthView1_DateClick MonthView1.SelStart
End Sub

Private Sub mnuFileSaveAll_Click()
    '�۾�: 'mnuFileSaveAll_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSaveAll_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileSaveAs_Click()
    '�۾�: 'mnuFileSaveAs_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSaveAs_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileSave_Click()
    '�۾�: 'mnuFileSave_Click' �ڵ带 �߰��Ͻʽÿ�.
    If SSTab1.Tab = 1 Then
        cmdSaveContact_Click
    Else
        cmdSaveTask_Click
    End If
End Sub

Private Sub mnuFileClose_Click()
    '�۾�: 'mnuFileClose_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileClose_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

'Private Sub mnuFileOpen_Click()
'    Dim sFile As String
'
'
'    With dlgCommonDialog
'        .DialogTitle = "����"
'        .CancelError = False
'        '�۾�: Common Dialog ��Ʈ���� �÷��׿� Ư���� �����մϴ�.
'        .Filter = "��� ����(*.*)|*.*"
'        .ShowOpen
'        If Len(.FileName) = 0 Then
'            Exit Sub
'        End If
'        sFile = .FileName
'    End With
'    '�۾�: �ڵ带 �߰��Ͽ� ���� �ִ� ������ ó���մϴ�.
'
'End Sub

Private Sub mnuFileNew_Click()
    '�۾�: 'mnuFileNew_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileNew_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub MonthView1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
        mnuTodaysPlan.Caption = MonthView1.SelStart & "�� ����"
        PopupMenu mnuDateMenu
    End If
End Sub

Private Sub ssRibbonMenu_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 2 Then
    
    End If
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
    Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab)
    If SSTab1.Tab = 0 Then
        Me.Caption = Me.Caption & " (" & MonthView1.Year & "�� " & MonthView1.Month & "��)"
    ElseIf SSTab1.Tab = 1 Then
        Me.Caption = Me.Caption & " (�� �ּҷ� �߰�)"
    ElseIf SSTab1.Tab = 2 Then
        Me.Caption = App.Title & " - " & SSTab1.TabCaption(SSTab1.Tab) & " (�� �۾� �߰�)"
    End If
    
    
    
    If SSTab1.Tab > 0 Then
        mnuFileBar0.Visible = True
        mnuFileSave.Visible = True
    Else
        mnuFileBar0.Visible = False
        mnuFileSave.Visible = False
    End If
End Sub

Private Sub tglCalWeekNum_Click()
    If MonthView1.ShowWeekNumbers = False Then
        MonthView1.ShowWeekNumbers = True
    Else
        MonthView1.ShowWeekNumbers = False
    End If
    
    SaveSetting "Calendar", "Options", "SWN", tglCalWeekNum.Value
End Sub

Private Sub tglStatusBar_Click()
    mnuViewStatusBar_Click
End Sub

Private Sub txtPercentage_Change()
    On Error Resume Next
    TaskProgress.Value = txtPercentage.Text
    
    If TaskProgress.Value = 100 Then
        lvTasks.Selected(lvTasks.ListIndex) = True
    Else
        lvTasks.Selected(lvTasks.ListIndex) = False
    End If
End Sub
