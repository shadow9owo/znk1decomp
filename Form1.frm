VERSION 5.00
Begin VB.Form Form1
  Caption = " Pøeskoèit intro"
  MousePointer = 1 'Arrow
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "Form1.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = -450
  ClientTop = -450
  ClientWidth = 12000
  ClientHeight = 9000
  MouseIcon = "Form1.frx":2E82
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox zaèátek
    BackColor = &H80000007&
    Left = 0
    Top = 0
    Width = 12015
    Height = 9015
    TabIndex = 8
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Begin VB.Label popis
      Caption = "Martin 'Marty' Pohl uwádí hru"
      BackColor = &H80000007&
      ForeColor = &H8000000E&
      Left = 2400
      Top = 2880
      Width = 7335
      Height = 615
      TabIndex = 9
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 24
        Charset = 238
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.PictureBox Picture4
    Picture = "Form1.frx":5D04
    Left = 240
    Top = 360
    Width = 9795
    Height = 7020
    Visible = 0   'False
    TabIndex = 7
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox Picture3
    Picture = "Form1.frx":F6E4
    Left = 240
    Top = 360
    Width = 9795
    Height = 7020
    Visible = 0   'False
    TabIndex = 6
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox Picture2
    Picture = "Form1.frx":00018493
    Left = 240
    Top = 360
    Width = 9795
    Height = 7020
    Visible = 0   'False
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox Picture1
    Picture = "Form1.frx":000240CD
    Left = 240
    Top = 360
    Width = 9795
    Height = 7020
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Begin VB.Image Image1
      Left = 5400
      Top = 3360
      Width = 255
      Height = 495
    End
    Begin VB.Image okno
      Left = 8640
      Top = 4200
      Width = 375
      Height = 615
    End
  End
  Begin VB.Label text
    Caption = "Tak tohle je továrna ve který jsi až dodnes dìlal...."
    Left = 240
    Top = 7440
    Width = 7335
    Height = 1335
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 238
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label dál
    Caption = "Dál"
    BackColor = &H80000012&
    ForeColor = &H8000000E&
    Left = 10200
    Top = 2640
    Width = 1575
    Height = 255
    TabIndex = 3
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 238
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label pøeskoèit
    Caption = " Pøeskoèit intro"
    BackColor = &H80000012&
    ForeColor = &H8000000E&
    Left = 10200
    Top = 3000
    Width = 1575
    Height = 255
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 238
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = " X"
    BackColor = &H80000007&
    ForeColor = &HFFFFFF&
    Left = 11640
    Top = 120
    Width = 255
    Height = 255
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 238
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "Form1"

'VA: 43914C
Private Declare Function GetUserName Lib "advapi32" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 4390F0
Private Declare Function waveOutGetNumDevs Lib "winmm" () As Long
'VA: 4390A4
Private Declare Function sndPlaySound Lib "winmm" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long


Private Sub popis_Click() '6352B0
  If (Form1.popis.Caption = "Život Není Krásný") + 1 Then
    Form1.zaèátek.Visible = False
  End If
  If (Form1.popis.Caption = "Martin 'Marty' Pohl uwádí hru") + 1 Then
    Form1.popis.Caption = "Život Není Krásný"
  End If
  GoTo loc_00635458
  Exit Sub
  loc_00635458: 
End Sub

Private Sub zaèátek_Click() '6355C0
  If (Form1.popis.Caption = "Život Není Krásný") + 1 Then
    Form1.zaèátek.Visible = False
  End If
  If (Form1.popis.Caption = "Martin 'Marty' Pohl uwádí hru") + 1 Then
    Form1.popis.Caption = "Život Není Krásný"
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
  If (Form1.dál.Caption = "Pokracuj") + 1 Then
    Form1.text.Caption = ">chvilku strpení<"
  End If
  If (Form1.dál.Caption = "Pokracuj") + 1 Then
    Form2.Visible = True
  End If
  If (Form1.dál.Caption = "Pokracuj") + 1 Then
    Form1.Visible = False
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.Picture4.Visible = True
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.text.Caption = "A tohle seš ty, troska. Dneska ses rozhodl že s tím neco udeláš, ruplo ti v bedne a rekl sis, že se podíváš na tu šéfovu vilu a porádne ho zmasakruješ, slyšel si že je prý ukrutne bohatý (takže ho i okradeš). Chtelo by to nejakou zbran a samozrejme se tam musíš nejak dostat..."
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.dál.Caption = "Pokracuj"
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.pøeskoèit.Visible = False
  End If
  If (Form1.Picture3.Visible = True) Then
    Form1.Picture3.Visible = False
  End If
  If (Form1.Picture2.Visible = True) Then
    Form1.Picture3.Visible = True
  End If
  If (Form1.Picture2.Visible = True) Then
    Form1.text.Caption = "Zde, v tom luxusním sídle si ten tvuj bejvalej šéfik žije. I s tou tvojí bejvalou holkou."
  End If
  If (Form1.Picture2.Visible = True) Then
    Form1.Picture2.Visible = False
  End If
  If (Form1.Picture1.Visible = True) Then
    Form1.Picture2.Visible = True
  End If
  If (Form1.Picture1.Visible = True) Then
    Form1.text.Caption = "A tohle je tvuj bejvalej šéf. Peknej grázl, dneska te vykopnul a to si pro nej makal 15 let. A aby toho nebylo málo, pred dvema tejdnama k nemu odešla tvoje holka..."
  End If
  If (Form1.Picture1.Visible = True) Then
    Form1.Picture1.Visible = False
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
