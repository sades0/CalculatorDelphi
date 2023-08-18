unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTCalculadora = class(TForm)
    TEHistorico: TEdit;
    TEOperacao: TEdit;
    BtnPorcentagem: TButton;
    BtnNumero7: TButton;
    BtnNumero4: TButton;
    BtnNumero1: TButton;
    BtnInverter: TButton;
    BtnClearAll: TButton;
    BtnNumero8: TButton;
    BtnNumero5: TButton;
    BtnNumero2: TButton;
    BtnNumero0: TButton;
    BtnClear: TButton;
    BtnNumero9: TButton;
    BtnNumero6: TButton;
    BtnNumero3: TButton;
    BtnVirgula: TButton;
    BtnDivisao: TButton;
    BtnMultiplicacao: TButton;
    BtnSubtracao: TButton;
    BtnSoma: TButton;
    BtnIgual: TButton;
    procedure Numero(Sender: TObject);
    procedure BtnClearAllClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnInverterClick(Sender: TObject);
    procedure BtnPorcentagemClick(Sender: TObject);
    procedure BtnVirgulaClick(Sender: TObject);
    procedure EVOperacao(Sender: TObject);
    procedure EvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function Somar(v1, v2: Real): Real;
    function Subtrair(v1, v2: Real): Real;
    function Multiplicar(v1, v2: Real): Real;
    function Dividir(v1, v2: Real): Real;
  public
    { Public declarations }
  end;

var
  TCalculadora: TTCalculadora;
  Valor1: Real;
  Valor2: Real;
  Temp: Real;
  Operacao: char;

implementation

{$R *.dfm}

// Bot�o CL para limpar tudo.
procedure TTCalculadora.BtnClearAllClick(Sender: TObject);
begin
  TEHistorico.Clear;
  TEOperacao.Clear;
  Temp := 0;
  TEOperacao.SetFocus;
end;

procedure TTCalculadora.BtnClearClick(Sender: TObject);
begin
  TEOperacao.Clear;
  TEOperacao.SetFocus;
end;

procedure TTCalculadora.EvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ADD then
    BtnSoma.Click;
  if Key = VK_SUBTRACT then
    BtnSubtracao.Click;
  if Key = VK_MULTIPLY then
    BtnMultiplicacao.Click;
  if Key = VK_DIVIDE then
    BtnDivisao.Click;
  if Key = VK_RETURN then
    BtnIgual.Click;
end;

procedure TTCalculadora.BtnIgualClick(Sender: TObject);
begin
  if TEHistorico.Text = EmptyStr then
  begin
    ShowMessage('Valor Invalido para calculo')
  end
  else
  begin
    Valor1 := Temp;
    Valor2 := StrToFloat(TEOperacao.Text);
    case (Operacao) of
      '+':
        Temp := Somar(Valor1, Valor2);
      '-':
        Temp := Subtrair(Valor1, Valor2);
      'X':
        Temp := Multiplicar(Valor1, Valor2);
      '/':
        Temp := Dividir(Valor1, Valor2);
    end;
    TEHistorico.Text := FloatToStr(Temp);
    TEOperacao.Clear;
    TEOperacao.SetFocus;
  end;

end;

procedure TTCalculadora.BtnInverterClick(Sender: TObject);
begin
  if TEHistorico.Text <> EmptyStr then
  begin
    Temp := Temp * -1;
    TEHistorico.Text := FloatToStr(Temp);
    TEOperacao.SetFocus;
  end;

end;

// Evento para bot�es numericos.
procedure TTCalculadora.Numero(Sender: TObject);
begin
  TEOperacao.Text := TEOperacao.Text + (Sender as TButton).Caption;
  TEOperacao.SetFocus;
end;

procedure TTCalculadora.BtnPorcentagemClick(Sender: TObject);
var
  porcentagem: Real;
begin

  if TEOperacao.Text = EmptyStr then
    ShowMessage('Valor invalido')
  else
  begin
    porcentagem := Temp * (StrToFloat(TEOperacao.Text) / 100);
    TEHistorico.Text := TEHistorico.Text + FloatToStr(porcentagem);
    TEOperacao.Text := FloatToStr(porcentagem);
  end;
  TEOperacao.SetFocus;
end;

// Evento para bot�es de opera��o.
procedure TTCalculadora.EVOperacao(Sender: TObject);
begin
  var
    ope: string;

  begin
    ope := (Sender as TButton).Caption;
    Operacao := ope[1];
    if TEHistorico.Text = EmptyStr then
    begin
      try
        Valor1 := StrToFloat(TEOperacao.Text);
        TEHistorico.Text := TEOperacao.Text + (Sender as TButton).Caption;
        Temp := Valor1;
        TEOperacao.Clear;
        TEOperacao.SetFocus;
      except
        ShowMessage('Insira valor para calculo!');
      end;
    end
    else
    begin
      if TEOperacao.Text = EmptyStr then
        TEHistorico.Text := TEHistorico.Text + (Sender as TButton).Caption
      else
      begin
        Valor2 := StrToFloat(TEOperacao.Text);
        Valor1 := Temp;
        BtnIgual.Click;
      end;

    end;

  end;
end;

procedure TTCalculadora.BtnVirgulaClick(Sender: TObject);
begin
  if TEOperacao.Text = EmptyStr then
    TEOperacao.Text := '0'
  else
    TEOperacao.Text := TEOperacao.Text + (Sender as TButton).Caption;
  TEOperacao.SetFocus;
end;

// Fun��es de Calculos.
function TTCalculadora.Somar(v1: Real; v2: Real): Real;
begin
  Result := v1 + v2;
  TEOperacao.SetFocus;

end;

function TTCalculadora.Subtrair(v1: Real; v2: Real): Real;
begin
  Result := v1 - v2;
  TEOperacao.SetFocus;
end;

function TTCalculadora.Multiplicar(v1: Real; v2: Real): Real;
begin
  Result := v1 * v2;
  TEOperacao.SetFocus;
end;

function TTCalculadora.Dividir(v1: Real; v2: Real): Real;
begin
  try
    Result := v1 / v2;
  except
    ShowMessage('Valor n�o divisivel');
    Abort;
  end;
  TEOperacao.SetFocus;
end;

end.
