unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  cxClasses, cxLookAndFeels, dxSkinsForm, Vcl.ComCtrls, cxGraphics,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit, Vcl.ExtCtrls, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, cxCalendar, DateUtils;

type
  TfrmPrincipal = class(TForm)
    ProgressBar: TProgressBar;
    btnStart: TcxButton;
    cxLabel1: TcxLabel;
    lblFinalizado: TcxLabel;
    spinTempo: TcxSpinEdit;
    cxLabel2: TcxLabel;
    cmbVelocidade: TcxComboBox;
    cxLabel3: TcxLabel;
    Relogio: TcxClock;
    cxComboBox1: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    sTimer: TTimer;
    lblCLock: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    btnCancelar: TcxButton;
    procedure btnStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    MinhaThread : TThread;
    tempoExecucao : TDateTime;
    ExecutaRelogio : TTimer;
    procedure Termino(Sender: TObject);
    procedure incTempoExecucao(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  tempoExecucao := StrToDateTime(FormatDateTime('HH:mm:ss', StrToTime('00:00:00')));
  Relogio.Time := tempoExecucao;
  sTimer.Enabled := false;
end;

procedure TfrmPrincipal.incTempoExecucao(Sender: TObject);
begin
  tempoExecucao := incSecond(tempoExecucao, 1);
  Relogio.Time := StrToDateTime(FormatDateTime('HH:mm:ss', tempoExecucao));;
  lblCLock.Caption := FormatDateTime('HH:mm:ss', tempoExecucao);
end;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  MinhaThread.Terminate;
end;

procedure TfrmPrincipal.btnStartClick(Sender: TObject);
begin
  lblFinalizado.Visible := false;
  ProgressBar.Max       := spinTempo.Value;
  ProgressBar.Position  := 0;

  MinhaThread := TThread.CreateAnonymousThread(
    procedure
    begin

      TThread.Queue(nil,
        procedure
        begin
          ExecutaRelogio := TTimer.Create(nil);
          ExecutaRelogio.OnTimer := incTempoExecucao;
          ExecutaRelogio.Enabled := true;
        end
      );

      {TThread.Synchronize(nil,
        procedure
        var
          i : integer;
        begin
          for i := 0 to spinTempo.Value do
          begin
//            case cmbVelocidade.ItemIndex of
//              0 : sleep(Round(1000/1));
//              1 : sleep(Round(1000/2));
//              2 : sleep(Round(1000/3));
//              3 : sleep(Round(1000/5));
//              4 : sleep(Round(1000/10));
//              5 : sleep(Round(1000/50));
//              6 : sleep(Round(1000/100));
//              7 : sleep(Round(1000/200));
//              8 : sleep(Round(1000/500));
//              9 : sleep(Round(1000/1000));
//            end;
            sleep(Round(1));
            ProgressBar.Position := i;
          end;
        end
      );  }

    end
  );

  tempoExecucao                := StrToDateTime(FormatDateTime('HH:mm:ss', StrToTime('00:00:00')));
  Relogio.Time                 := tempoExecucao;
  sTimer.Enabled               := true;

  MinhaThread.FreeOnTerminate  := true;
  MinhaThread.OnTerminate      := Termino;
  MinhaThread.Start;
end;

procedure TfrmPrincipal.Termino(Sender: TObject);
begin
  lblFinalizado.Visible := true;
  ExecutaRelogio.Enabled := true;
  sTimer.Enabled := false;
  tempoExecucao := StrToDateTime(FormatDateTime('HH:mm:ss', StrToTime('00:00:00')));
  Relogio.Time := tempoExecucao;
  lblCLock.Caption := '00:00:00';
end;

end.
