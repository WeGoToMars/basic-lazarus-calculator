unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    ButtonInputMinus: TButton;
    ButtonMEM1: TButton;
    ButtonDot: TButton;
    ButtonClr: TButton;
    ButtonEquals: TButton;
    ButtonMEM2: TButton;
    ButtonMEM3: TButton;
    ButtonOUT1: TButton;
    ButtonOUT2: TButton;
    ButtonOUT3: TButton;
    ButtonMult: TButton;
    ButtonDivide: TButton;
    ButtonPlus: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonMinus: TButton;
    ButtonSqrt: TButton;
    ButtonSqrt1: TButton;
    ButtonSqrt2: TButton;
    ButtonSqrt3: TButton;
    ButtonSqrt4: TButton;
    ButtonSqrt5: TButton;
    display: TEdit;
    MEMText1: TEdit;
    MEMText2: TEdit;
    MEMText3: TEdit;
    procedure ButtonClick(Sender: TObject);
    procedure ButtonSepClick(Sender: TObject);
    procedure ButtonClrClick(Sender: TObject);
    procedure ButtonEqualsClick(Sender: TObject);
    procedure ButtonMEMClick(Sender: TObject);
    procedure ButtonSingularOperationClick(Sender: TObject);
    procedure ButtonOperationClick(Sender: TObject);
    procedure ButtonOUTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

const maxn = 100;
type TLong = record
    sign: Char;
    number: array[1..maxn + 1] of ShortInt;
    len: Word;
end;

var
  Form1: TForm1;
  var var1:longint;
  var var1float:double;
  var oper, var1type:string;

implementation

{$R *.lfm}

procedure TForm1.ButtonClick(Sender: TObject);
begin
  display.Text:=concat(display.Text,TButton(Sender).Caption);
end;

procedure TForm1.ButtonSepClick(Sender: TObject);
begin
  if pos('.',display.Text) = 0 then display.Text:=concat(display.Text,'.');
end;

procedure TForm1.ButtonClrClick(Sender: TObject);
begin
  display.Text:='';
end;

procedure TForm1.ButtonEqualsClick(Sender: TObject);
begin
  DecimalSeparator:='.';
  //debug.Text:= longtostr(add_abs(inttolong(1),inttolong(2)));
  //debug.Text:= ord([i]);
  if var1type = 'int' then begin
    if pos('.',display.Text) = 0 then begin
      case (oper) of //int x int [to use long]
           '+' : display.Text:=inttostr(var1+strtoint(display.Text));
           '-' : display.Text:=inttostr(var1-strtoint(display.Text));
           '*' : display.Text:=inttostr(var1*strtoint(display.Text));
           '/' : if display.text<>'0' then display.Text:=floattostr(var1/strtoint(display.Text)) else display.text:='DIV BY 0 ERR';
           '√' : if var1>0 then display.Text:=floattostr(sqrt(var1)) else display.text:='SQRT ERR';
           '^2' : display.Text:=inttostr(sqr(var1));
           'sin' : display.Text:=floattostr(sin(var1));
           'cos' : display.Text:=floattostr(cos(var1));
           'ln' : display.Text:=floattostr(ln(var1));
           'exp' : display.Text:=floattostr(exp(var1));
      end;
    end else begin
      case (oper) of //int x float
             '+' : display.Text:=floattostr(var1+strtofloat(display.Text));
             '-' : display.Text:=floattostr(var1-strtofloat(display.Text));
             '*' : display.Text:=floattostr(var1*strtofloat(display.Text));
             '/' : if display.text<>'0' then display.Text:=floattostr(var1/strtofloat(display.Text)) else display.text:='DIV BY 0 ERR';
      end;
    end;
  end else begin
      case (oper) of //float x float
             '+' : display.Text:=floattostr(var1float+strtofloat(display.Text));
             '-' : display.Text:=floattostr(var1float-strtofloat(display.Text));
             '*' : display.Text:=floattostr(var1float*strtofloat(display.Text));
             '/' : if display.text<>'0' then display.Text:=floattostr(var1float/strtofloat(display.Text)) else display.text:='DIV BY 0 ERR';
             '√' : if var1float>0 then display.Text:=floattostr(sqrt(var1float)) else display.text:='SQRT ERR';
             '^2' : display.Text:=floattostr(sqr(var1float));
             'sin' : display.Text:=floattostr(sin(var1float));
             'cos' : display.Text:=floattostr(cos(var1float));
             'ln' : display.Text:=floattostr(ln(var1float));
             'exp' : display.Text:=floattostr(exp(var1float));
      end;
  end;
end;

procedure TForm1.ButtonMEMClick(Sender: TObject);
begin
  case (TButton(Sender).caption[4]) of
         '1': MEMText1.Text:=display.Text;
         '2': MEMText2.Text:=display.Text;
         '3': MEMText3.Text:=display.Text;
  end;
end;

procedure TForm1.ButtonSingularOperationClick(Sender: TObject);
begin
     DecimalSeparator:='.';
     var1float:=StrToFloat(display.Text);
     var1type:='float';
     oper:= TButton(Sender).caption;
     ButtonEqualsClick(Sender);
end;

procedure TForm1.ButtonOperationClick(Sender: TObject);
begin
  if pos('.',display.Text) = 0 then begin
     var1:=StrToInt(display.Text);
     var1type:='int';
  end

  else begin
      DecimalSeparator:='.';
      var1float:=StrToFloat(display.Text);
      var1type:='float';
  end;

  display.Text:='';
  oper:= TButton(Sender).caption;
end;

procedure TForm1.ButtonOUTClick(Sender: TObject);
begin
  case (TButton(Sender).caption[4]) of
         '1': display.Text:=MEMText1.Text;
         '2': display.Text:=MEMText2.Text;
         '3': display.Text:=MEMText3.Text;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Form1.Caption := 'Calculator';
     Application.Title:='Calculator';
end;

end.

