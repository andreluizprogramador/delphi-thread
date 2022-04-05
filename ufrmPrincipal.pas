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
    cxButton1: TcxButton;
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
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sTimerTimer(Sender: TObject);
  private
    MinhaThread : TThread;
    procedure Termino(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Relogio.Time := StrToTime('00:00:00');
  sTimer.Enabled := false;
end;

procedure TfrmPrincipal.sTimerTimer(Sender: TObject);
begin
  Relogio.Time := incSecond(Relogio.Time, 100);
end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
begin
  lblFinalizado.Visible := false;
  MinhaThread := TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize(nil,
        procedure
        var
          i : integer;
        begin
          ProgressBar.Max := spinTempo.Value;
          Relogio.Time := StrToTime('00:00:00');
          sTimer.Enabled := true;
          for i := 0 to spinTempo.Value do
          begin
            case cmbVelocidade.ItemIndex of
              0 : sleep(Round(spinTempo.Value/1));
              1 : sleep(Round(spinTempo.Value/2));
              2 : sleep(Round(spinTempo.Value/3));
              3 : sleep(Round(spinTempo.Value/5));
              4 : sleep(Round(spinTempo.Value/10));
              5 : sleep(Round(spinTempo.Value/50));
            end;
            ProgressBar.Position := i;
          end;
        end
      );
    end
  );

  MinhaThread.FreeOnTerminate := true;
  MinhaThread.OnTerminate := Termino;
  MinhaThread.Start;
end;

procedure TfrmPrincipal.Termino(Sender: TObject);
begin
  lblFinalizado.Visible := true;
  sTimer.Enabled := false;
  Relogio.Time := StrToTime('00:00:00');
end;

end.
