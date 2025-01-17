object MainProxyForm: TMainProxyForm
  Left = 0
  Top = 0
  Caption = 'MainProxyForm'
  ClientHeight = 614
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyUp = FormKeyUp
  DesignSize = (
    906
    614)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 402
    Height = 19
    Caption = 'This demo will create a proxy server with a built-in client'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 91
    Width = 51
    Height = 13
    Caption = 'Proxy port'
  end
  object lblLink: TLabel
    Left = 132
    Top = 49
    Width = 269
    Height = 19
    Cursor = crHandPoint
    Caption = 'https://jsonplaceholder.typicode.com/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblLinkClick
  end
  object Label3: TLabel
    Left = 16
    Top = 47
    Width = 110
    Height = 19
    Caption = 'Test data from:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SourceMemo: TMemo
    Left = 8
    Top = 160
    Width = 433
    Height = 299
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      '{'
      '  users(id:1) {'
      '    id'
      '    name'
      '    address {'
      '      city'
      '    }'
      '  }'
      '  todos(userId:1,completed:true) {'
      '    id'
      '    title'
      '  }'
      '}')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object RunQueryButton: TButton
    Left = 8
    Top = 559
    Width = 153
    Height = 47
    Anchors = [akLeft, akBottom]
    Caption = 'Run GraphQL query (F5)'
    TabOrder = 1
    OnClick = RunQueryButtonClick
    ExplicitTop = 464
  end
  object ResultMemo: TMemo
    Left = 459
    Top = 160
    Width = 439
    Height = 299
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  object btnStart: TButton
    Left = 200
    Top = 82
    Width = 89
    Height = 34
    Caption = 'Start'
    TabOrder = 3
    OnClick = btnStartClick
  end
  object btnStop: TButton
    Left = 295
    Top = 82
    Width = 89
    Height = 34
    Caption = 'Stop'
    TabOrder = 4
    OnClick = btnStopClick
  end
  object edtPort: TEdit
    Left = 73
    Top = 88
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = '8081'
  end
  object memLog: TMemo
    Left = 8
    Top = 465
    Width = 890
    Height = 88
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
    ExplicitTop = 431
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams, hoNoParseMetaHTTPEquiv, hoNoProtocolErrorException, hoWantProtocolErrorContent]
    Left = 432
    Top = 88
  end
end
