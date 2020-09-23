VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "r2k.Minimizer"
   ClientHeight    =   2280
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4635
   LinkTopic       =   "Form1"
   ScaleHeight     =   2280
   ScaleWidth      =   4635
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "HELP"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   1680
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Credits"
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   480
      Top             =   600
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   375
      Left            =   3480
      TabIndex        =   5
      Top             =   1200
      Width           =   975
   End
   Begin VB.CommandButton cmdShow 
      Caption         =   "Show"
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton cmdHide 
      Caption         =   "Hide"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1200
      Width           =   975
   End
   Begin VB.CommandButton cmdMaximize 
      Caption         =   "Maximize"
      Height          =   375
      Left            =   3480
      TabIndex        =   2
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton cmdMinimize 
      Caption         =   "Minimize"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdHide_Click()
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_HIDE
End Sub

Private Sub cmdMaximize_Click()
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_MAXIMIZE
End Sub

Private Sub cmdMinimize_Click()
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_MINIMIZE
End Sub

Private Sub cmdShow_Click()
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_SHOW
End Sub

Private Sub Command1_Click()
Form2.Show
End Sub

Private Sub Command2_Click()
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, WM_CLOSE
End Sub

Private Sub Command3_Click()
Form3.Show
End Sub

Private Sub Form_Terminate()
MsgBox "Made by rav3n2k, visit http://compactgaming.net", vbOKOnly, "r2k"
End Sub

Private Sub Timer1_Timer()
If GetAsyncKeyState(vbKeyF1) Then  'minimize hotkey
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_MINIMIZE
End If
If GetAsyncKeyState(vbKeyF2) Then 'maximize hotkey
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_MAXIMIZE
End If
If GetAsyncKeyState(vbKeyF3) Then 'Hide hotkey
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_HIDE
End If
If GetAsyncKeyState(vbKeyF4) Then 'show hotkey
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, SW_SHOW
End If
If GetAsyncKeyState(vbKeyF5) Then 'Close Hotkey
r2k = FindWindow(vbNullString, Text1.Text)
ShowWindow r2k, WM_CLOSE
End If
End Sub
