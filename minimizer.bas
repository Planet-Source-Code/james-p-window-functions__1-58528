Attribute VB_Name = "Module1"
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" _
    (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Public Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function PostMessage Lib "user32" Alias "PostMessageA" _
    (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, _
    ByVal lParam As Long) As Long
    Public Const WM_CLOSE = &H10
    Public Const SW_HIDE = 0
    Public Const SW_MAXIMIZE = 3
    Public Const SW_SHOW = 5
    Public Const SW_MINIMIZE = 6


