VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   " Pøeskoèit intro"
   ClientHeight    =   9000
   ClientLeft      =   -450
   ClientTop       =   -450
   ClientWidth     =   12000
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "Form1.frx":2E82
   MousePointer    =   1  'Arrow
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox zaèátek 
      BackColor       =   &H80000007&
      BorderStyle     =   0  'None
      Height          =   9015
      Left            =   0
      ScaleHeight     =   9015
      ScaleWidth      =   12015
      TabIndex        =   8
      Top             =   0
      Width           =   12015
      Begin VB.Label popis 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "Martin 'Marty' Pohl uwádí hru"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   24
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   615
         Left            =   2400
         TabIndex        =   9
         Top             =   2880
         Width           =   7335
      End
   End
   Begin VB.PictureBox Picture4 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form1.frx":5D04
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   7
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox Picture3 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form1.frx":F6E4
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   6
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox Picture2 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form1.frx":18493
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   5
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      FillStyle       =   0  'Solid
      Height          =   7020
      Left            =   240
      Picture         =   "Form1.frx":240CD
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   1
      Top             =   360
      Width           =   9795
      Begin VB.Image Image1 
         Height          =   495
         Left            =   5400
         Top             =   3360
         Width           =   255
      End
      Begin VB.Image okno 
         Height          =   615
         Left            =   8640
         Top             =   4200
         Width           =   375
      End
   End
   Begin VB.Label text 
      Caption         =   "Tak tohle je továrna ve který jsi až dodnes dìlal...."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   240
      TabIndex        =   4
      Top             =   7440
      Width           =   7335
   End
   Begin VB.Label dál 
      Alignment       =   2  'Center
      BackColor       =   &H80000012&
      Caption         =   "Dál"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   10200
      TabIndex        =   3
      Top             =   2640
      Width           =   1575
   End
   Begin VB.Label pøeskoèit 
      BackColor       =   &H80000012&
      Caption         =   " Pøeskoèit intro"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   10200
      TabIndex        =   2
      Top             =   3000
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      Caption         =   " X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   11640
      TabIndex        =   0
      Top             =   120
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'VA: 43914C
Private Declare Function GetUserName Lib "advapi32" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 4390F0
Private Declare Function waveOutGetNumDevs Lib "winmm" () As Long
'VA: 4390A4
Private Declare Function sndPlaySound Lib "winmm" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long


Private Sub popis_Click() '6352B0
  If (Form1.popis.Caption = "Život Není Krásný") Then
    Form1.zaèátek.Visible = False
    Exit Sub
  End If
  If (Form1.popis.Caption = "Martin 'Marty' Pohl uwádí hru") Then
    Form1.popis.Caption = "Život Není Krásný"
    Exit Sub
  End If
  GoTo loc_00635458
  Exit Sub
End Sub

Private Sub zaèátek_Click() '6355C0
  If (Form1.popis.Caption = "Život Není Krásný") Then
    Form1.zaèátek.Visible = False
    Exit Sub
  End If
  If (Form1.popis.Caption = "Martin 'Marty' Pohl uwádí hru") Then
    Form1.popis.Caption = "Život Není Krásný"
    Exit Sub
  End If
  GoTo loc_00635768
  Exit Sub
loc_00635768:
End Sub

Private Sub Form_Load() '635040

End Sub

Private Sub Image1_Click() '6350B0
  Form1.text.Caption = ">FUCK OFF<"
  GoTo loc_00635148
  Exit Sub
loc_00635148:
End Sub

Private Sub Label1_Click() '635170
  End
End Sub

Private Sub Okno_Click() '6351E0
  global_00648038 = 1
  Form1.text.Caption = ">BONUS MONEY<"
  GoTo loc_00635281
  Exit Sub
loc_00635281:
End Sub

Private Sub dál_Click() '6347A0
  If (Form1.dál.Caption = "Pokracuj") Then
    Form1.text.Caption = ">chvilku strpení<"
    Form2.Visible = True
    Form1.Visible = False
    Exit Sub
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.Picture4.Visible = True
    Form1.text.Caption = "A tohle seš ty, troska. Dneska ses rozhodl že s tím neco udeláš, ruplo ti v bedne a rekl sis, že se podíváš na tu šéfovu vilu a porádne ho zmasakruješ, slyšel si že je prý ukrutne bohatý (takže ho i okradeš). Chtelo by to nejakou zbran a samozrejme se tam musíš nejak dostat..."
    Form1.dál.Caption = "Pokracuj"
    Form1.pøeskoèit.Visible = False
    Form1.Picture3.Visible = False
    Exit Sub
  End If
  If (Form1.Picture2.Visible = True) Then
    Form1.Picture3.Visible = True
    Form1.text.Caption = "Zde, v tom luxusním sídle si ten tvuj bejvalej šéfik žije. I s tou tvojí bejvalou holkou."
    Form1.Picture2.Visible = False
    Exit Sub
  End If
  If (Form1.Picture1.Visible = True) Then
    Form1.Picture2.Visible = True
    Form1.text.Caption = "A tohle je tvuj bejvalej šéf. Peknej grázl, dneska te vykopnul a to si pro nej makal 15 let. A aby toho nebylo málo, pred dvema tejdnama k nemu odešla tvoje holka..."
    Form1.Picture1.Visible = False
    Exit Sub
  End If
  GoTo loc_00635020
  Exit Sub
loc_00635020:
End Sub

Private Sub pøeskoèit_Click() '635480
  Form1.text.Caption = ">chvilku strpení<"
  Form2.Visible = True
  Form1.Visible = False
  GoTo loc_0063559B
  Exit Sub
loc_0063559B:
End Sub
