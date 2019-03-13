VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{6F2A8BEC-0B0A-4991-A21A-ED31E9C8005D}#30.0#0"; "mybutton.ocx"
Begin VB.Form ARM_Control 
   Caption         =   "Wireless ARM COntrol"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   ScaleHeight     =   6975
   ScaleWidth      =   6480
   StartUpPosition =   2  'CenterScreen
   Begin vbREGs.CommandButton CommandButton2 
      Height          =   495
      Left            =   2.45745e5
      TabIndex        =   8
      Top             =   3360
      Width           =   135
      _ExtentX        =   238
      _ExtentY        =   873
      Caption         =   ""
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   240
      Top             =   6240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Frame Frame1 
      Height          =   4575
      Left            =   120
      TabIndex        =   3
      Top             =   1440
      Width           =   6255
      Begin VB.CommandButton Command6 
         Caption         =   "S t o P"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   2040
         TabIndex        =   9
         Top             =   1680
         Width           =   2175
      End
      Begin VB.CommandButton Command5 
         Caption         =   "ARM ClosE"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   3960
         TabIndex        =   7
         Top             =   3120
         Width           =   2175
      End
      Begin VB.CommandButton Command4 
         Caption         =   "ARM OpeN"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   120
         TabIndex        =   6
         Top             =   3120
         Width           =   2175
      End
      Begin VB.CommandButton Command3 
         Caption         =   "ARM RighT"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   3960
         TabIndex        =   5
         Top             =   240
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "ARM LefT"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "B A C K"
      BeginProperty Font 
         Name            =   "Copperplate Gothic Bold"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4080
      TabIndex        =   2
      Top             =   6120
      Width           =   2175
   End
   Begin vbREGs.CommandButton CommandButton1 
      Height          =   495
      Left            =   2.45625e5
      TabIndex        =   0
      Top             =   3000
      Width           =   495
      _ExtentX        =   873
      _ExtentY        =   873
      Caption         =   ""
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Wireless ARM Control"
      BeginProperty Font 
         Name            =   "Copperplate Gothic Bold"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   6255
   End
End
Attribute VB_Name = "ARM_Control"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Unload Me
MainForm.Show
End Sub

Private Sub Command2_Click()
MSComm1.Output = Chr(33)
MSComm1.Output = Chr(5) 'ARM Left

End Sub

Private Sub Command3_Click()
MSComm1.Output = Chr(33)
MSComm1.Output = Chr(6) 'ARM Right
End Sub

Private Sub Command4_Click()
MSComm1.Output = Chr(33)
MSComm1.Output = Chr(7) 'ARM Open
End Sub

Private Sub Command5_Click()
MSComm1.Output = Chr(33)
MSComm1.Output = Chr(9) 'ARM Close
End Sub

Private Sub Command6_Click()
MSComm1.Output = Chr(33)
MSComm1.Output = Chr(15) 'ALL Stop
End Sub

Private Sub Form_Load()
MSComm1.CommPort = comPort
MSComm1.PortOpen = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
MSComm1.PortOpen = False
End Sub
