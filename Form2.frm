VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   9000
   ClientLeft      =   225
   ClientTop       =   -450
   ClientWidth     =   12000
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "Form2.frx":2E82
   MousePointer    =   1  'Arrow
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Left            =   8760
      Top             =   7920
   End
   Begin VB.TextBox money 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   10440
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   840
      Width           =   1095
   End
   Begin VB.PictureBox lahev 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      DragMode        =   1  'Automatic
      Height          =   345
      Left            =   10200
      OLEDragMode     =   1  'Automatic
      OLEDropMode     =   2  'Automatic
      Picture         =   "Form2.frx":5D04
      ScaleHeight     =   345
      ScaleWidth      =   765
      TabIndex        =   4
      ToolTipText     =   "Rozbitá lahev"
      Top             =   2160
      Visible         =   0   'False
      Width           =   765
   End
   Begin VB.PictureBox inventáø 
      BackColor       =   &H80000009&
      Height          =   6855
      Left            =   10080
      ScaleHeight     =   6795
      ScaleWidth      =   1755
      TabIndex        =   3
      Top             =   2040
      Width           =   1815
      Begin VB.PictureBox klíè 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   180
         Left            =   120
         Picture         =   "Form2.frx":60E5
         ScaleHeight     =   180
         ScaleWidth      =   405
         TabIndex        =   67
         ToolTipText     =   "Záhadný klíèek"
         Top             =   4080
         Visible         =   0   'False
         Width           =   405
      End
      Begin VB.PictureBox atomovkaI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   795
         Left            =   120
         Picture         =   "Form2.frx":6468
         ScaleHeight     =   795
         ScaleWidth      =   795
         TabIndex        =   52
         ToolTipText     =   "ATOMOVKA"
         Top             =   5880
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.PictureBox PistoleII 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   390
         Left            =   720
         Picture         =   "Form2.frx":6878
         ScaleHeight     =   390
         ScaleWidth      =   1005
         TabIndex        =   51
         ToolTipText     =   "Pistole s tlumièem"
         Top             =   4200
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.PictureBox tlumiè 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   780
         Left            =   360
         Picture         =   "Form2.frx":6C49
         ScaleHeight     =   780
         ScaleWidth      =   225
         TabIndex        =   50
         ToolTipText     =   "Tlumiè"
         Top             =   4440
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.PictureBox BrokovniceI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   1080
         Left            =   720
         Picture         =   "Form2.frx":700F
         ScaleHeight     =   1080
         ScaleWidth      =   1020
         TabIndex        =   49
         ToolTipText     =   "Brokovnice"
         Top             =   5400
         Visible         =   0   'False
         Width           =   1020
      End
      Begin VB.PictureBox pistoleI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   1035
         Left            =   960
         Picture         =   "Form2.frx":7493
         ScaleHeight     =   1035
         ScaleWidth      =   750
         TabIndex        =   48
         ToolTipText     =   "Pistole"
         Top             =   4320
         Visible         =   0   'False
         Width           =   750
      End
      Begin VB.PictureBox pas 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   420
         Left            =   960
         Picture         =   "Form2.frx":78B3
         ScaleHeight     =   420
         ScaleWidth      =   660
         TabIndex        =   41
         ToolTipText     =   "Zbrojní pas"
         Top             =   120
         Visible         =   0   'False
         Width           =   660
      End
      Begin VB.PictureBox baterka 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   375
         Left            =   480
         Picture         =   "Form2.frx":7CBA
         ScaleHeight     =   375
         ScaleWidth      =   915
         TabIndex        =   40
         ToolTipText     =   "Neufnkèní Baterka"
         Top             =   600
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.PictureBox KufrI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   870
         Left            =   720
         Picture         =   "Form2.frx":80AE
         ScaleHeight     =   870
         ScaleWidth      =   1095
         TabIndex        =   36
         ToolTipText     =   "Prázdnej kuføík"
         Top             =   3240
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.PictureBox rukaviceI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   840
         Picture         =   "Form2.frx":84E9
         ScaleHeight     =   735
         ScaleWidth      =   945
         TabIndex        =   35
         ToolTipText     =   "Rukavice"
         Top             =   2400
         Visible         =   0   'False
         Width           =   945
      End
      Begin VB.PictureBox kleštìI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   885
         Left            =   120
         Picture         =   "Form2.frx":898D
         ScaleHeight     =   885
         ScaleWidth      =   750
         TabIndex        =   34
         ToolTipText     =   "Štípaèky"
         Top             =   2280
         Visible         =   0   'False
         Width           =   750
      End
      Begin VB.PictureBox Kámen 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   375
         Left            =   0
         Picture         =   "Form2.frx":8DFA
         ScaleHeight     =   375
         ScaleWidth      =   615
         TabIndex        =   25
         ToolTipText     =   "Obyèejnej kámen"
         Top             =   3480
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.PictureBox zápalkyI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   390
         Left            =   480
         Picture         =   "Form2.frx":91B6
         ScaleHeight     =   390
         ScaleWidth      =   720
         TabIndex        =   20
         ToolTipText     =   "Zápalky"
         Top             =   1800
         Visible         =   0   'False
         Width           =   720
      End
      Begin VB.PictureBox whiskeyI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   570
         Left            =   600
         Picture         =   "Form2.frx":95C1
         ScaleHeight     =   570
         ScaleWidth      =   510
         TabIndex        =   19
         ToolTipText     =   "Whiskey"
         Top             =   1080
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.PictureBox PivoI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   1005
         Left            =   120
         Picture         =   "Form2.frx":99D1
         ScaleHeight     =   1005
         ScaleWidth      =   285
         TabIndex        =   18
         ToolTipText     =   "Pivo"
         Top             =   960
         Visible         =   0   'False
         Width           =   285
      End
      Begin VB.PictureBox absinthI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   795
         Left            =   1320
         Picture         =   "Form2.frx":9E16
         ScaleHeight     =   795
         ScaleWidth      =   345
         TabIndex        =   17
         ToolTipText     =   "Absinth"
         Top             =   960
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.PictureBox baterky 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         DragMode        =   1  'Automatic
         Height          =   240
         Left            =   1200
         Picture         =   "Form2.frx":A222
         ScaleHeight     =   240
         ScaleWidth      =   435
         TabIndex        =   11
         ToolTipText     =   "Baterky"
         Top             =   2040
         Visible         =   0   'False
         Width           =   435
      End
   End
   Begin VB.PictureBox Armyshop 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":A5AF
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   42
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox kamen 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   480
         MouseIcon       =   "Form2.frx":17150
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":19FD2
         ScaleHeight     =   375
         ScaleWidth      =   615
         TabIndex        =   46
         ToolTipText     =   "Sebrat kámen"
         Top             =   4180
         Width           =   615
      End
      Begin VB.PictureBox atomovka 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   885
         Left            =   7340
         MouseIcon       =   "Form2.frx":1A38E
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":1D210
         ScaleHeight     =   885
         ScaleWidth      =   2100
         TabIndex        =   45
         ToolTipText     =   "Chlapeèek - 500.000KÈ"
         Top             =   3600
         Width           =   2100
      End
      Begin VB.PictureBox Brokovnice 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1725
         Left            =   780
         MouseIcon       =   "Form2.frx":1D7CC
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":2064E
         ScaleHeight     =   1725
         ScaleWidth      =   1710
         TabIndex        =   44
         ToolTipText     =   "Kup brokovnici - 12.000Kè"
         Top             =   360
         Width           =   1710
      End
      Begin VB.PictureBox pistole 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1230
         Left            =   10
         MouseIcon       =   "Form2.frx":20C8E
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":23B10
         ScaleHeight     =   1230
         ScaleWidth      =   765
         TabIndex        =   43
         ToolTipText     =   "Kup pistoli - 6.000 KÈ"
         Top             =   360
         Width           =   765
      End
      Begin VB.Image Image11 
         DragIcon        =   "Form2.frx":23F96
         Height          =   3855
         Left            =   2520
         MouseIcon       =   "Form2.frx":26E18
         MousePointer    =   99  'Custom
         ToolTipText     =   "Pokecat s prodavaèem"
         Top             =   720
         Width           =   3975
      End
      Begin VB.Image Image10 
         Height          =   855
         Left            =   1080
         MouseIcon       =   "Form2.frx":29C9A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   6240
         Width           =   4215
      End
      Begin VB.Image Image9 
         Height          =   1935
         Left            =   6600
         MouseIcon       =   "Form2.frx":2CB1C
         MousePointer    =   99  'Custom
         ToolTipText     =   "Motorová Pila"
         Top             =   480
         Width           =   2055
      End
   End
   Begin VB.PictureBox ulièka 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":2F99E
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   37
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox TypMRTVEJ 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1440
         Left            =   1560
         MouseIcon       =   "Form2.frx":3800F
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":3AE91
         ScaleHeight     =   1440
         ScaleWidth      =   5985
         TabIndex        =   39
         ToolTipText     =   "Prohledat typa"
         Top             =   5280
         Visible         =   0   'False
         Width           =   5985
      End
      Begin VB.PictureBox typ 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   5490
         Left            =   3120
         MouseIcon       =   "Form2.frx":3EF32
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":41DB4
         ScaleHeight     =   5490
         ScaleWidth      =   2445
         TabIndex        =   38
         ToolTipText     =   "Prohlídni týpka"
         Top             =   1530
         Width           =   2445
      End
      Begin VB.Image icp 
         Height          =   855
         Left            =   6240
         MouseIcon       =   "Form2.frx":45E4E
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídni ICP"
         Top             =   4200
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Image vesmír 
         Height          =   1455
         Left            =   120
         MouseIcon       =   "Form2.frx":48CD0
         MousePointer    =   99  'Custom
         ToolTipText     =   "Rozlušti èáry"
         Top             =   3480
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Image surmaj 
         Height          =   1215
         Left            =   8040
         MouseIcon       =   "Form2.frx":4BB52
         MousePointer    =   99  'Custom
         ToolTipText     =   "Rozlušti tag"
         Top             =   1200
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Image Image8 
         Height          =   1455
         Left            =   0
         MouseIcon       =   "Form2.frx":4E9D4
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   5640
         Width           =   1575
      End
      Begin VB.Image Image7 
         Height          =   1695
         Left            =   6120
         MouseIcon       =   "Form2.frx":51856
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídnout falický symbol"
         Top             =   1560
         Width           =   1215
      End
   End
   Begin VB.PictureBox obchodIN 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":546D8
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   26
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox ProdavaèDEATH 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1170
         Left            =   1740
         MouseIcon       =   "Form2.frx":5E0F5
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":60F77
         ScaleHeight     =   1170
         ScaleWidth      =   2070
         TabIndex        =   33
         Top             =   5200
         Visible         =   0   'False
         Width           =   2070
      End
      Begin VB.PictureBox sklo2 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1230
         Left            =   3360
         Picture         =   "Form2.frx":64502
         ScaleHeight     =   1230
         ScaleWidth      =   1635
         TabIndex        =   32
         Top             =   120
         Visible         =   0   'False
         Width           =   1635
      End
      Begin VB.PictureBox ProdavaèLOOK 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2280
         Left            =   4080
         MouseIcon       =   "Form2.frx":66DFE
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":69C80
         ScaleHeight     =   2280
         ScaleWidth      =   2700
         TabIndex        =   31
         ToolTipText     =   "Mrkni na nìj"
         Top             =   480
         Visible         =   0   'False
         Width           =   2700
      End
      Begin VB.PictureBox kufr 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1185
         Left            =   600
         MouseIcon       =   "Form2.frx":6CC89
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":6FB0B
         ScaleHeight     =   1185
         ScaleWidth      =   1245
         TabIndex        =   30
         ToolTipText     =   "Kup kuføík 13.000 KÈ"
         Top             =   3805
         Width           =   1245
      End
      Begin VB.PictureBox rukavice 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   1490
         MouseIcon       =   "Form2.frx":7004E
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":72ED0
         ScaleHeight     =   735
         ScaleWidth      =   795
         TabIndex        =   29
         ToolTipText     =   "Kup speciální rukavice 5.000 KÈ"
         Top             =   1840
         Width           =   795
      End
      Begin VB.PictureBox kleštì 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   870
         Left            =   840
         MouseIcon       =   "Form2.frx":7339A
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":7621C
         ScaleHeight     =   870
         ScaleWidth      =   645
         TabIndex        =   28
         ToolTipText     =   "kup kleštì 500KÈ"
         Top             =   2080
         Width           =   645
      End
      Begin VB.PictureBox prodavaè 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2280
         Left            =   4080
         MouseIcon       =   "Form2.frx":76687
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":79509
         ScaleHeight     =   2280
         ScaleWidth      =   2700
         TabIndex        =   27
         ToolTipText     =   "Promluv s prodavaèem"
         Top             =   470
         Width           =   2700
      End
      Begin VB.Image Image6 
         Height          =   4935
         Left            =   8760
         MouseIcon       =   "Form2.frx":7C52A
         MousePointer    =   99  'Custom
         Top             =   240
         Width           =   1095
      End
      Begin VB.Image kameros 
         Height          =   735
         Left            =   7800
         MouseIcon       =   "Form2.frx":7F3AC
         MousePointer    =   99  'Custom
         ToolTipText     =   "Èumni na kaméru"
         Top             =   0
         Width           =   855
      End
   End
   Begin VB.PictureBox Obchod 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":8222E
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   23
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox sklo1 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1230
         Left            =   4560
         Picture         =   "Form2.frx":89E8D
         ScaleHeight     =   1230
         ScaleWidth      =   1635
         TabIndex        =   24
         ToolTipText     =   "Díra"
         Top             =   360
         Visible         =   0   'False
         Width           =   1635
      End
      Begin VB.Image odejít 
         Height          =   615
         Left            =   0
         MouseIcon       =   "Form2.frx":8C789
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít pryè"
         Top             =   6480
         Width           =   8655
      End
      Begin VB.Image dovnitø 
         Height          =   4815
         Left            =   0
         MouseIcon       =   "Form2.frx":8F60B
         MousePointer    =   99  'Custom
         ToolTipText     =   "Vejít do obchodu"
         Top             =   0
         Width           =   1335
      End
      Begin VB.Image Doulièky 
         Height          =   4335
         Left            =   7920
         MouseIcon       =   "Form2.frx":9248D
         MousePointer    =   99  'Custom
         ToolTipText     =   "Vejdi do malé ulièky"
         Top             =   0
         Width           =   1935
      End
      Begin VB.Image výloha 
         Height          =   4455
         Left            =   2040
         MouseIcon       =   "Form2.frx":9530F
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlédni Výlohu"
         Top             =   0
         Width           =   4335
      End
   End
   Begin VB.PictureBox HospodaIN 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":98191
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   12
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox èíšníkubodán 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   3390
         Left            =   2470
         MouseIcon       =   "Form2.frx":A08B7
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":A3739
         ScaleHeight     =   3390
         ScaleWidth      =   4020
         TabIndex        =   21
         ToolTipText     =   "Prohlídnout èíšu"
         Top             =   960
         Visible         =   0   'False
         Width           =   4020
      End
      Begin VB.PictureBox absinth 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1350
         Left            =   8040
         MouseIcon       =   "Form2.frx":AC922
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":AF7A4
         ScaleHeight     =   1350
         ScaleWidth      =   615
         TabIndex        =   16
         ToolTipText     =   "Absinth - 360Kè"
         Top             =   2280
         Width           =   615
      End
      Begin VB.PictureBox whiskey 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   960
         Left            =   7080
         MouseIcon       =   "Form2.frx":AFC84
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":B2B06
         ScaleHeight     =   960
         ScaleWidth      =   810
         TabIndex        =   15
         ToolTipText     =   "Whiskey - 500Kè"
         Top             =   2640
         Width           =   810
      End
      Begin VB.PictureBox pivo 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1455
         Left            =   6600
         MouseIcon       =   "Form2.frx":B2FE9
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":B5E6B
         ScaleHeight     =   1455
         ScaleWidth      =   405
         TabIndex        =   14
         ToolTipText     =   "Pivo - 12Kè"
         Top             =   2160
         Width           =   405
      End
      Begin VB.PictureBox zápalky 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   960
         MouseIcon       =   "Form2.frx":B636A
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":B91EC
         ScaleHeight     =   375
         ScaleWidth      =   615
         TabIndex        =   13
         ToolTipText     =   "Seber zápalky"
         Top             =   4560
         Width           =   615
      End
      Begin VB.Image doROOM 
         Height          =   3615
         Left            =   360
         MouseIcon       =   "Form2.frx":B95F7
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jít do tajných dveøí"
         Top             =   600
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.Image Image5 
         Height          =   495
         Left            =   0
         MouseIcon       =   "Form2.frx":BC479
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít z hospody"
         Top             =   6600
         Width           =   9855
      End
      Begin VB.Image èíšník 
         Height          =   3495
         Left            =   2520
         MouseIcon       =   "Form2.frx":BF2FB
         MousePointer    =   99  'Custom
         ToolTipText     =   "Promluv s èíšou"
         Top             =   840
         Width           =   3975
      End
   End
   Begin VB.PictureBox hospoda 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":C217D
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   10
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.Image Image4 
         Height          =   4095
         Left            =   3240
         MouseIcon       =   "Form2.frx":CBFD4
         MousePointer    =   99  'Custom
         ToolTipText     =   "Vejít do hospody"
         Top             =   2640
         Width           =   2535
      End
      Begin VB.Image Image3 
         Height          =   1215
         Left            =   6720
         MouseIcon       =   "Form2.frx":CEE56
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   5880
         Width           =   3135
      End
      Begin VB.Image Okno 
         Height          =   2055
         Left            =   6960
         MouseIcon       =   "Form2.frx":D1CD8
         MousePointer    =   99  'Custom
         ToolTipText     =   "Podívat se oknem dovnitø"
         Top             =   2640
         Width           =   2655
      End
      Begin VB.Image nápis 
         Height          =   1095
         Left            =   1320
         MouseIcon       =   "Form2.frx":D4B5A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídni ceduli"
         Top             =   360
         Width           =   7095
      End
      Begin VB.Image batérky 
         Height          =   240
         Left            =   600
         MouseIcon       =   "Form2.frx":D79DC
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":DA85E
         ToolTipText     =   "Sebrat baterky"
         Top             =   6720
         Width           =   435
      End
   End
   Begin VB.PictureBox ulice 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":DABEB
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   1
      Top             =   360
      Width           =   9795
      Begin VB.PictureBox láhev 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   600
         Left            =   1080
         MouseIcon       =   "Form2.frx":E70A0
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":E9F22
         ScaleHeight     =   600
         ScaleWidth      =   840
         TabIndex        =   5
         ToolTipText     =   "Sebrat lahev"
         Top             =   5880
         Width           =   840
      End
      Begin VB.Image Image1 
         Height          =   5055
         Left            =   0
         MouseIcon       =   "Form2.frx":EBB44
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   480
         Width           =   1335
      End
      Begin VB.Image tulákubodán 
         Height          =   4785
         Left            =   3000
         MouseIcon       =   "Form2.frx":EE9C6
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":F1848
         ToolTipText     =   "Prohledat tuláka"
         Top             =   2160
         Visible         =   0   'False
         Width           =   4950
      End
      Begin VB.Image Image2 
         Height          =   1935
         Left            =   6000
         MouseIcon       =   "Form2.frx":FB17C
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídnout tagy"
         Top             =   480
         Width           =   3735
      End
      Begin VB.Image tulák 
         Height          =   4695
         Left            =   3000
         MouseIcon       =   "Form2.frx":FDFFE
         MousePointer    =   99  'Custom
         ToolTipText     =   "Promluvit s tulákem"
         Top             =   2280
         Width           =   4935
      End
   End
   Begin VB.PictureBox policie 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":100E80
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   22
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox mapa 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":107AFF
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   9
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.Image dùmGO 
         Height          =   855
         Left            =   480
         MouseIcon       =   "Form2.frx":10E572
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi do šéfova domu"
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label skrývaè 
         BackColor       =   &H80000007&
         Height          =   1695
         Left            =   5640
         TabIndex        =   47
         Top             =   360
         Width           =   3615
      End
      Begin VB.Image armyshopGO 
         Height          =   975
         Left            =   5880
         MouseIcon       =   "Form2.frx":1113F4
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi do obchodu se zbranìma"
         Top             =   600
         Width           =   3015
      End
      Begin VB.Image obchodGO 
         Height          =   1215
         Left            =   4080
         MouseIcon       =   "Form2.frx":114276
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi do obchodu"
         Top             =   2520
         Width           =   2055
      End
      Begin VB.Image hospodaGO 
         Height          =   855
         Left            =   1560
         MouseIcon       =   "Form2.frx":1170F8
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi do hospody"
         Top             =   4080
         Width           =   1935
      End
      Begin VB.Image uliceGO 
         Height          =   855
         Left            =   5880
         MouseIcon       =   "Form2.frx":119F7A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi na ulici"
         Top             =   5400
         Width           =   1935
      End
   End
   Begin VB.PictureBox výbuch 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      MouseIcon       =   "Form2.frx":11CDFC
      MousePointer    =   99  'Custom
      Picture         =   "Form2.frx":11FC7E
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   74
      ToolTipText     =   "atomový høib"
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox tajnámístnost 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":128D2F
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   69
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox adolfI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1395
         Left            =   6360
         MouseIcon       =   "Form2.frx":13595D
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":1387DF
         ScaleHeight     =   1395
         ScaleWidth      =   1905
         TabIndex        =   73
         ToolTipText     =   "Mrkni na Hitlera"
         Top             =   1560
         Visible         =   0   'False
         Width           =   1905
      End
      Begin VB.PictureBox josefI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1500
         Left            =   4080
         MouseIcon       =   "Form2.frx":13BCE7
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":13EB69
         ScaleHeight     =   1500
         ScaleWidth      =   1005
         TabIndex        =   72
         ToolTipText     =   "Mrkni na Stalina"
         Top             =   1680
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.PictureBox PoklopSPECIAL 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   8640
         MouseIcon       =   "Form2.frx":141514
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":144396
         ScaleHeight     =   735
         ScaleWidth      =   1170
         TabIndex        =   71
         ToolTipText     =   "Koukni na poklop"
         Top             =   3840
         Width           =   1170
      End
      Begin VB.PictureBox fidelI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1695
         Left            =   840
         MouseIcon       =   "Form2.frx":144792
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":147614
         ScaleHeight     =   1695
         ScaleWidth      =   1395
         TabIndex        =   70
         ToolTipText     =   "Mrkni na Kastra"
         Top             =   720
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.Image Tlaèítko 
         Height          =   735
         Left            =   8640
         MouseIcon       =   "Form2.frx":14A736
         MousePointer    =   99  'Custom
         ToolTipText     =   "Zmáèkni èudlík"
         Top             =   4080
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Image Adolf 
         Height          =   4695
         Left            =   6720
         MouseIcon       =   "Form2.frx":14D5B8
         MousePointer    =   99  'Custom
         ToolTipText     =   "Èumni na adolfa"
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Image Josef 
         Height          =   3855
         Left            =   3960
         MouseIcon       =   "Form2.frx":15043A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídni Josefa"
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Image Fidel 
         Height          =   4695
         Left            =   840
         MouseIcon       =   "Form2.frx":1532BC
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídni Fidela"
         Top             =   720
         Width           =   1455
      End
      Begin VB.Image vobraZ 
         Height          =   1575
         Left            =   2520
         MouseIcon       =   "Form2.frx":15613E
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídni listinu"
         Top             =   240
         Width           =   1335
      End
      Begin VB.Image Image19 
         Height          =   615
         Left            =   0
         MouseIcon       =   "Form2.frx":158FC0
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít zpìt do hospody"
         Top             =   6480
         Width           =   9855
      End
   End
   Begin VB.PictureBox pláž 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      MouseIcon       =   "Form2.frx":15BE42
      MousePointer    =   99  'Custom
      Picture         =   "Form2.frx":15ECC4
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   68
      ToolTipText     =   "KONEC"
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
   End
   Begin VB.PictureBox konec 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":1699A8
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   76
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.Label Label3 
         BackColor       =   &H80000007&
         Caption         =   "mì"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   6960
         TabIndex        =   77
         Top             =   6000
         Width           =   255
      End
   End
   Begin VB.PictureBox vchod 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":173382
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   55
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox Dveøe 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   6105
         Left            =   2585
         MouseIcon       =   "Form2.frx":178689
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":17B50B
         ScaleHeight     =   6105
         ScaleWidth      =   3825
         TabIndex        =   56
         ToolTipText     =   "Zamèené Dveøe"
         Top             =   590
         Width           =   3825
      End
      Begin VB.Image pryè 
         Height          =   495
         Left            =   0
         MouseIcon       =   "Form2.frx":17BDBC
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jít pryè"
         Top             =   6720
         Width           =   9855
      End
      Begin VB.Image Image15 
         Height          =   255
         Left            =   6960
         MouseIcon       =   "Form2.frx":17EC3E
         MousePointer    =   99  'Custom
         ToolTipText     =   "Zazvoò na zvonek"
         Top             =   2280
         Width           =   615
      End
      Begin VB.Image vejít 
         Height          =   6015
         Left            =   2640
         MouseIcon       =   "Form2.frx":181AC0
         MousePointer    =   99  'Custom
         Top             =   600
         Width           =   3735
      End
   End
   Begin VB.PictureBox Ložnice 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":184942
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   62
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox ženaSHOTGUN 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2385
         Left            =   5640
         MouseIcon       =   "Form2.frx":190BB5
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":193A37
         ScaleHeight     =   2385
         ScaleWidth      =   2865
         TabIndex        =   66
         ToolTipText     =   "Puzzle"
         Top             =   690
         Visible         =   0   'False
         Width           =   2865
      End
      Begin VB.PictureBox šéfSHOTGUN 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2610
         Left            =   2040
         MouseIcon       =   "Form2.frx":194AB3
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":197935
         ScaleHeight     =   2610
         ScaleWidth      =   2865
         TabIndex        =   65
         ToolTipText     =   "Šéfova rozstøelená hlava"
         Top             =   750
         Visible         =   0   'False
         Width           =   2865
      End
      Begin VB.PictureBox ženaGUN 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2205
         Left            =   5640
         MouseIcon       =   "Form2.frx":198D88
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":19BC0A
         ScaleHeight     =   2205
         ScaleWidth      =   3120
         TabIndex        =   64
         ToolTipText     =   "Mrtvola tvý bejvalý holky"
         Top             =   960
         Visible         =   0   'False
         Width           =   3120
      End
      Begin VB.PictureBox šéfGUN 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   3645
         Left            =   1440
         MouseIcon       =   "Form2.frx":19CFC2
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":19FE44
         ScaleHeight     =   3645
         ScaleWidth      =   3585
         TabIndex        =   63
         ToolTipText     =   "Mrtvola tvýho šéfa"
         Top             =   800
         Visible         =   0   'False
         Width           =   3585
      End
      Begin VB.Image Image18 
         Height          =   855
         Left            =   0
         MouseIcon       =   "Form2.frx":1A188A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   6240
         Width           =   9855
      End
      Begin VB.Image Žena 
         Height          =   1935
         Left            =   5880
         MouseIcon       =   "Form2.frx":1A470C
         MousePointer    =   99  'Custom
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Image šéf 
         Height          =   2295
         Left            =   2280
         MouseIcon       =   "Form2.frx":1A758E
         MousePointer    =   99  'Custom
         ToolTipText     =   "Prohlídnout šéfa"
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Image Image17 
         Height          =   855
         Left            =   240
         MouseIcon       =   "Form2.frx":1AA410
         MousePointer    =   99  'Custom
         ToolTipText     =   "Brejle"
         Top             =   1440
         Width           =   495
      End
   End
   Begin VB.PictureBox Poklopec 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":1AD292
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   58
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.PictureBox Koberec 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   3180
         Left            =   2280
         MouseIcon       =   "Form2.frx":1B1051
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":1B3ED3
         ScaleHeight     =   3180
         ScaleWidth      =   4815
         TabIndex        =   61
         ToolTipText     =   "Podivný koberec"
         Top             =   1320
         Width           =   4815
      End
      Begin VB.PictureBox Poklop 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   3075
         Left            =   3050
         MouseIcon       =   "Form2.frx":1B4F2B
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":1B7DAD
         ScaleHeight     =   3075
         ScaleWidth      =   2820
         TabIndex        =   60
         ToolTipText     =   "Zamèený poklop"
         Top             =   1320
         Width           =   2820
      End
      Begin VB.PictureBox PenízeI 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   3090
         Left            =   3050
         MouseIcon       =   "Form2.frx":1B8444
         MousePointer    =   99  'Custom
         Picture         =   "Form2.frx":1BB2C6
         ScaleHeight     =   3090
         ScaleWidth      =   2820
         TabIndex        =   59
         ToolTipText     =   "!!! PRACHY !!!"
         Top             =   1320
         Visible         =   0   'False
         Width           =   2820
      End
      Begin VB.Image Image16 
         Height          =   1215
         Left            =   -120
         MouseIcon       =   "Form2.frx":1BC6AB
         MousePointer    =   99  'Custom
         ToolTipText     =   "Vrátit se"
         Top             =   5880
         Width           =   9975
      End
   End
   Begin VB.PictureBox Uvnitø 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":1BF52D
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   57
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.Image doložnice 
         Height          =   975
         Left            =   4560
         MouseIcon       =   "Form2.frx":1CC3C4
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jdi do ložníce"
         Top             =   0
         Width           =   1575
      End
      Begin VB.Image kpoklopu 
         Height          =   3255
         Left            =   7680
         MouseIcon       =   "Form2.frx":1CF246
         MousePointer    =   99  'Custom
         ToolTipText     =   "Jít za zeï"
         Top             =   2160
         Width           =   735
      End
      Begin VB.Image leave 
         Height          =   495
         Left            =   0
         MouseIcon       =   "Form2.frx":1D20C8
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít ven"
         Top             =   6600
         Width           =   9855
      End
      Begin VB.Image skrytoš 
         Height          =   495
         Left            =   3240
         MouseIcon       =   "Form2.frx":1D4F4A
         MousePointer    =   99  'Custom
         ToolTipText     =   "Skrytá Kamera"
         Top             =   840
         Width           =   375
      End
   End
   Begin VB.PictureBox dùm 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7020
      Left            =   240
      Picture         =   "Form2.frx":1D7DCC
      ScaleHeight     =   7020
      ScaleWidth      =   9795
      TabIndex        =   53
      Top             =   360
      Visible         =   0   'False
      Width           =   9795
      Begin VB.Label tma 
         BackColor       =   &H80000008&
         Caption         =   "Label3"
         Height          =   855
         Left            =   0
         MouseIcon       =   "Form2.frx":1E820D
         MousePointer    =   99  'Custom
         TabIndex        =   54
         ToolTipText     =   "Tma"
         Top             =   240
         Width           =   9855
      End
      Begin VB.Image Image14 
         Height          =   855
         Left            =   0
         MouseIcon       =   "Form2.frx":1EB08F
         MousePointer    =   99  'Custom
         ToolTipText     =   "Pøelézt zeï"
         Top             =   240
         Width           =   9855
      End
      Begin VB.Image Image13 
         Height          =   495
         Left            =   0
         MouseIcon       =   "Form2.frx":1EDF11
         MousePointer    =   99  'Custom
         ToolTipText     =   "Odejít"
         Top             =   6600
         Width           =   9855
      End
      Begin VB.Image Image12 
         Height          =   735
         Left            =   4440
         MouseIcon       =   "Form2.frx":1F0D93
         MousePointer    =   99  'Custom
         ToolTipText     =   "tag"
         Top             =   4800
         Width           =   1095
      End
   End
   Begin VB.Label help 
      Alignment       =   2  'Center
      BackColor       =   &H80000008&
      Caption         =   " HELP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   8160
      TabIndex        =   75
      ToolTipText     =   "Pomoc"
      Top             =   7560
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Inventáø"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   10560
      TabIndex        =   8
      Top             =   1560
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   10080
      X2              =   11880
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Label Label2 
      Caption         =   "Peníze"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   10560
      TabIndex        =   6
      Top             =   480
      Width           =   735
   End
   Begin VB.Label text 
      Caption         =   "Stojíš na ulici, na zemí se válí nìjakej zkurvenej tulák"
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
      Left            =   360
      TabIndex        =   2
      Top             =   7440
      Width           =   7575
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
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" ( _
    ByVal lpszSoundName As String, _
    ByVal uFlags As Long) As Long
    
Public moneylong As Long

Private Sub pivo_Click() '63FC80
  Form2.pivo.Visible = False
  Form2.PivoI.Visible = True
  If global_58 = 1 Then
    Form2.text.Caption = "Za 12Kc sis koupil jedno pifko"
    If global_58 = 1 Then
      moneylong = CStr((moneylong - 12))
    End If
  End If
  If global_58 = 0 Then
    Form2.text.Caption = "Vzal sis pivo"
  End If
  GoTo loc_0063FE49
  Exit Sub
loc_0063FE49:
End Sub

Private Sub armyshopGO_Click() '636480
  Form2.Armyshop.Visible = True
  Form2.mapa.Visible = False
  Form2.text.Caption = "Vešel jsi do obchodu se zbranemi, všude po stenách visí zbrane a na pultu vidíš dokonce jadernou hlavici"
  GoTo loc_0063659A
  Exit Sub
loc_0063659A:
End Sub

Private Sub hospodaGO_Click() '639AD0
  Form2.mapa.Visible = False
  Form2.hospoda.Visible = True
  Form2.text.Caption = "Stojíš pred hospodou u dvou hlav"
  GoTo loc_00639BEA
  Exit Sub
loc_00639BEA:
End Sub

Private Sub Dveøe_Click() '638D00
  Form2.Dveøe.Visible = False
  If (Form2.rukaviceI.Visible = 0) Then
    global_64 = 2
  End If
  If (Form2.rukaviceI.Visible = True) Then
    global_64 = 1
  End If
  Form2.text.Caption = "No, tak nejsou tak zamcený jak vypadali... mužeš vejít"
  GoTo loc_00638E90
  Exit Sub
loc_00638E90:
End Sub

Private Sub ProdavaèDEATH_Click() '640D20
  Form2.text.Caption = "Jen tam tak leží..mrtev"
  GoTo loc_00640DB8
  Exit Sub
loc_00640DB8:
End Sub

Private Sub josefI_Click() '63D140
  Form2.text.Caption = "Jen si loknul tá whiskey a už je vysmátej!"
  GoTo loc_0063D1D8
  Exit Sub
loc_0063D1D8:
End Sub

Private Sub Josef_Click() '63C910
  Form2.text.Caption = "Josef Stalin. Vypadá dost nasrane"
  GoTo loc_0063C9A8
  Exit Sub
loc_0063C9A8:
End Sub

Private Sub Josef_DragDrop(Source As Control, X As Single, Y As Single) '63C9D0
  Set Me = Form2.whiskeyI(var_28)
  var_60 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 3)) Then
    Form2.PoklopSPECIAL.PictureBox.Visible = False
  End If
  Set 0 = Form2.whiskeyI(var_28)
  var_60 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 3)) Then
    Form2.Tlaèítko.PictureBox.Height = NAN
  End If
  Set 0 = Form2.whiskeyI(var_28)
  var_60 = (global_70 = 2)
  Set  = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 2)) Then
    global_70 = 3
  End If
  Set 0 = Form2.whiskeyI.PictureBox(var_28)
  var_60 = (global_70 = 1)
  Set  = Source()
  If CBool((var_38 = var_28) And (global_70 = 1)) Then
    global_70 = 2
  End If
  Set  = Form2.whiskeyI.PictureBox(var_28)
  var_60 = (global_70 = 0)
  Set  = Source()
  If CBool((var_38 = var_28) And (global_70 = 0)) Then
    global_70 = 1
  End If
  Set  = Form2.whiskeyI.PictureBox(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.josefI.PictureBox.Visible = True
  End If
  Set  = Form2.whiskeyI(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.text.PictureBox.BackColor = "To bylo to pravý!"
  End If
  Set  = Form2.whiskeyI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.Josef.PictureBox.Height = 0
  End If
  Set  = Form2.whiskeyI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.whiskeyI.PictureBox.Visible = False
  End If
  GoTo loc_0063D11A
  Exit Sub
loc_0063D11A:
End Sub

Private Sub kamen_Click() '63D200
  Form2.kamen.Visible = False
  Form2.Kámen.Visible = True
  Form2.text.Caption = "Sebral si kámen, muže se hodit"
  GoTo loc_0063D31A
  Exit Sub
loc_0063D31A:
End Sub

Private Sub kamen_DragDrop(Source As Control, X As Single, Y As Single) '63D340
  Set Me = Form2.klíè(var_28)
  If (Source = var_28) Then
    Form2.text.Caption = "Klíc na kámen! To je teda masakr! Ty musíš ješte vetší mamrd než vypadáš! Jsi ten nejvetší curák, jakýho jsem kdy videl! Klíc na kámen.. to je gól! Seš fakt dement, píco!"
  End If
  GoTo loc_0063D474
  Exit Sub
loc_0063D474:
End Sub

Private Sub prodavaè_Click() '6404A0
  Form2.text.Caption = "PRODAVAC: Nezkoušej me nasrat!"
  GoTo loc_00640538
  Exit Sub
loc_00640538:
End Sub

Private Sub prodavaè_DragDrop(Source As Control, X As Single, Y As Single) '640560
  Set Me = Form2.lahev(var_40)
  Set 0 = Source(0)
  If (Source = var_40) Then
  End If
  Set 0 = Form2.lahev.PictureBox(var_40)
  Set 0 = Source(0)
  If (var_50 = var_40) Then
    var_8010 = sndPlaySound(CStr("bum.wav"), 1)
  End If
  Set 0 = Form2.lahev.PictureBox(var_40)
  Set  = Source(0)
  If (var_50 = var_40) Then
    Form2.prodavaè.PictureBox.Visible = False
  End If
  Set 0 = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.ProdavaèDEATH.PictureBox.Visible = True
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Zabil jsi ho a našel jsi u nej 13.000Kc"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    moneylong = CStr((moneylong + 13000))
  End If
  Set  = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.kameros.PictureBox.Height = 0
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.kleštì.PictureBox.ToolTipText = "Seber klešte"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.kufr.PictureBox.ToolTipText = "Seber kufr"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.rukavice.PictureBox.ToolTipText = "Seber rukavice"
  End If
  GoTo loc_00640CF0
  Exit Sub
loc_00640CF0:
End Sub

Private Sub kleštì_Click() '63D9C0
  Form2.text.Caption = "Na klešticky nemáš prachy, vole!"
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.kleštì.Visible = False
  End If
  GoTo loc_0063DB37
loc_0063DB37:
  var_20 = Form2.ProdavaèDEATH.Visible
  If %fobj Then
    Form2.kleštìI.Visible = True
  End If
  GoTo loc_0063DBF1
loc_0063DBF1:
  var_20 = Form2.ProdavaèDEATH.Visible
  If %fobj Then
    Form2.text.Caption = "Koupil sis pekné štípacky"
  End If
  GoTo loc_0063DCA8
loc_0063DCA8:
  var_20 = Form2.ProdavaèDEATH.Visible
  If ebx Then
    moneylong = CStr((moneylong - 500))
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.kleštì.Visible = False
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.kleštìI.Visible = True
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.text.Caption = "Vzal sis klešte"
  End If
  GoTo loc_0063DF21
  Exit Sub
loc_0063DF21:
End Sub

Private Sub Koberec_Click() '63DF50
  Form2.Koberec.Visible = False
  Form2.Poklop.Visible = True
  Form2.text.Caption = "Odsunul jsi koberec. Pod ním se skrývá zamcený, drevený poklop"
  GoTo loc_0063E06A
  Exit Sub
loc_0063E06A:
End Sub

Private Sub Poklop_Click() '63FFB0
  Form2.text.Caption = "Zamceno"
  GoTo loc_00640048
  Exit Sub
loc_00640048:
End Sub

Private Sub Poklop_DragDrop(Source As Control, X As Single, Y As Single) '640070
  Set Me = Form2.klíè(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.Poklop.PictureBox.Visible = False
  End If
  Set 0 = Form2.klíè(var_28)
  Set 0 = Source(0)
  If (var_38 = var_28) Then
    Form2.klíè.PictureBox.Visible = False
  End If
  Set 0 = Form2.klíè(var_28)
  Set  = Source(0)
  If (Source = var_28) Then
    Form2.PenízeI.PictureBox.Visible = True
  End If
  Set 0 = Form2.klíè(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Odemknul jsi poklop, uvnitr je obrovské množství penez"
  End If
  GoTo loc_006403C0
  Exit Sub
loc_006403C0:
End Sub

Private Sub kufr_Click() '63E240
  Form2.text.Caption = "Na ten kufr nemáš peníze"
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.text.Caption = "Koupil sis super kufrík"
  End If
  GoTo loc_0063E3B4
loc_0063E3B4:
  var_20 = Form2.ProdavaèDEATH.Visible
  If ebx Then
    moneylong = CStr((moneylong - 13000))
  End If
  GoTo loc_0063E475
loc_0063E475:
  var_20 = Form2.ProdavaèDEATH.Visible
  If %fobj Then
    Form2.kufr.Visible = False
  End If
  GoTo loc_0063E52F
loc_0063E52F:
  var_20 = Form2.ProdavaèDEATH.Visible
  If ebx Then
    Form2.KufrI.Visible = True
  Else
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.kufr.Visible = False
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.KufrI.Visible = True
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.text.Caption = "Vzal sis skvelej kufrík"
  End If
  GoTo loc_0063E7A7
  Exit Sub
loc_0063E7A7:
End Sub

Private Sub láhev_Click() '63E840
  Form2.lahev.Visible = True
  Form2.láhev.Visible = False
  Form2.text.Caption = "Sebral si rozbitou lahev"
  GoTo loc_0063E95A
  Exit Sub
loc_0063E95A:
End Sub

Private Sub PenízeI_Click() '63F040
  Form2.text.Caption = "Je to sice docela trapný, ale takovej balík jen tak nepobereš"
  GoTo loc_0063F0D8
  Exit Sub
loc_0063F0D8:
End Sub

Private Sub PenízeI_DragDrop(Source As Control, X As Single, Y As Single) '63F100
  Set Me = Form2.KufrI(var_2C)
  Set 0 = Source(0)
  If (Source = var_2C) Then
    Form2.text.PictureBox.BackColor = "Naskládal jsi peníze do kufru, bylo tam neuveritelných 5.000.000 KC !"
  End If
  Set 0 = Form2.KufrI(var_2C)
  Set 0 = Source(0)
  If (Source = var_2C) Then
    moneylong = CStr((moneylong + 5000000))
  End If
  Set  = Form2.KufrI.PictureBox(var_2C)
  Set 0 = Source(0)
  If (var_2C = var_2C) Then
    Form2.PenízeI.PictureBox.Visible = False
  End If
  Set 0 = Form2.KufrI(var_2C)
  Set  = Source(0)
  If (var_2C = var_2C) Then
    Form2.KufrI.PictureBox.ToolTipText = "Naplnený kufr"
  End If
  GoTo loc_0063F472
  Exit Sub
loc_0063F472:
End Sub

Private Sub pistole_Click() '63F4B0
  var_20 = Form2.pas.Visible
  GoTo loc_0063F560
  If eax Then
    Form2.pistole.Visible = False
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_0063F615
  If eax Then
    Form2.pistoleI.Visible = True
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_0063F6CA
  If eax Then
    Form2.text.Caption = "Koupil sis bouchacku"
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_0063F77C
  If eax Then
    moneylong = CStr((moneylong - 6000))
  End If
  Form2.text.Caption = "Nemáš prachy"
  If (Form2.pas.Visible = 0) Then
    Form2.text.Caption = "Nemáš zbrojní pas"
  End If
  GoTo loc_0063F8E4
  Exit Sub
loc_0063F8E4:
End Sub

Private Sub pláž_Click() '63FE70
  Form2.text.Caption = "A tohle je konec. Za to že jsi dohrál tuhle hru ti neco prozradím: Zkus si zapnout hru znova a v intru (obrázek továrny) klikni na okno nad rozbitým oknem. Budeš obdaren penežním obnosem a pokud se budeš snažit, mužeš objevit tajnou lokaci a dohrát hru jiným zpusobem!"
  Form2.pláž.Visible = False
  Form2.konec.Visible = True
  GoTo loc_0063FF8A
  Exit Sub
loc_0063FF8A:
End Sub

Private Sub konec_Click() '63E090
  End
End Sub

Private Sub kameros_Click() '63D4A0
  If global_60 = 1 Then
    Form2.text.Caption = "Kamera je plne funkcí a natácí každy tvuj pohyb"
  End If
  If global_60 = 0 Then
    Form2.text.Caption = "Vypadá to, že kamera je po tvém zákroku mimo provoz"
  End If
  GoTo loc_0063D584
  Exit Sub
loc_0063D584:
End Sub

Private Sub kameros_DragDrop(Source As Control, X As Single, Y As Single) '63D5B0
  Set Me = Form2.kleštìI(var_2C)
  var_70 = Form2.prodavaè.Visible
  var_64 = (var_70 = True)
  Set 0 = Source(0)
  If CBool((var_3C = var_2C) And (var_70 = True)) Then
    Form2.text.PictureBox.BackColor = "PRODAVAD: Vypadni vod tý kamery!"
  End If
  Set 0 = Form2.kleštìI(var_2C)
  var_70 = Form2.prodavaè.Visible
  var_64 = (var_70 = 0)
  Set 0 = Source(0)
  If CBool(((var_70 = 0) = var_2C) And (var_70 = 0)) Then
    global_60 = 0
  End If
  Set 0 = Form2.kleštìI.PictureBox(var_2C)
  var_70 = Form2.prodavaè.Visible
  var_64 = (var_70 = 0)
  Set  = Source(0)
  If CBool((Source = var_2C) And (var_70 = 0)) Then
    Form2.text.PictureBox.BackColor = "Vyradil jsi kameru z provozu"
  End If
  GoTo loc_0063D991
  Exit Sub
loc_0063D991:
End Sub

Private Sub rukavice_Click() '641E60
  Form2.text.Caption = "Nemáš tolik penez"
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.text.Caption = "Koupil sis speciální rukavice"
  End If
  GoTo loc_00641FD4
loc_00641FD4:
  var_20 = Form2.ProdavaèDEATH.Visible
  If ebx Then
    moneylong = CStr((moneylong - 5000))
  End If
  GoTo loc_00642095
loc_00642095:
  var_20 = Form2.ProdavaèDEATH.Visible
  If %fobj Then
    Form2.rukavice.Visible = False
  End If
  GoTo loc_0064214F
loc_0064214F:
  var_20 = Form2.ProdavaèDEATH.Visible
  If ebx Then
    Form2.rukaviceI.Visible = True
  Else
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.rukavice.Visible = False
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.rukaviceI.Visible = True
  End If
  If (Form2.ProdavaèDEATH.Visible = True) Then
    Form2.text.Caption = "Vzal sis speciální rukavice (o otisky je postaráno, heh)"
  End If
  GoTo loc_006423C7
  Exit Sub
loc_006423C7:
End Sub

Private Sub ProdavaèLOOK_Click() '640DE0
  Form2.text.Caption = "Je porádne vytocenej, ani si nevšimnul, že si prišel"
  GoTo loc_00640E78
  Exit Sub
loc_00640E78:
End Sub

Private Sub ProdavaèLOOK_DragDrop(Source As Control, X As Single, Y As Single) '640EA0
  Set Me = Form2.lahev(var_40)
  Set 0 = Source(0)
  If (Source = var_40) Then
    Form2.ProdavaèLOOK.PictureBox.Visible = False
  End If
  Set 0 = Form2.lahev(var_40)
  Set 0 = Source(0)
  If (var_50 = var_40) Then
    Form2.ProdavaèDEATH.PictureBox.Visible = True
  End If
  Set 0 = Form2.lahev(var_40)
  Set  = Source(0)
  If (Source = var_40) Then
  End If
  Set 0 = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_8018 = sndPlaySound(CStr("bum.wav"), 1)
  End If
  Set  = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Zabil jsi ho a našel jsi u nej 13.000Kc"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    moneylong = CStr((moneylong + 13000))
  End If
  Set  = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.kameros.PictureBox.Height = 0
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.kleštì.PictureBox.ToolTipText = "Seber klešte"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.kufr.PictureBox.ToolTipText = "Seber kufr"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.rukavice.PictureBox.ToolTipText = "Seber rukavice"
  End If
  GoTo loc_00641630
  Exit Sub
loc_00641630:
End Sub

Private Sub šéfGUN_Click() '643330
  If (Form2.klíè.Visible = True) Then
    Form2.text.Caption = "Už u sebe nic nemá"
  End If
  If (Form2.klíè.Visible = 0) Then
    Form2.text.Caption = "Našel jsi u nej klícek"
  End If
  If (Form2.klíè.Visible = 0) Then
    Form2.klíè.Visible = True
  End If
  GoTo loc_00643541
  Exit Sub
loc_00643541:
End Sub

Private Sub šéfSHOTGUN_Click() '643570
  If (Form2.klíè.Visible = True) Then
    Form2.text.Caption = "Už u sebe nic nemá"
  End If
  If (Form2.klíè.Visible = 0) Then
    Form2.text.Caption = "Našel jsi u nej klícek"
  End If
  If (Form2.klíè.Visible = 0) Then
    Form2.klíè.Visible = True
  End If
  GoTo loc_00643781
  Exit Sub
loc_00643781:
End Sub

Private Sub výbuch_Click() '645D70
  Form2.konec.Visible = True
  Form2.výbuch.Visible = False
  Form2.text.Caption = "A tohle je už opravdu konec. Už žádný jiný triky :-). Dyžtak se mi vozvi, jestli te ta hra zaujala, jinak FUCK OFF !!!"
  GoTo loc_00645E8A
  Exit Sub
loc_00645E8A:
End Sub

Private Sub tma_Click() '643B90
  Form2.text.Caption = "Za zdí vidíš...respektive nic nevidíš. Potrebuješ svetlo, nevíš co je za zdí. Mohl by si treba na neco spadnout..."
  GoTo loc_00643C28
  Exit Sub
loc_00643C28:
End Sub

Private Sub tma_DragDrop(Source As Control, X As Single, Y As Single) '643C50
  Set Me = Form2.zápalky(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Zápalky jsou trapný"
  End If
  Set 0 = Form2.baterka(var_28)
  var_60 = (global_62 = 1)
  Set 0 = Source(0)
  If CBool((Source = var_28) And (global_62 = 1)) Then
    Form2.tma.PictureBox.Visible = False
  End If
  Set 0 = Form2.baterka(var_28)
  var_60 = (global_62 = 1)
  Set  = Source(0)
  If CBool((Source = var_28) And (global_62 = 1)) Then
    Form2.text.PictureBox.BackColor = "Ted už tam mužeš vniknout bez problému"
  End If
  Set 0 = Form2.baterka(var_28)
  var_60 = (global_62 = 1)
  Set  = Source()
  If CBool((Source = var_28) And (global_62 = 1)) Then
    Form2.baterka.PictureBox.Visible = False
  End If
  GoTo loc_00644052
  Exit Sub
loc_00644052:
End Sub

Private Sub Form_Load() '6397A0
  global_56 = 1
  global_58 = 1
  global_60 = 1
  moneylong = 700
  Form2.Timer1.Interval = CLng(1)
  var_74 = "UPOZORNENÍ PRO PRECITLIVELÉ POVAHY: Hra obsahuje mnoho brutálního chování a vulgárních slov. Hraním této hry na sebe berete veškerou zodpovednost, pokud se vám hra nelíbí, tak jí nehrajte. Dekuji, prípadné dotazy = marty@northcrewz.tk"
  a = MsgBox(var_74, 0, 10, 10, 10)
  GoTo loc_00639989
  Exit Sub
loc_00639989:
End Sub

Private Sub Image1_Click() '639CD0
  Form2.text.Caption = "Vyber si kam chceš jít"
  Form2.ulice.Visible = False
  Form2.mapa.Visible = True
  GoTo loc_00639DEA
  Exit Sub
loc_00639DEA:
End Sub

Private Sub Label1_Click() '63E7D0
  End
End Sub

Private Sub tulákubodán_Click() '644D20
  If global_56 = 0 Then
    Form2.text.Caption = "Už u sebe nic nemá"
  End If
  If global_56 = 1 Then
    Form2.text.Caption = "Pred sebou vidíš tuláka, kterého jsi pred chvílí ubodal. Nic u sebe nemel, až na 20Kc, které sis vzal"
    If global_56 = 1 Then
      moneylong = CStr((moneylong + 20))
      If global_56 = 1 Then
      End If
    End If
  End If
  GoTo loc_00644E6A
  Exit Sub
loc_00644E6A:
End Sub

Private Sub tulák_Click() '644080
  Form2.text.Caption = "TULÁK: Eh...chrocht...nazdar...nemáte nejaký drobný pane? Já už sem na ulici peknejch pár let! Ani byste neveril jakou mám žízen...uch... už me to tu pekne sere. Prosimvás, skocte mi pro lahváce!"
  If global_72 = 1 Then
    Form2.text.Caption = "TUlÁK: Díky kámo, máš to u me!"
  End If
  GoTo loc_00644160
  Exit Sub
loc_00644160:
End Sub

Private Sub tulák_DragDrop(Source As Control, X As Single, Y As Single)

    If Source.Name = "lahev" Then
        text.Caption = "Ubodal jsi tuláka"
        tulák.Height = 0
        tulák.Visible = False
        ' tulákubodán.Height = 1000 ' whatever the original height was
        tulákubodán.Visible = True
        sndPlaySound "bum.wav", 1
        Exit Sub

    ElseIf Source.Name = "PivoI" Then
        text.Caption = "TUlÁK: Jé, díky moc! Nemám co bych ti za to dal, ale alespon ti povím kde je v tomhle meste nove otevrenej obchod se zbranema! (rekl ti kudy se tam dostaneš)"
        PivoI.Visible = False
        skrývaè.Visible = False
        global_72 = 1
        Exit Sub

    ElseIf Source.Name = "absinthI" Then
        text.Caption = "TUlÁK: Páni, ty seš ale štedrej! Víš co, vem si tenhle tlumic, já už ho nebudu potrebovat."
        tlumiè.Visible = True
        absinthI.Visible = False
        Exit Sub

    ElseIf Source.Name = "pistoleI" Then
        text.Caption = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
        Exit Sub

    ElseIf Source.Name = "PistoleII" Then
        text.Caption = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
        Exit Sub

    ElseIf Source.Name = "BrokovniceI" Then
        text.Caption = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
        Exit Sub

    ElseIf Source.Name = "klíè" Then
        text.Caption = "You had a lotta dick, had a lotta dick, I had a lotta time, had a lotta time, you had a lotta dick Chasey, but you ain´t had mine!"
    End If

End Sub

Private Sub Okno_Click() '63EEC0
  Form2.text.Caption = "Oknem vidíš zakourenou místnost v níž banda násosku popíjí zvetralý pivo a u toho mastí mariáš"
  GoTo loc_0063EF58
  Exit Sub
loc_0063EF58:
End Sub

Private Sub typ_Click() '644E90
  Form2.text.Caption = "Vidíš divnýho týpka, úpenlive si prohlíží malby na zdech."
  GoTo loc_00644F28
  Exit Sub
loc_00644F28:
End Sub

Private Sub typ_DragDrop(Source As Control, X As Single, Y As Single)

    If Source.Name = "lahev" Then
        text.Caption = "Lahví si ho jenom poranil a když došlo na pestní souboj, ukázalo se že je silnejší než ty"
        
        ulièka.Visible = False
        inventáø.Visible = False
        lahev.Visible = False
        typ.Visible = False
        TypMRTVEJ.Visible = True

    ElseIf Source.Name = "kámen" Then
        text.Caption = "Kamenem si ho uderil pekne do hlavy, už se asi nezvedne"

        ulièka.Visible = False
        inventáø.Visible = False
        typ.Visible = False
        TypMRTVEJ.Visible = True

        sndPlaySound App.Path & "\bum2.wav", 1
    End If

End Sub

Private Sub TypMRTVEJ_Click() '645650
  If (Form2.pas.PictureBox.Visible = True) Then
    Form2.text.Caption = "Ten chudák už u sebe nic víc nemá!"
  End If
  If (Form2.pas.Visible = 0) Then
    Form2.baterka.Visible = True
  End If
  If (Form2.pas.Visible = 0) Then
    Form2.text.Caption = "Prohledal jsi toho týpka a našel jsi u nej nefunkcní baterku a zbrojní pas (je to docela podivnost když u sebe nemá zbran)"
  End If
  If (Form2.pas.Visible = 0) Then
    Form2.pas.Visible = True
  End If
  GoTo loc_006458F1
  Exit Sub
loc_006458F1:
End Sub

Private Sub ženaGUN_Click() '6477F0
  Form2.text.Caption = "Je mrtvá, co bys chtel víc!"
  GoTo loc_00647888
  Exit Sub
loc_00647888:
End Sub

Private Sub absinth_Click() '635790
  Form2.absinth.Visible = False
  Form2.absinthI.Visible = True
  If global_58 = 1 Then
    Form2.text.Caption = "Za 360Kc sis koupil láhev absinthu"
    If global_58 = 1 Then
      moneylong = CStr((moneylong - 360))
    End If
  End If
  If global_58 = 0 Then
    Form2.text.Caption = "Vzal sis pivo"
  End If
  GoTo loc_00635959
  Exit Sub
loc_00635959:
End Sub

Private Sub pryè_Click() '641660
  Dim var_18 As Variant
  Form2.vchod.Visible = False
  Set var_18 = Form2.dùm
  var_1C = var_18
  var_18.Visible = True
  Set var_18 = Form2.text
  var_1C = var_18
  var_18.Caption = "Jsi zase pred zdí"
  Set var_18 = Form2.dùm
  var_1C = var_18
  var_18.Visible = False
  Set var_18 = Form2.pláž
  var_1C = var_18
  var_18.Visible = True
  Set var_18 = Form2.inventáø
  var_1C = var_18
  var_18.Visible = False
  Set var_18 = Form2.lahev
  var_1C = var_18
  var_18.Visible = False
  Set var_18 = Form2.text
  var_1C = var_18
  var_18.Caption = "Podarilo se ti uprchnout i stim balíkem co jsi ukradl. Policie na nic neprišla, mysleli si že to byla hromadná sebevražda. Ty ses odstehoval do ciziny a porídil si luxusní sídlo. Ted si žiješ jako král. (KLIKNI NA OBRÁZEK)"
  If global_64 = 2 Then
    Set var_18 = Form2.dùm
    var_1C = var_18
    var_18.Visible = False
    If global_64 = 2 Then
      Set var_18 = Form2.pláž
      var_1C = var_18
      var_18.Visible = False
      If global_64 = 2 Then
        Set var_18 = Form2.policie
        var_1C = var_18
        var_18.Visible = True
        If global_64 = 2 Then
          Set var_18 = Form2.text
          var_1C = var_18
          var_18.Caption = "Bohužel jsi na míste cinu zachoval své otisky"
          If global_64 = 2 Then
            Set var_18 = Form2.inventáø
            var_1C = var_18
            var_18.Visible = False
            If global_64 = 2 Then
              Set var_18 = Form2.lahev
              var_1C = var_18
              var_18.Visible = False
            End If
          End If
        End If
      End If
    End If
  End If
  If global_66 = 2 Then
    Set var_18 = Form2.dùm
    var_1C = var_18
    var_18.Visible = False
    If global_66 = 2 Then
      Set var_18 = Form2.policie
      var_1C = var_18
      var_18.Visible = True
      If global_66 = 2 Then
        Set var_18 = Form2.pláž
        var_1C = var_18
        var_18.Visible = False
        If global_66 = 2 Then
          Set var_18 = Form2.text
          var_1C = var_18
          var_18.Caption = "Zrejme te v dome natocila nejaká skrytá kamera. Byl jsi dopaden"
          If global_66 = 2 Then
            Set var_18 = Form2.inventáø
            var_1C = var_18
            var_18.Visible = False
            If global_66 = 2 Then
              Set var_18 = Form2.lahev
              var_1C = var_18
              var_18.Visible = False
            End If
          End If
        End If
      End If
    End If
  End If
  If global_68 = 2 Then
    Set var_18 = Form2.text
    var_1C = var_18
    var_18.Caption = "Sousedé zrejme slyšeli výstreli a zavolali policie. Byl jsi usvedcen."
    If global_68 = 2 Then
      Set var_18 = Form2.policie
      var_1C = var_18
      var_18.Visible = True
      If global_68 = 2 Then
        Set var_18 = Form2.dùm
        var_1C = var_18
        var_18.Visible = False
        If global_68 = 2 Then
          Set var_18 = Form2.pláž
          var_1C = var_18
          var_18.Visible = False
          If global_68 = 2 Then
            Set var_18 = Form2.inventáø
            var_1C = var_18
            var_18.Visible = False
            If global_68 = 2 Then
              Form2.lahev.Visible = False
            End If
          End If
        End If
      End If
    End If
  End If
  GoTo loc_00641E32
  Exit Sub
loc_00641E32:
End Sub

Private Sub Žena_Click() '646D00
  Form2.text.Caption = "Tohle je tvoje bejvalka. Kurva. Má na uších sluchátka, protože šéf hrozne chrápe. Bylo by dobré nejdrív zabít jeho. Ona nic neuslyší"
  GoTo loc_00646D98
  Exit Sub
loc_00646D98:
End Sub

Private Sub Žena_DragDrop(Source As Control, X As Single, Y As Single) '646DC0
  Set Me = Form2.pistoleI(var_40)
  Set 0 = Source(0)
  If (Source = var_40) Then
    Form2.ženaGUN.PictureBox.Visible = True
  End If
  Set 0 = Form2.pistoleI(var_40)
  Set 0 = Source(0)
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Strelils jí prímo mezi voci. Docela šlupa!"
  End If
  Set 0 = Form2.pistoleI(var_40)
  Set  = Source(0)
  If (Source = var_40) Then
    global_68 = 2
  End If
  Set 0 = Form2.pistoleI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
  End If
  Set  = Form2.pistoleI.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    var_801C = sndPlaySound(CStr("Shoot.wav"), 1)
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.ženaGUN.PictureBox.Visible = True
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Trefil ses prímo mezi voci! Tlumic tlumí"
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (Source = var_40) Then
    global_68 = 1
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_803C = sndPlaySound(CStr("ShootTl.wav"), 1)
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.ženaSHOTGUN.PictureBox.Visible = True
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "To byla daha! Hlava jí rupla jak meloun"
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    global_68 = 2
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_805C = sndPlaySound(CStr("Shoot.wav"), 1)
  End If
  GoTo loc_006477C3
  Exit Sub
loc_006477C3:
End Sub

Private Sub dùmGO_Click() '638BC0
  Form2.dùm.Visible = True
  Form2.mapa.Visible = False
  Form2.text.Caption = "Stojíš pred zdí, která obíhá celý komplex šéfova domu"
  GoTo loc_00638CDA
  Exit Sub
loc_00638CDA:
End Sub

Private Sub Image5_Click() '63B960
  Form2.HospodaIN.Visible = False
  If global_58 = 1 Then
    Form2.hospoda.Visible = True
    If global_58 = 1 Then
      Form2.text.Caption = "Vyšel jsi pred hospodu"
    End If
  End If
  If global_58 = 0 Then
    Form2.policie.Visible = True
    If global_58 = 0 Then
      Form2.inventáø.Visible = False
      If global_58 = 0 Then
        Form2.lahev.Visible = False
        If global_58 = 0 Then
          Form2.text.Caption = "Tak tohle se ti moc nevydarilo - lidi privolali policie a ta te zatkla. Vypadá to, že už se svýmu šéfovi nepomstíš. Tohle je tvuj konec!"
        End If
      End If
    End If
  End If
  GoTo loc_0063BBAB
  Exit Sub
loc_0063BBAB:
End Sub

Private Sub Image4_Click() '63B820
  Form2.text.Caption = "Vstoupil jsi do hospody, je to cejtit chcánkama a kourem. Za pultem stojí obtloustlý, funící cíšník - vypadá pekne nasrane."
  Form2.hospoda.Visible = False
  Form2.HospodaIN.Visible = True
  GoTo loc_0063B93A
  Exit Sub
loc_0063B93A:
End Sub

Private Sub Image3_Click() '63B6E0
  Form2.hospoda.Visible = False
  Form2.mapa.Visible = True
  Form2.text.Caption = "Vyber si kam chceš jít"
  GoTo loc_0063B7FA
  Exit Sub
loc_0063B7FA:
End Sub

Private Sub Image2_Click() '63B620
  Form2.text.Caption = "http://northcrewz.zde.cz"
  GoTo loc_0063B6B8
  Exit Sub
loc_0063B6B8:
End Sub

Private Sub PoklopSPECIAL_Click() '6403E0
  Form2.text.Caption = "Podivný poklop - cosi podivného skrývá"
  GoTo loc_00640478
  Exit Sub
loc_00640478:
End Sub

Private Sub Image8_Click() '63C710
  Form2.ulièka.Visible = False
  Form2.Obchod.Visible = True
  Form2.text.Caption = "Prišel jsi zpet pred obchod"
  GoTo loc_0063C82A
  Exit Sub
loc_0063C82A:
End Sub

Private Sub Tlaèítko_Click() '6439D0
  Form2.výbuch.Visible = True
  Form2.tajnámístnost.Visible = False
  Form2.text.Caption = "Vyhodil jsi do povetrí Washington, Amerika zaútocila na Rusko a do sporu se pridaly i ostatní státy. Strhla se 3. svetová -atomová- válka. Jen málo lidí prežilo - v krytech. Celý svet zamorený... (pokracování ve hre Fallout). KLIKNI NA OBRÁZEK"
  Form2.inventáø.Visible = False
  Form2.lahev.Visible = False
  GoTo loc_00643B66
  Exit Sub
loc_00643B66:
End Sub

Private Sub Image7_Click() '63C2E0
  Form2.text.Caption = "Ješte nikdy jsi nevidel tak výstižnou karikaturu tvého obliceje"
  GoTo loc_0063C378
  Exit Sub
loc_0063C378:
End Sub

Private Sub Image7_DragDrop(Source As Control, X As Single, Y As Single) '63C3A0
  Set Me = Form2.klíè(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Tahle kunda je nakreslená, zkus vodemknout nejakou pravou...vole!"
  End If
  Set 0 = Form2.klíè(var_28)
  Set 0 = Source(0)
  If (var_38 = var_28) Then
    Form2.surmaj.PictureBox.Height = NAN
  End If
  Set 0 = Form2.klíè(var_28)
  Set  = Source(0)
  If (Source = var_28) Then
    Form2.vesmír.PictureBox.Height = NAN
  End If
  Set 0 = Form2.klíè(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.icp.PictureBox.Height = NAN
  End If
  GoTo loc_0063C6F0
  Exit Sub
loc_0063C6F0:
End Sub

Private Sub Adolf_Click() '635980
  Form2.text.Caption = "Chtel jsem sem dát nejvetšího padoucha co kdy žil, ale neumel jsem Santu nakreslit, tak jsem sem dal alespon Adolfa Hitlera, to byl taky docela grázl"
  GoTo loc_00635A18
  Exit Sub
loc_00635A18:
End Sub

Private Sub Adolf_DragDrop(Source As Control, X As Single, Y As Single) '635A40
  Set Me = Form2.BrokovniceI(var_40)
  var_78 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_50 = var_40) And (global_70 = 3)) Then
    Form2.PoklopSPECIAL.PictureBox.Visible = False
  End If
  Set 0 = Form2.BrokovniceI(var_40)
  var_78 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_50 = var_40) And (global_70 = 3)) Then
    Form2.Tlaèítko.PictureBox.Height = NAN
  End If
  Set 0 = Form2.BrokovniceI(var_40)
  var_78 = (global_70 = 2)
  Set  = Source(0)
  If CBool((var_50 = var_40) And (global_70 = 2)) Then
    global_70 = 3
  End If
  Set 0 = Form2.BrokovniceI.PictureBox(var_40)
  var_78 = (global_70 = 1)
  Set  = Source()
  If CBool((var_50 = var_40) And (global_70 = 1)) Then
    global_70 = 2
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  var_78 = (global_70 = 0)
  Set  = Source()
  If CBool((var_50 = var_40) And (global_70 = 0)) Then
    global_70 = 1
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    var_804C = sndPlaySound(CStr("Shoot.wav"), 1)
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.adolfI.PictureBox.Visible = True
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Pekne si toho parchanta vodrovnal! To mu patrí!"
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.Adolf.PictureBox.Height = 0
  End If
  Set  = Form2.pistoleI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "To na nej nestací!"
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "To na nej nestací!"
  End If
  GoTo loc_00636393
  Exit Sub
loc_00636393:
End Sub

Private Sub BrokovniceI_DragDrop(Source As Control, X As Single, Y As Single) '637300
  Set Me = Form2.tlumiè(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Tlumic tam nepasuje a mimochodem, už si nekdy videl tlumic na brokovnici?"
  End If
  GoTo loc_00637434
  Exit Sub
loc_00637434:
End Sub

Private Sub vobraZ_Click() '645C60
  var_5C = "RESPECT TO: my homie DruGG'Dee, also DJ Dark Smokemastah, my second homie Sepy, the rest of my homies, Inpharktt Kru, Chrante Pred Detmi, Czech Hip-Hop, Non-Czech Hip-Hop, just a Hip-Hop, my favourites: Insane Clown Posse; Spoony T and Jimmy Nugz (Entropy); Twiztid; Bloodhound Gang; Wolfpac, my fucking lovely band >-North CrewZ-<, my parents and grandparents and the rest of my family, and of course - ME <written 15.8. 2002>"
  MsgBox(var_5C, 0, 10, 10, 10)
  GoTo loc_00645D41
  Exit Sub
loc_00645D41:
End Sub

Private Sub help_Click() '6399C0
  var_5C = "Veci které sebereš si ukládají do inventáre, potom je zase mužeš používat systémem Drag and Drop (proste chytneš myší a pak pustíš <vysvetlivka pro ženy>). Než prvedeš nejakou akci je dobré chvíli ponechat myš nad predmetem, ukáže se vám informace o predmetu (hodí se zejména pri zjištování cen u nakupovaných predmetu). Pokud chceš opustit obrazovku, hledej dvere, pokud tam nejsou zkus okraj obrázku. To je tak vše, hra není težká na ovládání."
  a = MsgBox(var_5C, 0, 10, 10, 10)
  GoTo loc_00639AA1
  Exit Sub
loc_00639AA1:
End Sub

Private Sub pistoleI_DragDrop(Source As Control, X As Single, Y As Single) '63F910
  Set Me = Form2.tlumiè(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.tlumiè.PictureBox.Visible = False
  End If
  Set 0 = Form2.tlumiè(var_28)
  Set 0 = Source(0)
  If (var_38 = var_28) Then
    Form2.pistoleI.PictureBox.Visible = False
  End If
  Set 0 = Form2.tlumiè(var_28)
  Set  = Source(0)
  If (Source = var_28) Then
    Form2.PistoleII.PictureBox.Visible = True
  End If
  Set 0 = Form2.tlumiè(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Tlumic na pistoli parádne pasoval"
  End If
  GoTo loc_0063FC60
  Exit Sub
loc_0063FC60:
End Sub

Private Sub Image6_Click() '63BBD0
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.Obchod.Visible = True
  End If
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.obchodIN.Visible = False
  End If
  If (Form2.ProdavaèDEATH.Visible = 0) Then
    Form2.text.Caption = "Vyšel jsi pred obchod"
  End If
  If ((global_60 = 0) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.text.Caption = "Vyšel jsi pred obchod"
  End If
  If ((global_60 = 0) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.Obchod.Visible = True
  End If
  If ((global_60 = 0) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.obchodIN.Visible = False
  End If
  If ((global_60 = 1) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.lahev.Visible = False
  End If
  If ((global_60 = 1) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.inventáø.Visible = False
  End If
  If ((global_60 = 1) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.policie.Visible = True
  End If
  If ((global_60 = 1) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.text.Caption = "Bohužel kamera nahrála tvuj brutální cin a byl jsi dopaden"
  End If
  If ((global_60 = 1) And (Form2.ProdavaèDEATH.Visible = True)) Then
    Form2.obchodIN.Visible = False
  End If
  GoTo loc_0063C2BC
  Exit Sub
loc_0063C2BC:
End Sub

Private Sub vejít_Click() '645A60
  Form2.vchod.Visible = False
  Form2.Uvnitø.Visible = True
  Form2.text.Caption = "Vešel jsi dovnitr domu, je to tam docela luxus a nóbl. Všude jsou samý kytky, obrazy a zrcadla"
  GoTo loc_00645B7A
  Exit Sub
loc_00645B7A:
End Sub

Private Sub doložnice_Click() '638660
  Form2.Ložnice.Visible = True
  Form2.Uvnitø.Visible = False
  Form2.text.Caption = "Vstoupil jsi k šéfikovi do ložnice..."
  If (Form2.skrytoš.Visible = True) Then
    global_66 = 2
  End If
  GoTo loc_006387D6
  Exit Sub
loc_006387D6:
End Sub

Private Sub Image10_Click() '639E10
  Form2.Armyshop.Visible = False
  Form2.mapa.Visible = True
  Form2.text.Caption = "Vyber si kam chceš jít, amígo!"
  GoTo loc_00639F2A
  Exit Sub
loc_00639F2A:
End Sub

Private Sub Image19_Click() '63B4E0
  Form2.HospodaIN.Visible = True
  Form2.tajnámístnost.Visible = False
  Form2.text.Caption = "Vrátil ses zpátky do lokálu"
  GoTo loc_0063B5FA
  Exit Sub
loc_0063B5FA:
End Sub

Private Sub obchodGO_Click() '63EC40
  Form2.Obchod.Visible = True
  Form2.mapa.Visible = False
  Form2.text.Caption = "Prišel jsi pred obchod, mužeš také zajít do ulicky za obchodem"
  GoTo loc_0063ED5A
  Exit Sub
loc_0063ED5A:
End Sub

Private Sub odejít_Click() '63ED80
  Form2.mapa.Visible = True
  Form2.Obchod.Visible = False
  Form2.text.Caption = "Vyber si kam chceš jít"
  GoTo loc_0063EE9A
  Exit Sub
loc_0063EE9A:
End Sub

Private Sub uliceGO_Click() '645920
  Form2.text.Caption = "Prišel jsi na ulici"
  Form2.ulice.Visible = True
  Form2.mapa.Visible = False
  GoTo loc_00645A3A
  Exit Sub
loc_00645A3A:
End Sub

Private Sub atomovka_Click() '6365C0
  var_20 = Form2.pas.Visible
  GoTo loc_00636670
  If eax Then
    Form2.atomovka.Visible = False
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_00636725
  If eax Then
    Form2.atomovkaI.Visible = True
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_006367DA
  If eax Then
    Form2.text.Caption = "Koupil sis chlapecka! HAHA, to bude masakr"
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_0063688C
  If eax Then
    moneylong = CStr((moneylong - 500000))
  End If
  Form2.text.Caption = "Nemáš prachy"
  If (Form2.pas.Visible = 0) Then
    Form2.text.Caption = "Nemáš zbrojní pas"
  End If
  GoTo loc_006369F4
  Exit Sub
loc_006369F4:
End Sub

Private Sub Image18_Click() '63B3A0
  Form2.Ložnice.Visible = False
  Form2.Uvnitø.Visible = True
  Form2.text.Caption = "Vrátil ses"
  GoTo loc_0063B4BA
  Exit Sub
loc_0063B4BA:
End Sub

Private Sub dovnitø_Click() '638A80
  Form2.obchodIN.Visible = True
  Form2.Obchod.Visible = False
  Form2.text.Caption = "Vešel jsi do obchodu, v regálech toho moc nemaj. Všimnul sis, že te sleduje kamera"
  GoTo loc_00638B9A
  Exit Sub
loc_00638B9A:
End Sub

Private Sub Image11_Click() '639F50
  Form2.text.Caption = "PRODAVAC: Nazdar, já jsem bejvalej voják a ted mi patrí krám, mám tu všechno. Dokonce i jadernou hlavici, ale s tou bacha... a na me si dej taky bacha!"
  GoTo loc_00639FE8
  Exit Sub
loc_00639FE8:
End Sub

Private Sub Image11_DragDrop(Source As Control, X As Single, Y As Single) '63A010
  Set Me = Form2.lahev(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Vycítil tvojí agresivitu a než si stihnul cokoliv udelat, vytáhnul z podpultu ctyriactyricítku a udelal ti do hlavy další otvor"
  End If
  Set 0 = Form2.lahev(var_28)
  Set 0 = Source(0)
  If (var_38 = var_28) Then
    Form2.Armyshop.PictureBox.Visible = False
  End If
  Set 0 = Form2.lahev(var_28)
  Set  = Source(0)
  If (Source = var_28) Then
    Form2.inventáø.PictureBox.Visible = False
  End If
  Set 0 = Form2.lahev(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.lahev.PictureBox.Visible = False
  End If
  Set  = Form2.pistoleI(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.text.PictureBox.BackColor = "Vycítil tvojí agresivitu a než si stihnul cokoliv udelat, vytáhnul z podpultu ctyriactyricítku a udelal ti do hlavy další otvor"
  End If
  Set  = Form2.pistoleI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.Armyshop.PictureBox.Visible = False
  End If
  Set  = Form2.pistoleI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.inventáø.PictureBox.Visible = False
  End If
  Set  = Form2.pistoleI(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.lahev.PictureBox.Visible = False
  End If
  Set  = Form2.BrokovniceI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Vycítil tvojí agresivitu a než si stihnul cokoliv udelat, vytáhnul z podpultu ctyriactyricítku a udelal ti do hlavy další otvor"
  End If
  Set  = Form2.BrokovniceI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.Armyshop.PictureBox.Visible = False
  End If
  Set  = Form2.BrokovniceI(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.inventáø.PictureBox.Visible = False
  End If
  Set  = Form2.BrokovniceI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.lahev.PictureBox.Visible = False
  End If
  Set  = Form2.Kámen(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Vycítil tvojí agresivitu a než si stihnul cokoliv udelat, vytáhnul z podpultu ctyriactyricítku a udelal ti do hlavy další otvor"
  End If
  Set  = Form2.Kámen(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.Armyshop.PictureBox.Visible = False
  End If
  Set  = Form2.Kámen(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.inventáø.PictureBox.Visible = False
  End If
  Set  = Form2.Kámen(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.lahev.PictureBox.Visible = False
  End If
  Set  = Form2.klíè(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.text.PictureBox.BackColor = "You and me baby ain’t nothin’ but mammals, So let’s do it like they do on the Discovery Channel"
  End If
  GoTo loc_0063AC78
  Exit Sub
loc_0063AC78:
End Sub

Private Sub pas_Click() '63EF80
  Form2.text.Caption = "Se zbrojním pasem nepotrebuješ manipulovat, stací ho mít u sebe."
  GoTo loc_0063F018
  Exit Sub
loc_0063F018:
End Sub

Private Sub Image15_Click() '63AFE0
  Form2.vchod.Visible = False
  Form2.policie.Visible = True
  Form2.inventáø.Visible = False
  Form2.lahev.Visible = False
  Form2.text.Caption = "Tak tohle byla nejvetší pícovina jakou jsi mohl udelat. Zatkli te za neoprávnené vniknutí na pozemek. Seš fakt kretén"
  GoTo loc_0063B176
  Exit Sub
loc_0063B176:
End Sub

Private Sub Brokovnice_Click() '636EA0
  var_20 = Form2.pas.Visible
  GoTo loc_00636F50
  If eax Then
    Form2.Brokovnice.Visible = False
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_00637005
  If eax Then
    Form2.BrokovniceI.Visible = True
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_006370BA
  If eax Then
    Form2.text.Caption = "Koupil sis brokovnici"
  End If
  var_20 = Form2.pas.Visible
  GoTo loc_0063716C
  If eax Then
    moneylong = CStr((moneylong - 12000))
  End If
  Form2.text.Caption = "Nemáš prachy"
  If (Form2.pas.Visible = 0) Then
    Form2.text.Caption = "Nemáš zbrojní pas"
  End If
  GoTo loc_006372D4
  Exit Sub
loc_006372D4:
End Sub

Private Sub Doulièky_Click() '638940
  Form2.ulièka.Visible = True
  Form2.Obchod.Visible = False
  Form2.text.Caption = "Prišel jsi slepé ulicky"
  GoTo loc_00638A5A
  Exit Sub
loc_00638A5A:
End Sub

Private Sub baterka_DragDrop(Source As Control, X As Single, Y As Single) '636A20
  Set Me = Form2.baterky(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Narval si baterky do baterky a hle! Fugnuje!"
  End If
  Set 0 = Form2.baterky(var_28)
  Set 0 = Source(0)
  If (var_38 = var_28) Then
    Form2.baterky.PictureBox.Visible = False
  End If
  Set 0 = Form2.baterky(var_28)
  Set  = Source(0)
  If (Source = var_28) Then
    Form2.baterka.PictureBox.ToolTipText = "Funkcní Baterka"
  End If
  Set 0 = Form2.baterky(var_28)
  Set  = Source()
  If (Source = var_28) Then
    global_62 = 1
  End If
  GoTo loc_00636D39
  Exit Sub
loc_00636D39:
End Sub

Private Sub výloha_Click() '645EB0
  If (Form2.sklo1.Visible = 0) Then
    Form2.text.Caption = "Úplne obycejná výloha, je v ní cedule na který stojí: Otevreno 24 hodin denne. To znamená, že maj otevreno i ted."
  End If
  If (Form2.sklo1.Visible = True) Then
    Form2.text.Caption = "Rozbitá výloha zrejme prodavace dost nasrala, zaujate si jí prohlíží"
  End If
  GoTo loc_00646039
  Exit Sub
loc_00646039:
End Sub

Private Sub výloha_DragDrop(Source As Control, X As Single, Y As Single) '646060
  Set Me = Form2.Kámen(var_44)
  Set 0 = Source(0)
  If (Source = var_44) Then
  End If
  Set 0 = Form2.Kámen.PictureBox(var_44)
  Set 0 = Source(0)
  If (var_54 = var_44) Then
    var_8010 = sndPlaySound(CStr("sklo.wav"), 1)
  End If
  Set 0 = Form2.Kámen.PictureBox(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source(0)
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.text.PictureBox.BackColor = "Udelal jsi do výlohy menší díru"
  End If
  Set 0 = Form2.Kámen(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source()
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.sklo2.PictureBox.Visible = True
  End If
  Set  = Form2.Kámen(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source()
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.ProdavaèLOOK.PictureBox.Visible = True
  End If
  Set  = Form2.Kámen(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source()
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.prodavaè.PictureBox.Visible = False
  End If
  Set  = Form2.Kámen(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source()
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.Kámen.PictureBox.Visible = False
  End If
  Set  = Form2.Kámen(var_44)
  var_88 = Form2.sklo1.Visible
  var_7C = (var_88 = 0)
  Set  = Source()
  If CBool((Source = var_44) And (var_88 = 0)) Then
    Form2.sklo1.PictureBox.Visible = True
  End If
  GoTo loc_006469A3
  Exit Sub
loc_006469A3:
End Sub

Private Sub šéf_Click() '642840
  Form2.text.Caption = "Spokojene zarezává. Agresivita roste"
  GoTo loc_006428D8
  Exit Sub
loc_006428D8:
End Sub

Private Sub šéf_DragDrop(Source As Control, X As Single, Y As Single) '642900
  Set Me = Form2.pistoleI(var_40)
  Set 0 = Source(0)
  If (Source = var_40) Then
    Form2.šéfGUN.PictureBox.Visible = True
  End If
  Set 0 = Form2.pistoleI(var_40)
  Set 0 = Source(0)
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Napálil si ro prímo do voka. Byla to docela rána"
  End If
  Set 0 = Form2.pistoleI(var_40)
  Set  = Source(0)
  If (Source = var_40) Then
    global_68 = 2
  End If
  Set 0 = Form2.pistoleI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
  End If
  Set  = Form2.pistoleI.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    var_801C = sndPlaySound(CStr("Shoot.wav"), 1)
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.šéfGUN.PictureBox.Visible = True
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Pekne si ho strelil prímo do oka. Ten tlumic tlumí slušne!"
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (Source = var_40) Then
    global_68 = 1
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
  End If
  Set  = Form2.PistoleII.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_803C = sndPlaySound(CStr("ShootTl.wav"), 1)
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.šéfSHOTGUN.PictureBox.Visible = True
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Prásk! Hlava se mu rozprskla po polštári! To byla ale rána"
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    global_68 = 2
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
  End If
  Set  = Form2.BrokovniceI.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_805C = sndPlaySound(CStr("Shoot.wav"), 1)
  End If
  GoTo loc_00643303
  Exit Sub
loc_00643303:
End Sub

Private Sub adolfI_Click() '6363C0
  Form2.text.PictureBox.BackColor = "To mu patrí parchantovi!"
  GoTo loc_00636458
  Exit Sub
loc_00636458:
End Sub

Private Sub leave_Click() '63EA40
  Form2.Uvnitø.Visible = False
  Form2.vchod.Visible = True
  Form2.text.Caption = "Vyšel jsi pred dum"
  GoTo loc_0063EB5A
  Exit Sub
loc_0063EB5A:
End Sub

Private Sub èíšníkubodán_Click() '6385A0
  Form2.text.Caption = "Tak tohle je ubodanej cíšník - odvedl jsi pekne krutou práci"
  GoTo loc_00638638
  Exit Sub
loc_00638638:
End Sub

Private Sub Image17_Click() '63B2E0
  Form2.text.Caption = "Šéfovi brejlicky"
  GoTo loc_0063B378
  Exit Sub
loc_0063B378:
End Sub

Private Sub Image16_Click() '63B1A0
  Form2.text.Caption = "Vrátil ses zpet"
  Form2.Poklopec.Visible = False
  Form2.Uvnitø.Visible = True
  GoTo loc_0063B2BA
  Exit Sub
loc_0063B2BA:
End Sub

Private Sub Image9_Click() '63C850
  Form2.text.Caption = "Tohle zlatícko stojí 15.000Kc, bohužel je na nem cedulka -RESERVÉ-"
  GoTo loc_0063C8E8
  Exit Sub
loc_0063C8E8:
End Sub

Private Sub èíšník_Click() '637460
  Form2.text.Caption = "CÍŠNÍK: Co tady chceš? Bud si neco kup nebo vypadni! Na takový jako seš tu nejsem zvedavej!"
  GoTo loc_006374F8
  Exit Sub
loc_006374F8:
End Sub

Private Sub èíšník_DragDrop(Source As Control, X As Single, Y As Single) '637520
  Set Me = Form2.lahev(var_40)
  Set 0 = Source(0)
  If (Source = var_40) Then
    Form2.èíšníkubodán.PictureBox.Visible = True
  End If
  Set 0 = Form2.lahev(var_40)
  Set 0 = Source(0)
  If (var_50 = var_40) Then
    global_58 = 0
  End If
  Set 0 = Form2.lahev.PictureBox(var_40)
  Set  = Source(0)
  If (Source = var_40) Then
  End If
  Set 0 = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    var_8018 = sndPlaySound(CStr("bum.wav"), 1)
  End If
  Set  = Form2.lahev.PictureBox(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Sice si parádne odrovnal toho grázla, ale v naplneným lokále to asi nebyl moc dobrej nápad"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.pivo.PictureBox.ToolTipText = "Sebrat pivo"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.whiskey.PictureBox.ToolTipText = "Sebrat whiskey"
  End If
  Set  = Form2.lahev(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.absinth.PictureBox.ToolTipText = "Sebrat absinth"
  End If
  Set  = Form2.baterky(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Di s tema baterkama do prdele!"
  End If
  Set  = Form2.baterka(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "To nechci"
  End If
  Set  = Form2.pistoleI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
  End If
  Set  = Form2.PistoleII(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
  End If
  Set  = Form2.BrokovniceI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Rozhodl ses, že zbytecne nebudeš plýtvat strelivem"
  End If
  Set  = Form2.zápalkyI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Ty zápalky si klidne nech"
  End If
  Set  = Form2.PivoI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "No, to je pivo co sis koupil. Tak si ho vypij a vypadni!"
  End If
  Set  = Form2.whiskeyI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Bež do píci a nech me na pokoji!"
  End If
  Set  = Form2.absinthI(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Já ten absinth nechci! Koupil sis ho tak vypadni!"
  End If
  Set  = Form2.atomovkaI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Helemese! Díky! Pripravím ji k odpálení, chlapci jsou v zadní místnosti, bež za nima/ukazuje na dvere za ním"
  End If
  Set  = Form2.atomovkaI(var_40)
  Set fs:[00000000h] = Source()
  If (Source = var_40) Then
    Form2.doROOM.PictureBox.Height = NAN
  End If
  Set  = Form2.atomovkaI(var_40)
  Set  = Source(fs:[00000000h])
  If (Source = var_40) Then
    Form2.atomovkaI.PictureBox.Visible = False
  End If
  Set fs:[00000000h] = Form2.KufrI(var_40)
  Set  = Source()
  If (var_50 = var_40) Then
    Form2.text.PictureBox.BackColor = "Ten kufr je hnusnej"
  End If
  Set  = Form2.tlumiè(var_40)
  Set  = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "Strc si ten tlumic do prdele a už me neser"
  End If
  Set  = Form2.klíè(var_40)
  Set 0 = Source()
  If (Source = var_40) Then
    Form2.text.PictureBox.BackColor = "The Roof, The Roof, The Roof is on fire, we don´t need no water let the motherfucker burn, burn motherfucker"
  End If
  GoTo loc_0063856D
  Exit Sub
loc_0063856D:
End Sub

Private Sub Image14_Click() '63AEA0
  Form2.vchod.Visible = True
  Form2.dùm.Visible = False
  Form2.text.Caption = "Prelezl si zed, stojíš pred zamcenými dvermi"
  GoTo loc_0063AFBA
  Exit Sub
loc_0063AFBA:
End Sub

Private Sub Image13_Click() '63AD60
  Form2.dùm.Visible = False
  Form2.mapa.Visible = True
  Form2.text.Caption = "Vyber si kam chceš jít"
  GoTo loc_0063AE7A
  Exit Sub
loc_0063AE7A:
End Sub

Private Sub Image12_Click() '63ACA0
  Form2.text.Caption = "m.pohl@worldonline.cz"
  GoTo loc_0063AD38
  Exit Sub
loc_0063AD38:
End Sub

Private Sub doROOM_Click() '638800
  Form2.tajnámístnost.Visible = True
  Form2.HospodaIN.Visible = False
  Form2.text.Caption = "Vešel jsi do místnosti. K tvému úžasu se v ní skrývají nejvetší padouchové sveta! Fidel Kastro, Josef Stalin a Adolf Hitler. Všichni jsou však ve špatné nálade, musíš je nejak rozveselit a pak už mužete odpálit jadernou hlavici!"
  GoTo loc_0063891A
  Exit Sub
loc_0063891A:
End Sub

Private Sub vesmír_Click() '645BA0
  Form2.text.Caption = "Tyhle cáry sem napsali oni! Mimozemštany! Sledujou nás, vedej vo nás, vláda o nich taky ví, ale neche nám nic ríct! A co pyramidy? To postavili mimozemštani! Maj dokonce orbitální stanice kolem naší maticky Zeme!!!"
  GoTo loc_00645C38
  Exit Sub
loc_00645C38:
End Sub

Private Sub lahev_DblClick() '63E980
  Form2.text.Caption = "Obycejná láhev od piva, akorát rozbitá. Dala by se využít jako zbran"
  GoTo loc_0063EA18
  Exit Sub
loc_0063EA18:
End Sub

Private Sub icp_Click() '639C10
  Form2.text.Caption = "INSANE CLOWN POSSE - www.insaneclownposse.com, viva la juggalos, 6th joker´s card, Shangri-La"
  GoTo loc_00639CA8
  Exit Sub
loc_00639CA8:
End Sub

Private Sub rukaviceI_Click() '6423F0
  Form2.text.Caption = "To že máš rukavice v inventári znamená, že je máš nasazené"
  GoTo loc_00642488
  Exit Sub
loc_00642488:
End Sub

Private Sub fidelI_Click() '6396E0
  Form2.text.Caption = "Se zapálenym havanem vypadá štastne"
  GoTo loc_00639778
  Exit Sub
loc_00639778:
End Sub

Private Sub skrytoš_Click() '6424B0
  Form2.text.Caption = "Všimnul sis kamery skryté v kytce. Je to štestí, protože jinak by si mel asi smulu"
  GoTo loc_00642548
  Exit Sub
loc_00642548:
End Sub

Private Sub skrytoš_DragDrop(Source As Control, X As Single, Y As Single) '642570
  Set Me = Form2.kleštìI(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.text.PictureBox.BackColor = "Zneškodnil si skrytou kameru"
  End If
  Set 0 = Form2.kleštìI(var_28)
  Set 0 = Source(0)
  If (Source = var_28) Then
    Form2.skrytoš.PictureBox.Height = 0
  End If
  GoTo loc_0064275B
  Exit Sub
loc_0064275B:
End Sub

Private Sub nápis_Click() '63EB80
  Form2.text.Caption = "Na ceduli cteš: U Dvou Hlav. Pripadá ti to jako úplne nejzkurvenejší název pro hospodu"
  GoTo loc_0063EC18
  Exit Sub
loc_0063EC18:
End Sub

Private Sub Timer1_Timer() '6437B0
  Form2.money.text = moneylong
  
  If moneylong <= 0 Then
      a = MsgBox("Bohužel si utratil veškerý peníze, bez penez ni nedokážeš. Koncís", 0, 10, 10, 10)
      End
  End If
  
  If global_70 = 3 Then
    Form2.PoklopSPECIAL.Visible = False
    If global_70 = 3 Then
      Form2.Tlaèítko.Visible = True
    End If
  End If
  ' GoTo loc_006439AC
End Sub

Private Sub kpoklopu_Click() '63E100
  Form2.text.Caption = "Stojíš u takovýho podivnýho koberce"
  Form2.Poklopec.Visible = True
  Form2.Uvnitø.Visible = False
  GoTo loc_0063E21A
  Exit Sub
loc_0063E21A:
End Sub

Private Sub surmaj_Click() '642780
  Form2.text.Caption = "CHCÍPNI KURVO SURMAJSKÁ...... HA HA HA HA.... RUMBURK CITY RAPRESSENT ....HA....MY NAME IS MARTY, BIATCH! WRITE ME AN EMAIL YOU FUCKER! m.pohl@worldonline.cz"
  GoTo loc_00642818
  Exit Sub
loc_00642818:
End Sub

Private Sub batérky_Click() '636D60
  Form2.batérky.Visible = False
  Form2.baterky.Visible = True
  Form2.text.Caption = "Sebral baterky"
  GoTo loc_00636E7A
  Exit Sub
loc_00636E7A:
End Sub

Private Sub Fidel_Click() '638EB0
  Form2.text.Caption = " Tak tohle je Fidel Kastro! Komoušskej kápo. Vypadá docela smutne"
  GoTo loc_00638F48
  Exit Sub
loc_00638F48:
End Sub

Private Sub Fidel_DragDrop(Source As Control, X As Single, Y As Single) '638F70
  Set Me = Form2.zápalkyI(var_28)
  var_60 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 3)) Then
    Form2.PoklopSPECIAL.PictureBox.Visible = False
  End If
  Set 0 = Form2.zápalkyI(var_28)
  var_60 = (global_70 = 3)
  Set 0 = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 3)) Then
    Form2.Tlaèítko.PictureBox.Height = NAN
  End If
  Set 0 = Form2.zápalkyI(var_28)
  var_60 = (global_70 = 2)
  Set  = Source(0)
  If CBool((var_38 = var_28) And (global_70 = 2)) Then
    global_70 = 3
  End If
  Set 0 = Form2.zápalkyI.PictureBox(var_28)
  var_60 = (global_70 = 1)
  Set  = Source()
  If CBool((var_38 = var_28) And (global_70 = 1)) Then
    global_70 = 2
  End If
  Set  = Form2.zápalkyI.PictureBox(var_28)
  var_60 = (global_70 = 0)
  Set  = Source()
  If CBool((var_38 = var_28) And (global_70 = 0)) Then
    global_70 = 1
  End If
  Set  = Form2.zápalkyI.PictureBox(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.fidelI.PictureBox.Visible = True
  End If
  Set  = Form2.zápalkyI(var_28)
  Set  = Source()
  If (var_38 = var_28) Then
    Form2.text.PictureBox.BackColor = "Ah, zapálil jsi mu doutnícka, ted už je spokojenej"
  End If
  Set  = Form2.zápalkyI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.Fidel.PictureBox.Height = 0
  End If
  Set  = Form2.zápalkyI(var_28)
  Set  = Source()
  If (Source = var_28) Then
    Form2.zápalky.PictureBox.Visible = False
  End If
  GoTo loc_006396BA
  Exit Sub
loc_006396BA:
End Sub

Private Sub whiskey_Click() '6469D0
  Form2.whiskey.Visible = False
  Form2.whiskeyI.Visible = True
  If global_58 = 1 Then
    Form2.text.Caption = "Za 500 Kc sis koupil lahvinku Whiskey"
    If global_58 = 1 Then
      moneylong = CStr((moneylong - 500))
    End If
  End If
  If global_58 = 0 Then
    Form2.text.Caption = "Vzal sis Whiskey"
  End If
  GoTo loc_00646B99
  Exit Sub
loc_00646B99:
End Sub

Private Sub zápalky_Click() '646BC0
  Form2.text.Caption = "Sebral jsi krabicku zápalek, vypadá že je úplne plná"
  Form2.zápalky.Visible = False
  Form2.zápalkyI.Visible = True
  GoTo loc_00646CDA
  Exit Sub
loc_00646CDA:
End Sub

Private Sub Proc_1_114_63F4A0() '63F4A0

End Sub
