VERSION 5.00
Object = "{6F2A8BEC-0B0A-4991-A21A-ED31E9C8005D}#30.0#0"; "mybutton.ocx"
Begin VB.Form MainForm 
   Caption         =   "Main Form"
   ClientHeight    =   6930
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6600
   LinkTopic       =   "Form1"
   ScaleHeight     =   6930
   ScaleWidth      =   6600
   StartUpPosition =   2  'CenterScreen
   Begin vbREGs.CommandButton CommandButton1 
      Height          =   495
      Left            =   2.45745e5
      TabIndex        =   10
      Top             =   3240
      Width           =   495
      _ExtentX        =   873
      _ExtentY        =   873
      Caption         =   ""
   End
   Begin VB.Frame Frame2 
      Height          =   4335
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   6375
      Begin VB.CommandButton Command1 
         Caption         =   "ARM Control"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   6135
      End
      Begin VB.CommandButton Command3 
         Caption         =   "H E L P"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   120
         TabIndex        =   7
         Top             =   2400
         Width           =   2895
      End
      Begin VB.CommandButton Command4 
         Caption         =   "A B O U T"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   3240
         TabIndex        =   6
         Top             =   2400
         Width           =   3015
      End
      Begin VB.CommandButton Command5 
         Caption         =   "E X I T "
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
         Left            =   120
         TabIndex        =   5
         Top             =   3480
         Width           =   6135
      End
   End
   Begin VB.Frame Frame1 
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   1680
      Width           =   6375
      Begin VB.CommandButton Command7 
         Caption         =   "Set"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5040
         TabIndex        =   9
         Top             =   240
         Width           =   1095
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         ItemData        =   "MainForm.frx":0000
         Left            =   3480
         List            =   "MainForm.frx":0002
         TabIndex        =   2
         Text            =   "Combo1"
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Select COM Port :"
         BeginProperty Font 
            Name            =   "Copperplate Gothic Bold"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   3255
      End
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
      TabIndex        =   0
      Top             =   240
      Width           =   6375
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Combo1_Click()
comPort = Combo1.ListIndex + 1
End Sub


Private Sub Command1_Click()
Unload Me
ARM_Control.Show
End Sub

Private Sub Command3_Click()
Unload Me
Help.Show
End Sub

Private Sub Command4_Click()
Unload Me
About.Show
End Sub

Private Sub Command5_Click()
End
End Sub

Private Sub Command7_Click()
comPort = Combo1.ListIndex + 1
End Sub

Private Sub Form_Load()
Dim i As Integer
For i = 1 To 15
    Combo1.AddItem "COM " & i
Next
If comPort = 0 Then comPort = 1
Combo1.ListIndex = comPort - 1
End Sub

