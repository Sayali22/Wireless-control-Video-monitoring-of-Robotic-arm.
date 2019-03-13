VERSION 5.00
Object = "{6F2A8BEC-0B0A-4991-A21A-ED31E9C8005D}#30.0#0"; "mybutton.ocx"
Begin VB.Form About 
   Caption         =   "About"
   ClientHeight    =   8040
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6120
   LinkTopic       =   "Form1"
   ScaleHeight     =   8040
   ScaleWidth      =   6120
   StartUpPosition =   2  'CenterScreen
   Begin vbREGs.CommandButton CommandButton1 
      Height          =   615
      Left            =   2.45745e5
      TabIndex        =   3
      Top             =   3720
      Width           =   30
      _ExtentX        =   53
      _ExtentY        =   1085
      Caption         =   ""
   End
   Begin VB.Frame Frame1 
      Height          =   6015
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   5895
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
      Left            =   3840
      TabIndex        =   1
      Top             =   7200
      Width           =   2175
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "A B O U T"
      BeginProperty Font 
         Name            =   "Copperplate Gothic Bold"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   6015
   End
End
Attribute VB_Name = "About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
MainForm.Show
End Sub
