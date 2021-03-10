unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ComCtrls, EditBtn, SynEdit, SynHighlighterCpp, SynHighlighterJava,
  SynHighlighterJScript, SynHighlighterHTML, DateTimePicker, SynEditTypes;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    FindDialog1: TFindDialog;
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    ReplaceDialog1: TReplaceDialog;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    SynCppSyn1: TSynCppSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynJavaSyn1: TSynJavaSyn;
    procedure Button1Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);

    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
    procedure SynEdit1ChangeUpdating(ASender: TObject; AnUpdating: Boolean);
    procedure TimeEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FileWork: String;

implementation

{$R *.lfm}

Procedure SaveAs;
begin
  Form1.Caption := 'saving';
  If Form1.SaveDialog1.Execute then
  begin
    Form1.SynEdit1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
    FileWork:=Form1.SaveDialog1.FileName;
  end;
end;

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  ShowMessage('Создатели:Басалаев Ю.А. и Клепцов Д.С.(акей 2 Криворуких дурачка).Versia 0.0.0.2');
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  Form1.SynEdit1.Highlighter:=SynCppSyn1;
  //if MenuItem22.Checked=true then begin
    //Form1.SynEdit1.Highlighter:=SynCppSyn1;
 // end;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  Form1.SynEdit1.Highlighter:=SynJavaSyn1;
  //if MenuItem23.Checked=true then begin
    //Form1.SynEdit1.Highlighter:=SynJavaSyn1;

  //end;
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  //Form1.Caption := 'HTML highlighter';
  Form1.SynEdit1.Highlighter:=SynHTMLSyn1;


end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
     Form1.MenuItem1.Caption:='Файл';
    Form1.MenuItem2.Caption:='Правка';
    Form1.MenuItem3.Caption:='Форма';
    Form1.MenuItem4.Caption:='Cоздать';
    Form1.MenuItem5.Caption:='Открыть';
    Form1.MenuItem6.Caption:='Сохранить';
    Form1.MenuItem7.Caption:='Сохранить как';
    Form1.MenuItem8.Caption:='Выход';
    Form1.MenuItem9.Caption:='Вырезать';
    Form1.MenuItem10.Caption:='Копировать';
    Form1.MenuItem11.Caption:='Вставить';
    Form1.MenuItem12.Caption:='Тема';
    Form1.MenuItem13.Caption:='Шрифт';
    Form1.MenuItem14.Caption:='Найти';
    Form1.MenuItem15.Caption:='Выделить все';
    Form1.MenuItem16.Caption:='Поиск';
    Form1.MenuItem17.Caption:='Справка';
    Form1.MenuItem18.Caption:='Заменить';
    Form1.MenuItem19.Caption:='Справка';
    Form1.MenuItem20.Caption:='О программе';
    Form1.MenuItem21.Caption:='Язык';
    Form1.MenuItem28.Caption:='Белый';
    Form1.MenuItem29.Caption:='Розовый';
    Form1.MenuItem30.Caption:='Бирюзовый';
    Form1.Button1.Caption:='Время';

end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
    Form1.MenuItem1.Caption:='File';
    Form1.MenuItem2.Caption:='Edit';
    Form1.MenuItem3.Caption:='Form';
    Form1.MenuItem4.Caption:='Create';
    Form1.MenuItem5.Caption:='Open';
    Form1.MenuItem6.Caption:='Save';
    Form1.MenuItem7.Caption:='Save as..';
    Form1.MenuItem8.Caption:='Exit';
    Form1.MenuItem9.Caption:='Cut';
    Form1.MenuItem10.Caption:='Copy';
    Form1.MenuItem11.Caption:='Paste';
    Form1.MenuItem12.Caption:='Theme';
    Form1.MenuItem13.Caption:='Font';
    Form1.MenuItem14.Caption:='To find';
    Form1.MenuItem15.Caption:='Highlight all';
    Form1.MenuItem16.Caption:='Search';
    Form1.MenuItem17.Caption:='Refernce';
    Form1.MenuItem18.Caption:='Replace';
    Form1.MenuItem19.Caption:='Ref';
    Form1.MenuItem20.Caption:='About program';
    Form1.MenuItem21.Caption:='Langhuage';
    Form1.MenuItem28.Caption:='Withe';
    Form1.MenuItem29.Caption:='Pink';
    Form1.MenuItem30.Caption:='Turquoise';
    Form1.Button1.Caption:='Time';
    //Form1.MenuItem25.Caption:='File';

end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
    Form1.SynEdit1.Color:=clWhite;
    Form1.Color:=clWhite;
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin
     Form1.SynEdit1.Color:=clFuchsia;
     Form1.Color:=clFuchsia;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
      //Form1.SynEdit1.Color:=clGradientActiveCaption;
end;

procedure TForm1.MenuItem30Click(Sender: TObject);


begin

     Form1.SynEdit1.Color:=clGradientActiveCaption;
     Form1.Color:=clGradientActiveCaption;

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(DateTimeToStr(Now));
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var selStart, selEnd : integer;

begin
  //Synedit1.HideSelection:=False;
  selStart:=POS(FindDialog1.FindText,SynEdit1.Text);
  selStart:=selStart+Length(FindDialog1.FindText);
  Synedit1.SelStart:=selStart;
  Synedit1.SelEnd:=SelEnd;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  If FileWork='' then SaveAs else SynEdit1.Lines.SaveToFile(FileWork);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  ReplaceDialog1.Execute

end;


procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
///Memo1.WordWrap.True = not(Memo1.WordWrap.True);
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  if FontDialog1.Execute then SynEdit1.Font:=FontDialog1.Font;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  FindDialog1.Execute
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;



procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  ShowMessage('Горячих клавишь нет. Пользоваться программой не надо!');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin

  If FileWork='' then  SaveAs else SynEdit1.Lines.SaveToFile(FileWork);
  FileWork:='';
  SynEdit1.Clear;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    FileWork:=OpenDialog1.FileName;
  end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  If FileWork='' then SaveAs else SynEdit1.Lines.SaveToFile(FileWork);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  SaveAs;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  If FileWork='' then SaveAs else SynEdit1.Lines.SaveToFile(FileWork);
  Close;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  SynEdit1.CutToClipboard;
end;

procedure TForm1.ReplaceDialog1Find(Sender: TObject);
 //var selStart, selEnd : integer;
begin
  //Synedit1.HideSelection:=False;
  //selStart:=POS(ReplaceDialog1.FindText,SynEdit1.Text);
  //selStart:=selStart+Length(ReplaceDialog1.FindText);
  //Synedit1.SelStart:=selStart;
  //Synedit1.SelEnd:=SelEnd;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
begin
  SynEdit1.SearchReplace(ReplaceDialog1.FindText,ReplaceDialog1.ReplaceText,[ssoReplace,ssoPrompt]);
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.SynEdit1ChangeUpdating(ASender: TObject; AnUpdating: Boolean);
begin

end;

procedure TForm1.TimeEdit1Change(Sender: TObject);
begin
     ShowMessage(DateTimeToStr(Now));

end;


end.

