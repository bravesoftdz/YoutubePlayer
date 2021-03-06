unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls, Menus, XMLPropStorage, DBGrids, ZConnection, ZDataset,
  ZSqlProcessor, MPlayerCtrl, CsvParser, ExtMessage, ZTransaction, UOSEngine,
  UOSPlayer, PointerTab, NetSocket, LiveTimer, DBSchemaSyncSqlite, Presentation,
  ConsMixer, DirectoryPack, FullscreenMenu, ExtShutdown, Types, db, process,
  Grids, ComCtrls, DBCtrls, ueled, uEKnob, TplProgressBarUnit, lNet, rxclock;

type

  { TForm1 }

  TForm1 = class(TForm)
    add_rec0: TZSQLProcessor;
    add_rec2: TZSQLProcessor;
    BExit: TSpeedButton;
    filmyidnext: TZSQLProcessor;
    czasy_notnull: TZQuery;
    czasyfilm1: TLargeintField;
    czasyid1: TLargeintField;
    czasynazwa1: TMemoField;
    czasy_notnullczas2: TLargeintField;
    czasy_notnullczas_do: TLargeintField;
    czasy_notnullczas_od: TLargeintField;
    DBGrid3: TDBGrid;
    DBText1: TDBText;
    db_rozautosort: TLargeintField;
    db_rozfilm_id: TLargeintField;
    DirectoryPack1: TDirectoryPack;
    cShutdown: TExtShutdown;
    filmylang: TMemoField;
    filmyposition: TLargeintField;
    fmenu: TFullscreenMenu;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem69: TMenuItem;
    MenuItem70: TMenuItem;
    MenuItem71: TMenuItem;
    MenuItem72: TMenuItem;
    MenuItem73: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    mixer: TConsMixer;
    czasyczas2: TLargeintField;
    czasyczas_do: TLargeintField;
    czasyczas_od: TLargeintField;
    czasyc_flagi: TStringField;
    czasyfile_audio: TMemoField;
    czasyfilm: TLargeintField;
    czasyid: TLargeintField;
    czasynazwa: TMemoField;
    czasystatus: TLargeintField;
    cRozdzialy: TPanel;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    SoundLevel: TEdit;
    Label8: TLabel;
    MenuItem63: TMenuItem;
    MenuItem65: TMenuItem;
    pp1: TplProgressBar;
    Presentation: TPresentation;
    RxClock1: TRxClock;
    schemasync: TDBSchemaSyncSqlite;
    filmyaudio: TLargeintField;
    filmyaudioeq: TMemoField;
    filmyfile_audio: TMemoField;
    filmyglosnosc: TLargeintField;
    filmyosd: TLargeintField;
    filmyresample: TLargeintField;
    filmystatus: TLargeintField;
    filmywzmocnienie: TBooleanField;
    film_play: TZQuery;
    Label7: TLabel;
    MenuItem15: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem60: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem64: TMenuItem;
    miPlayer: TMenuItem;
    miRecord: TMenuItem;
    miPresentation: TMenuItem;
    N6: TMenuItem;
    N5: TMenuItem;
    N4: TMenuItem;
    SaveDialogFilm: TSaveDialog;
    SelDirPic: TSelectDirectoryDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    tzegar: TTimer;
    timer_obrazy: TTimer;
    timer_info_tasmy: TIdleTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memory_1: TSpeedButton;
    Memory_2: TSpeedButton;
    Memory_3: TSpeedButton;
    Memory_4: TSpeedButton;
    MenuItem36: TMenuItem;
    N1: TMenuItem;
    oo: TplProgressBar;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Play: TSpeedButton;
    PlayRec: TSpeedButton;
    podpowiedz: TLabel;
    podpowiedz2: TLabel;
    pp: TplProgressBar;
    ProgressBar1: TProgressBar;
    Rewind: TSpeedButton;
    Stop: TSpeedButton;
    tasma_add: TZQuery;
    tasma: TZQuery;
    tasma_clear: TZSQLProcessor;
    filmy3: TZQuery;
    filmy_roz: TZQuery;
    LiveTimer: TLiveTimer;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    tcp: TNetSocket;
    rename_id1: TZSQLProcessor;
    roz_del1: TZSQLProcessor;
    rfilmy: TIdleTimer;
    ppp: TPointerTab;
    roz_del2: TZSQLProcessor;
    filmyc_plik_exist: TBooleanField;
    filmyid: TLargeintField;
    filmylink: TMemoField;
    filmynazwa: TMemoField;
    filmyplik: TMemoField;
    filmyrozdzial: TLargeintField;
    filmysort: TLargeintField;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    uEKnob1: TuEKnob;
    uELED1: TuELED;
    uELED10: TuELED;
    uELED2: TuELED;
    uELED3: TuELED;
    uELED4: TuELED;
    uELED5: TuELED;
    uELED6: TuELED;
    uELED7: TuELED;
    uELED8: TuELED;
    uELED9: TuELED;
    UOSpodklad: TUOSPlayer;
    UOSszum: TUOSPlayer;
    ytdir: TSelectDirectoryDialog;
    rename_id0: TZSQLProcessor;
    roz_id: TZQuery;
    MenuItem25: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    roz_add: TZQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    db_roz: TZQuery;
    db_rozid: TLargeintField;
    db_roznazwa: TMemoField;
    db_rozsort: TLargeintField;
    ds_roz: TDataSource;
    czasy_od_id: TZQuery;
    czasy_max: TZQuery;
    czasy_id: TZQuery;
    czasy_nast: TZQuery;
    czasy_przed: TZQuery;
    czasy_po: TZQuery;
    czasy_up_id: TZQuery;
    Edit1: TEdit;
    czasy2: TZQuery;
    roz2: TZQuery;
    roz_upd: TZQuery;
    roz_del: TZQuery;
    Label1: TLabel;
    film: TZQuery;
    MainMenu1: TMainMenu;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Panel1: TPanel;
    rename_id: TZSQLProcessor;
    last_id: TZQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ds_test_czas: TDataSource;
    Label2: TLabel;
    filmy2: TZQuery;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    N3: TMenuItem;
    OpenDialogCsv: TOpenDialog;
    Panel8: TPanel;
    oo_mouse: TIdleTimer;
    pakowanie_db: TZSQLProcessor;
    rename_id2: TZSQLProcessor;
    Splitter2: TSplitter;
    test_czas: TZQuery;
    del_czasy_film: TZSQLProcessor;
    csv: TCsvParser;
    filmy_id: TZQuery;
    pp_mouse: TIdleTimer;
    ImageList1: TImageList;
    ini: TZSQLProcessor;
    del_all: TZSQLProcessor;
    ds_filmy: TDataSource;
    ds_czasy: TDataSource;
    add_rec: TZSQLProcessor;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    pop_czasy: TPopupMenu;
    test_czas2: TZQuery;
    restart_csv: TTimer;
    UOSEngine: TUOSEngine;
    UOSPlayer: TUOSPlayer;
    update_sort: TZSQLProcessor;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N2: TMenuItem;
    mess: TExtMessage;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    mplayer: TMPlayerControl;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    pop_lista: TPopupMenu;
    Splitter1: TSplitter;
    PropStorage: TXMLPropStorage;
    db: TZConnection;
    filmy: TZQuery;
    czasy: TZQuery;
    cr: TZSQLProcessor;
    trans: TZTransaction;
    procedure csvAfterRead(Sender: TObject);
    procedure csvBeforeRead(Sender: TObject);
    procedure csvRead(Sender: TObject; NumberRec, PosRec: integer; sName,
      sValue: string; var Stopped: boolean);
    procedure czasyCalcFields(DataSet: TDataSet);
    procedure dbBeforeConnect(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox1Select(Sender: TObject);
    procedure db_rozAfterScroll(DataSet: TDataSet);
    procedure db_roznazwaGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
    procedure ds_filmyDataChange(Sender: TObject; Field: TField);
    procedure ds_rozDataChange(Sender: TObject; Field: TField);
    procedure filmyBeforeOpen(DataSet: TDataSet);
    procedure filmyCalcFields(DataSet: TDataSet);
    procedure film_playBeforeOpen(DataSet: TDataSet);
    procedure fmenuBefore(aItemIndex: integer);
    procedure fmenuExecute(aItemIndex: integer; aResult: integer);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memory_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memory_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memory_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memory_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem32Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem38Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem62Click(Sender: TObject);
    procedure MenuItem63Click(Sender: TObject);
    procedure MenuItem65Click(Sender: TObject);
    procedure MenuItem67Click(Sender: TObject);
    procedure MenuItem68Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem70Click(Sender: TObject);
    procedure MenuItem71Click(Sender: TObject);
    procedure MenuItem72Click(Sender: TObject);
    procedure MenuItem75Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure miPlayerClick(Sender: TObject);
    procedure mplayerBeforePlay(ASender: TObject; AFilename: string);
    procedure mplayerBeforeStop(Sender: TObject);
    procedure mplayerGrabImage(ASender: TObject; AFilename: String);
    procedure mplayerPause(Sender: TObject);
    procedure mplayerPlay(Sender: TObject);
    procedure mplayerPlaying(ASender: TObject; APosition, ADuration: single);
    procedure mplayerReplay(Sender: TObject);
    procedure mplayerSetPosition(Sender: TObject);
    procedure mplayerStop(Sender: TObject);
    procedure ooMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ooMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure oo_mouseStartTimer(Sender: TObject);
    procedure oo_mouseTimer(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure PlayClick(Sender: TObject);
    procedure PlayRecClick(Sender: TObject);
    procedure pp1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ppMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ppMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure pppCreateElement(Sender: TObject; var AWskaznik: Pointer);
    procedure pppDestroyElement(Sender: TObject; var AWskaznik: Pointer);
    procedure pppReadElement(Sender: TObject; var AWskaznik: Pointer);
    procedure pppWriteElement(Sender: TObject; var AWskaznik: Pointer);
    procedure pp_mouseStartTimer(Sender: TObject);
    procedure pp_mouseTimer(Sender: TObject);
    procedure PresentationClick(aButton: integer; var aTestDblClick: boolean);
    procedure PresentationClickLong(aButton: integer; aDblClick: boolean);
    procedure PropStorageRestoringProperties(Sender: TObject);
    procedure PropStorageSavingProperties(Sender: TObject);
    procedure restart_csvTimer(Sender: TObject);
    procedure RewindClick(Sender: TObject);
    procedure BExitClick(Sender: TObject);
    procedure rfilmyTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StopClick(Sender: TObject);
    procedure tcpCanSend(aSocket: TLSocket);
    procedure tcpCryptString(var aText: string);
    procedure tcpDecryptString(var aText: string);
    procedure tcpReceiveString(aMsg: string; aSocket: TLSocket);
    procedure tcpStatus(aActive, aCrypt: boolean);
    procedure test_czasBeforeOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure timer_info_tasmyTimer(Sender: TObject);
    procedure timer_obrazyTimer(Sender: TObject);
    procedure tzegarTimer(Sender: TObject);
    procedure uEKnob1Change(Sender: TObject);
    procedure uELED8Change(Sender: TObject);
    procedure uELED9Click(Sender: TObject);
    procedure UOSpodkladBeforeStart(Sender: TObject);
    procedure _AUDIOMENU(Sender: TObject);
    procedure _OPEN_CLOSE(DataSet: TDataSet);
    procedure _OPEN_CLOSE_TEST(DataSet: TDataSet);
    procedure _OSDMENU(Sender: TObject);
    procedure _PLAY_MEMORY(Sender: TObject);
    procedure _PLAY_REC_PRESENT(Sender: TObject);
    procedure _ROZ_OPEN_CLOSE(DataSet: TDataSet);
    procedure _SAMPLERATEMENU(Sender: TObject);
  private
    cctimer: integer;
    cctimer_opt: integer;
    const_mplayer_param: string;
    film_tytul: string;
    film_tytul1: string;
    film_tytul2: string;
    lista_wybor,klucze_wybor: TStrings;
    cenzura,szum: TMemoryStream;
    trans_tytul: string;
    trans_opis: TStrings;
    trans_serwer: boolean;
    trans_film_tytul: string;
    trans_film_czasy: TStrings;
    trans_indeksy: TStrings;
    procedure ComputerOff;
    function PragmaForeignKeys: boolean;
    procedure PragmaForeignKeys(aOn: boolean);
    procedure UpdateFilmToRoz(aRestore: boolean = false);
    procedure SeekPlay(aCzas: integer);
    procedure db_open;
    procedure db_close;
    function get_last_id: integer;
    procedure przyciski(v_playing: boolean);
    procedure update_dioda_tasma(aKlik: boolean = false);
    procedure wygeneruj_plik2(nazwa1: string = ''; nazwa2: string = ''; aS1: string =''; aS2: string = '');
    procedure usun_pozycje_czasu(wymog_potwierdzenia: boolean);
    procedure komenda_up;
    procedure komenda_down;
    procedure go_czas2;
    function go_up(force_id: integer = 0): boolean;
    function go_first(force_id: integer = 0): boolean;
    function go_down(force_id: integer = 0): boolean;
    function go_last(force_id: integer = 0): boolean;
    procedure resize_update_grid;
    procedure test_play;
    procedure test(APositionForce: single = 0.0);
    procedure czasy_edycja_188;
    procedure czasy_edycja_190;
    procedure czasy_edycja_191;
    procedure czasy_edycja_146;
    procedure reset_oo;
    procedure play_memory(nr: integer);
    procedure zmiana(aTryb: integer = 0);
    procedure przygotuj_do_transmisji;
    procedure DaneCzasoweDoTransmisji(var aTimeAct,aFilmLength,aFilmPos,aStat: integer);
    function RunCommandTransmission(aCommand: string): string;
    procedure SendRamkaPP;
    procedure zapisz_na_tasmie(aFilm: string; aCzas: string = '');
    procedure PictureToVideo(aDir,aFilename,aExt: string);
    function mplayer_obraz_normalize(aPosition: integer): integer;
    procedure dodaj_czas(aIdFilmu,aCzas: integer; aComment: string = '');
    procedure zrob_zdjecie;
    procedure zrob_zdjecie_do_paint;
    procedure obraz_next;
    procedure obraz_prior;
    procedure go_fullscreen(aOff: boolean = false);
    procedure go_przelaczpokazywanieczasu;
    procedure go_beep;
    procedure SetCursorOnPresentation(aHideCursor: boolean);
    procedure musicload(aNo: integer = -1);
    procedure musicplay;
    procedure musicpause;
    procedure szumload(aNo: integer = -1);
    procedure szumplay;
    procedure szumpause;
    procedure tab_lamp_zapisz;
    procedure tab_lamp_odczyt(aOnlyRefreshLamp: boolean = false);
    procedure dodaj_pozycje_na_koniec_listy(aSkopiujTemat: boolean = false);
    procedure DeleteFilm(aDB: boolean = true; aFile: boolean = true; aBezPytan: boolean = false);
    procedure sciagnij_film(aDownloadAll: boolean = false);
    procedure scisz10;
    procedure zglosnij10;
    procedure menu_rozdzialy(aOn: boolean = true);
    procedure dodaj_film(aNaPoczatku: boolean = false);
  public
    function GetYoutubeElement(var aLink: string; var aFilm: integer; var aDirectory: string; var aAudio,aVideo: integer): boolean;
    procedure SetYoutubeProcessOn;
    procedure SetYoutubeProcessOff;
  end;

var
  Form1: TForm1;

implementation

uses
  ecode, serwis, lista, czas, lista_wyboru, config, lcltype, Clipbrd,
  transmisja, youtube_unit, zapis_tasmy, audioeq, panmusic,
  yt_selectfiles, ImportDirectoryYoutube;

type
  TMemoryLamp = record
    active: boolean;
    rozdzial,indeks,indeks_czasu: integer;
    time: single;
  end;
  TYoutubeElement = record
    link: string;
    film: integer;
    dir: string;
    audio,video: integer;
  end;
  PYoutubeElement = ^TYoutubeElement;

var
  pilot: TArchitektPilot;
  YoutubeElement: TYoutubeElement;
  YoutubeIsProcess: boolean = false;

var
  indeks_rozd: integer = -1;
  indeks_play: integer = -1;
  indeks_czas: integer = -1;
  indeks_def_volume: integer;
  force_position: boolean = false;
  force_end: integer = 0;
  rec: record
    typ: string[1];
    id,sort,asort,film,czas_od,czas_do,czas2,rozdzial,status: integer;
    osd,audio,resample: integer;
    nazwa,link,plik: string;
    wzmocnienie,glosnosc,position: integer;
    audioeq,file_audio,lang: string;
    s1,s2,s3,s4,s5: string;
  end;
  mem_lamp: array [1..4] of TMemoryLamp;
  ytdl_id: integer;
  _yt_d1,_yt_d2: string;
  tryb: integer = 1;

var
  tasma_s1: string = '';
  tasma_s2: string = '';
  precord: boolean = false;
  pstatus_ignore: boolean = false;

var
  test_force: boolean = false;
  stop_force: boolean = false;
  czas_aktualny: integer = -1;
  czas_nastepny: integer = -1;
  czas_aktualny_nazwa: string;
  czas_aktualny_indeks: integer = -1;
  bcenzura: boolean = false;
  auto_memory: array [1..4] of integer;
  vv_wzmocnienie: boolean = false;
  vv_glosnosc: integer = 0;
  vv_obrazy: boolean = false;
  vv_transmisja: boolean = false;
  vv_szum: boolean = false;
  vv_osd: integer = 0;
  vv_audio: integer = 0;
  vv_lang: string = '';
  vv_resample: integer = 0;
  vv_audioeq: string = '';
  vv_audio1: string = '';
  vv_audio2: string = '';

{$R *.lfm}

{ TForm1 }

procedure TForm1.PlayClick(Sender: TObject);
begin
  if Edit1.Text='' then exit;
  if vv_obrazy and mplayer.Paused then obraz_next else
  if mplayer.Paused then mplayer.Replay else
  if mplayer.Playing then mplayer.Pause else
  begin
    mplayer.Filename:=Edit1.Text;
    mplayer.Play;
    wygeneruj_plik2(film_tytul);
  end;
end;

procedure TForm1.PlayRecClick(Sender: TObject);
begin
  precord:=not precord;
  if precord then
  begin
    PlayRec.ImageIndex:=40;
    update_dioda_tasma;
  end else begin
    PlayRec.ImageIndex:=39;
    update_dioda_tasma;
  end;
  if precord then
  begin
    tasma_s1:='';
    tasma_s2:='';
    tasma_clear.Execute;
    LiveTimer.Start;
  end else LiveTimer.Stop;
end;

procedure TForm1.pp1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  a: integer;
begin
  pp1.Position:=round(pp1.Max*X/pp1.Width);
  Timer1.Enabled:=true;
end;

procedure TForm1.czasy_edycja_188;
var
  b: integer;
begin
  if czasy.IsEmpty then exit;
  czasy.Edit;
  b:=MiliSecToInteger(round(mplayer.GetPositionOnlyRead*1000));
  if vv_obrazy then
  begin
    //dec(b,10);
    if b<0 then b:=0;
  end;
  czasy.FieldByName('czas_od').AsInteger:=b;
  czasy.Post;
  test;
end;

procedure TForm1.czasy_edycja_190;
begin
  if czasy.IsEmpty then exit;
  czasy.Edit;
  czasy.FieldByName('czas_do').AsInteger:=MiliSecToInteger(round(mplayer.GetPositionOnlyRead*1000));
  czasy.Post;
  test;
end;

procedure TForm1.czasy_edycja_191;
begin
  if czasy.IsEmpty then exit;
  czasy.Edit;
  czasy.FieldByName('czas_do').Clear;
  czasy.Post;
  test;
end;

procedure TForm1.czasy_edycja_146;
begin
  if czasy.IsEmpty then exit;
  czasy.Edit;
  czasy.FieldByName('czas2').AsInteger:=MiliSecToInteger(round(mplayer.GetPositionOnlyRead*1000));
  czasy.Post;
end;

procedure TForm1.reset_oo;
begin
  oo.Min:=0;
  oo.Max:=10;
  oo.Position:=0;
  Label5.Caption:='-:--';
  Label6.Caption:='-:--';
end;

procedure TForm1.play_memory(nr: integer);
var
  t: single;
  r,i,i2: integer;
  czas: TTime;
  nazwa,link,plik: string;
  s,s1: string;
begin
  if not mem_lamp[nr].active then exit;
  r:=mem_lamp[nr].rozdzial;
  i:=mem_lamp[nr].indeks;
  i2:=mem_lamp[nr].indeks_czasu;
  t:=mem_lamp[nr].time;
  czas:=MiliSecToTime(round(t*1000));
  if mplayer.Running and (indeks_play=i) then mplayer.Position:=t else
  begin
    {ustawienia dot. list}
    db_roz.First;
    db_roz.Locate('id',r,[]);
    filmy.First;
    filmy.Locate('id',i,[]);
    czasy.First;
    czasy.Locate('id',i2,[]);
    {uruchomienie filmu}
    film.ParamByName('id').AsInteger:=i;
    film.Open;
    nazwa:=film.FieldByName('nazwa').AsString;
    link:=film.FieldByName('link').AsString;
    plik:=film.FieldByName('plik').AsString;
    if film.FieldByName('wzmocnienie').IsNull then vv_wzmocnienie:=false else vv_wzmocnienie:=film.FieldByName('wzmocnienie').AsBoolean;
    if film.FieldByName('glosnosc').IsNull then vv_glosnosc:=0 else vv_glosnosc:=film.FieldByName('glosnosc').AsInteger;
    vv_obrazy:=GetBit(film.FieldByName('status').AsInteger,0);
    vv_osd:=film.FieldByName('osd').AsInteger;
    vv_audio:=film.FieldByName('audio').AsInteger;
    vv_resample:=film.FieldByName('resample').AsInteger;
    vv_audioeq:=film.FieldByName('audioeq').AsString;
    vv_audio1:=film.FieldByName('file_audio').AsString;
    film.Close;
    if mplayer.Running then mplayer.Stop;
    s:=plik;
    if (s='') or (not FileExists(s)) then s:=link;
    Edit1.Text:=s;
    film_tytul:=nazwa;
    s1:=FormatDateTime('hh:nn:ss.z',czas);
    force_position:=false;
    const_mplayer_param:='--start='+s1;
    indeks_rozd:=r;
    indeks_play:=i;
    indeks_czas:=i2;
    Play.Click;
  end;
  if MenuItem26.Checked then
  begin
    mem_lamp[nr].active:=false;
    case nr of
      1: Memory_1.ImageIndex:=27;
      2: Memory_2.ImageIndex:=29;
      3: Memory_3.ImageIndex:=31;
      4: Memory_4.ImageIndex:=33;
    end;
  end;
end;

procedure TForm1.zmiana(aTryb: integer);
begin
  if aTryb=0 then
  begin
    uELED1.Active:=false;
    uELED2.Active:=false;
  end else begin
    tryb:=aTryb;
    uELED1.Active:=tryb=1;
    uELED2.Active:=tryb=2;
  end;
end;

procedure TForm1.przygotuj_do_transmisji;
var
  stat: integer;
  istatus: boolean;
begin
  trans_film_tytul:=filmynazwa.AsString;
  trans_film_czasy.Clear;
  trans_indeksy.Clear;
  if czasy.RecordCount>0 then
  begin
    test_czas.ParamByName('id').AsInteger:=filmyid.AsInteger;
    test_czas.Open;
    while not test_czas.EOF do
    begin
      stat:=test_czas.FieldByName('status').AsInteger;
      istatus:=GetBit(stat,1);
      if istatus then
      begin
        test_czas.Next;
        continue;
      end;
      trans_indeksy.Add(test_czas.FieldByName('id').AsString);
      trans_film_czasy.Add(test_czas.FieldByName('nazwa').AsString);
      test_czas.Next;
    end;
    test_czas.Close;
  end;
end;

procedure TForm1.DaneCzasoweDoTransmisji(var aTimeAct, aFilmLength, aFilmPos,
  aStat: integer);
begin
  if mplayer.Running then
  begin
    if mplayer.Playing then aStat:=1 else aStat:=2;
  end else aStat:=0;
  if aStat>0 then
  begin
    repeat
      Application.ProcessMessages;
      aFilmLength:=TimeToInteger(mplayer.Duration/SecsPerDay);
    until aFilmLength>0;
    aTimeAct:=TimeToInteger(time);
    aFilmPos:=TimeToInteger(mplayer.Position/SecsPerDay);
  end else begin
    aFilmLength:=0;
    aTimeAct:=0;
    aFilmPos:=0;
  end;
end;

function TForm1.RunCommandTransmission(aCommand: string): string;
var
  s: string;
  a: integer;
  czas_aktualny,film_duration,film_pos,film_stat: integer;
begin
  if aCommand='{READ_ALL}' then
  begin
    DaneCzasoweDoTransmisji(czas_aktualny,film_duration,film_pos,film_stat);
    if indeks_play>-1 then
    begin
      if indeks_czas>-1 then a:=StringToItemIndex(trans_indeksy,IntToStr(indeks_czas));
      s:='{READ_ALL}$'+IntToStr(a)+'$'+trans_tytul+'$'+trans_opis.Text+'$'+IntToStr(film_stat)+'$'+ExtractFilename(mplayer.Filename)+'$'+IntToStr(czas_aktualny)+'$'+IntToStr(film_duration)+'$'+IntToStr(film_pos)+'$'+trans_film_tytul+'$'+StringReplace(trans_film_czasy.Text,#10,'|',[rfReplaceAll]);
    end else
      s:='{READ_ALL}$'+IntToStr(indeks_czas)+'$'+trans_tytul+'$'+trans_opis.Text+'$0';
    s:=StringReplace(s,#10,'',[rfReplaceAll]);
    s:=StringReplace(s,#13,'',[rfReplaceAll]);
  end else if aCommand='{RAMKA_PP}' then
  begin
    DaneCzasoweDoTransmisji(czas_aktualny,film_duration,film_pos,film_stat);
    s:='{RAMKA_PP}$'+IntToStr(film_stat)+'$'+ExtractFilename(mplayer.Filename)+'$'+IntToStr(czas_aktualny)+'$'+IntToStr(film_duration)+'$'+IntToStr(film_pos);
  end;
  result:=s;
end;

procedure TForm1.SendRamkaPP;
var
  s: string;
begin
  s:=RunCommandTransmission('{RAMKA_PP}');
  if s='' then exit;
  tcp.SendString(s);
end;

procedure TForm1.zapisz_na_tasmie(aFilm: string; aCzas: string);
var
  a: integer;
  s1,s2: string;
begin
  if precord then
  begin
    a:=LiveTimer.GetIndexTime;
    s1:=aFilm;
    s2:=aCzas;
    if (s1=tasma_s1) and (s2=tasma_s2) then exit;
    tasma_s1:=s1;
    tasma_s2:=s2;
    tasma_add.ParamByName('czas').AsInteger:=a;
    tasma_add.ParamByName('nazwa_filmu').AsString:=s1;
    tasma_add.ParamByName('nazwa_czasu').AsString:=s2;
    tasma_add.ExecSQL;
    update_dioda_tasma(true);
    timer_info_tasmy.Enabled:=true;
  end;
end;

procedure TForm1.PictureToVideo(aDir, aFilename, aExt: string);
var
  vstatus: integer;
begin
  {Stworzenie filmu}
  if FileExists(aFilename) then DeleteFile(aFilename);
  dm.proc1.CurrentDirectory:=aDir;
  dm.proc1.Executable:='/bin/sh';
  dm.proc1.Parameters.Clear;
  dm.proc1.Parameters.Add('-c');
  dm.proc1.Parameters.Add('ffmpeg -pattern_type glob -i '''+aExt+''' -vf "setpts=5*PTS" "'+aFilename+'"');
  //dm.proc1.Parameters.Add('ffmpeg -pattern_type glob -i '''+aExt+''' "'+aFilename+'"');
  dm.proc1.Execute;
  {Dodanie filmu do bazy danych}
  //trans.StartTransaction;
  filmy.Append;
  filmy.FieldByName('nazwa').AsString:='Film z obrazów';
  filmy.FieldByName('link').Clear;
  filmy.FieldByName('plik').AsString:=aFilename;
  filmy.FieldByName('rozdzial').AsInteger:=db_rozid.AsInteger;
  vstatus:=0;
  SetBit(vstatus,0,true);
  filmystatus.AsInteger:=vstatus;
  filmy.Post;
  ini.Execute;
  //trans.Commit;
end;

const
  _LICZNIK = 200;

function TForm1.mplayer_obraz_normalize(aPosition: integer): integer;
var
  a,a1: integer;
begin
  a:=aPosition;
  a1:=a div _LICZNIK;
  if a1<1 then a:=0 else a:=a1*_LICZNIK+120;
  result:=a;
end;

procedure TForm1.dodaj_czas(aIdFilmu, aCzas: integer; aComment: string);
begin
  trans.StartTransaction;
  czasy.Append;
  czasy.FieldByName('film').AsInteger:=filmy.FieldByName('id').AsInteger;
  if aComment='' then czasy.FieldByName('nazwa').AsString:='..' else
    czasy.FieldByName('nazwa').AsString:=aComment;
  czasy.FieldByName('czas_od').AsInteger:=aCzas;
  czasy.Post;
  trans.Commit;
  test;
end;

procedure TForm1.zrob_zdjecie;
var
  a,b: integer;
begin
  if vv_obrazy then exit;
  b:=MiliSecToInteger(Round(mplayer.GetPositionOnlyRead*1000));
  begin
    dec(b,10);
    if b<0 then b:=0;
  end;
  czasy_max.Open;
  if czasy_max.IsEmpty then a:=0 else
  begin
    if czasy_max.FieldByName('czas_do').IsNull then
      a:=czasy_max.FieldByName('czas_od').AsInteger
    else
    a:=czasy_max.FieldByName('czas_do').AsInteger;
  end;
  czasy_max.Close;
  if b<a then dodaj_czas(filmy.FieldByName('id').AsInteger,a,'[fotka]')
         else dodaj_czas(filmy.FieldByName('id').AsInteger,b,'[fotka]');
  mplayer.GrabImage;
end;

procedure TForm1.zrob_zdjecie_do_paint;
var
  e: string;
  t1,t2: TStrings;
begin
  exit;
  if vv_obrazy then exit;
  e:='*.png;*.jpg';
  t1:=TStringList.Create;
  t2:=TStringList.Create;
  try
    DirectoryPack1.ExecuteFiles(_DEF_SCREENSHOT_SAVE_DIR,e,t1);
    mplayer.GrabImage;
    DirectoryPack1.ExecuteFiles(_DEF_SCREENSHOT_SAVE_DIR,e,t2);
    writeln('PRZED:');
    writeln(t1.Text);
    writeln('PO:');
    writeln(t2.Text);
  finally
    t1.Free;
    t2.Free;
  end;
end;

procedure TForm1.obraz_next;
var
  a: single;
begin
  if not mplayer.Running then exit;
  a:=IntegerToTime(mplayer_obraz_normalize(TimeToInteger(mplayer.Position/SecsPerDay)+_LICZNIK))*SecsPerDay;
  mplayer.Position:=a;
end;

procedure TForm1.obraz_prior;
var
  a: integer;
  b: single;
begin
  if not mplayer.Running then exit;
  b:=mplayer_obraz_normalize(TimeToInteger(mplayer.Position/SecsPerDay)-(_LICZNIK*1));
  b:=IntegerToTime(a)*SecsPerDay;
  mplayer.Position:=b;
end;

procedure TForm1.go_fullscreen(aOff: boolean);
begin
  if (not Panel1.Visible) or aOff then
  begin
    if Panel1.Visible then exit;
    DBGrid3.Visible:=false;
    Screen.Cursor:=crDefault;
    Panel1.Visible:=true;
    Panel4.Align:=alLeft;
    Splitter1.Visible:=true;
    Panel3.Visible:=true;
    Menuitem21.Visible:=true;
    Menuitem22.Visible:=true;
    Menuitem28.Visible:=true;
    Menuitem27.Visible:=true;
    Menuitem15.Visible:=_DEV_ON;
    Form1.WindowState:=wsNormal;
    Form1.WindowState:=wsFullScreen;
    Form1.WindowState:=wsNormal;
  end else begin
    if (not mplayer.Running) and (not _DEF_FULLSCREEN_MEMORY) then exit;
    DBGrid3.Visible:=_DEF_FULLSCREEN_MEMORY and (not mplayer.Running);
    Screen.Cursor:=crNone;
    Menuitem21.Visible:=false;
    Menuitem22.Visible:=false;
    Menuitem28.Visible:=false;
    Menuitem27.Visible:=false;
    Menuitem15.Visible:=false;
    Panel1.Visible:=false;
    Panel4.Align:=alClient;
    Splitter1.Visible:=false;
    Panel3.Visible:=false;
    Form1.WindowState:=wsFullScreen;
  end;
end;

procedure TForm1.go_przelaczpokazywanieczasu;
var
  a: integer;
begin
  if MenuItem49.Checked then begin MenuItem51.Checked:=true; a:=2; end else
  if MenuItem51.Checked then begin MenuItem52.Checked:=true; a:=3; end else
  if MenuItem52.Checked then begin MenuItem49.Checked:=true; a:=0; end;
  if mplayer.Running then mplayer.SetOSDLevel(a);
end;

procedure TForm1.go_beep;
var
  res: TResourceStream;
begin
  try
    cenzura:=TMemoryStream.Create;
    res:=TResourceStream.Create(hInstance,'BEEP',RT_RCDATA);
    cenzura.LoadFromStream(res);
  finally
    res.Free;
  end;
  UOSPlayer.Volume:=1;
  UOSPlayer.Start(cenzura);
end;

procedure TForm1.SetCursorOnPresentation(aHideCursor: boolean);
begin
  if aHideCursor then
  begin
    mplayer.Cursor:=crNone;
    Splitter1.Cursor:=crNone;
    Panel1.Cursor:=crNone;
    Label1.Cursor:=crNone;
    Edit1.Cursor:=crNone;
    Panel6.Cursor:=crNone;
  end else begin
    mplayer.Cursor:=crDefault;
    Splitter1.Cursor:=crHSplit;
    Panel1.Cursor:=crDefault;
    Label1.Cursor:=crDefault;
    Edit1.Cursor:=crDefault;
    Panel6.Cursor:=crDefault;
  end;
end;

procedure TForm1.musicload(aNo: integer);
var
  l: integer;
  p: string;
  s: TStringList;
begin
  if aNo>-1 then l:=aNo else l:=music_no;
  p:=MyConfDir('music.conf');
  if FileExists(p) then
  begin
    Label8.Caption:=IntToStr(l+1);
    s:=TStringList.Create;
    try
      s.LoadFromFile(p);
      if s.Count>l then
      begin
        music_no:=l;
        if miPresentation.Checked then
        begin
          if UOSPodklad.FileName<>s[music_no] then
          begin
            if UOSPodklad.Busy then
            begin
              UOSpodklad.Stop;
              while UOSPodklad.Busy do application.ProcessMessages;
            end;
            UOSPodklad.FileName:=s[music_no];
          end;
          if uELED9.Active and ((not mplayer.Playing) or (mplayer.Paused)) then if not UOSPodklad.Busy then UOSPodklad.Start else UOSpodklad.Replay;
        end;
      end else uELED9.Active:=false;
    finally
      s.Free;
    end;
  end else uELED9.Active:=false;
end;

function TForm1.GetYoutubeElement(var aLink: string; var aFilm: integer;
  var aDirectory: string; var aAudio, aVideo: integer): boolean;
var
  b: boolean;
begin
  b:=ppp.Read;
  if b then
  begin
    aLink:=YoutubeElement.link;
    aFilm:=YoutubeElement.film;
    aDirectory:=YoutubeElement.dir;
    aAudio:=YoutubeElement.audio;
    aVideo:=YoutubeElement.video;
  end else begin
    aLink:='';
    aFilm:=0;
    aDirectory:='';
    aAudio:=0;
    aVideo:=0;
  end;
  result:=b;
end;

procedure TForm1.SetYoutubeProcessOn;
begin
  YoutubeIsProcess:=true;
end;

procedure TForm1.SetYoutubeProcessOff;
begin
  YoutubeIsProcess:=false;
end;

procedure TForm1.csvAfterRead(Sender: TObject);
begin
  case TCsvParser(Sender).Tag of
    0: begin
         trans.Commit;
         db_roz.Refresh;
       end;
    1: restart_csv.Enabled:=true;
    2: begin
         ini.Execute;
         trans.Commit;
         db_roz.Refresh;
         lista_wybor.Clear;
         klucze_wybor.Clear;
       end;
  end;
end;

procedure TForm1.csvBeforeRead(Sender: TObject);
begin
  case TCsvParser(Sender).Tag of
    0: begin
         trans.StartTransaction;
         del_all.Execute;
       end;
    1: begin
         lista_wybor.Clear;
         klucze_wybor.Clear;
       end;
    2: trans.StartTransaction;
  end;
end;

procedure TForm1.csvRead(Sender: TObject; NumberRec, PosRec: integer; sName,
  sValue: string; var Stopped: boolean);
var
  i,id: integer;
begin
  if PosRec=1 then rec.typ:=sValue;
  if rec.typ='R' then {ROZDZIAŁY}
  begin
    case PosRec of
      1: rec.typ:=sValue;
      2: rec.id:=StrToInt(sValue);
      3: rec.sort:=StrToInt(sValue);
      4: rec.nazwa:=sValue;
      5: if sValue='' then rec.asort:=0 else rec.asort:=StrToInt(sValue);
      6: if (sValue='') or (sValue='[null]') then rec.film:=-1 else rec.film:=StrToInt(sValue);
    end;
    if PosRec=6 then
    begin
      case TCsvParser(Sender).Tag of
        0: begin
             {zapis do bazy}
             add_rec0.ParamByName('id').AsInteger:=rec.id;
             add_rec0.ParamByName('sort').AsInteger:=rec.sort;
             add_rec0.ParamByName('nazwa').AsString:=rec.nazwa;
             add_rec0.ParamByName('autosort').AsInteger:=rec.asort;
             if rec.film=-1 then add_rec0.ParamByName('film').Clear else add_rec0.ParamByName('film').AsInteger:=rec.film;
             add_rec0.Execute;
           end;
      end; {case}
    end; {if PosRec=x}
  end else
  if rec.typ='F' then {FILMY}
  begin
    case PosRec of
       1: rec.typ:=sValue;
       2: rec.id:=StrToInt(sValue);
       3: rec.sort:=StrToInt(sValue);
       4: rec.link:=sValue;
       5: rec.plik:=sValue;
       6: if sValue='[null]' then rec.rozdzial:=-1 else rec.rozdzial:=StrToInt(sValue);
       7: rec.nazwa:=sValue;
       8: if sValue='[null]' then rec.wzmocnienie:=-1 else rec.wzmocnienie:=StrToInt(sValue);
       9: if sValue='[null]' then rec.glosnosc:=-1 else rec.glosnosc:=StrToInt(sValue);
      10: if sValue='[null]' then rec.status:=0 else rec.status:=StrToInt(sValue);
      11: if sValue='[null]' then rec.osd:=0 else rec.osd:=StrToInt(sValue);
      12: if sValue='[null]' then rec.audio:=0 else rec.audio:=StrToInt(sValue);
      13: if sValue='[null]' then rec.resample:=0 else rec.resample:=StrToInt(sValue);
      14: if sValue='[null]' then rec.audioeq:='' else rec.audioeq:=sValue;
      15: if sValue='[null]' then rec.file_audio:='' else rec.file_audio:=sValue;
      16: if sValue='[null]' then rec.lang:='' else rec.lang:=sValue;
      17: if sValue='[null]' then rec.position:=-1 else rec.position:=StrToInt(sValue);
    end;
    if PosRec=17 then
    begin
      case TCsvParser(Sender).Tag of
        0: begin
             {zapis do bazy}
             add_rec.ParamByName('id').AsInteger:=rec.id;
             add_rec.ParamByName('sort').AsInteger:=rec.sort;
             add_rec.ParamByName('nazwa').AsString:=rec.nazwa;
             if rec.link='' then add_rec.ParamByName('link').Clear else add_rec.ParamByName('link').AsString:=rec.link;
             if rec.plik='' then add_rec.ParamByName('plik').Clear else add_rec.ParamByName('plik').AsString:=rec.plik;
             if rec.rozdzial=-1 then add_rec.ParamByName('rozdzial').Clear
                                else add_rec.ParamByName('rozdzial').AsInteger:=rec.rozdzial;
             if rec.wzmocnienie=-1 then add_rec.ParamByName('wzmocnienie').Clear
                                   else add_rec.ParamByName('wzmocnienie').AsBoolean:=rec.wzmocnienie=1;
             if rec.glosnosc=-1 then add_rec.ParamByName('glosnosc').Clear
                                else add_rec.ParamByName('glosnosc').AsInteger:=rec.glosnosc;
             add_rec.ParamByName('status').AsInteger:=rec.status;
             add_rec.ParamByName('osd').AsInteger:=rec.osd;
             add_rec.ParamByName('audio').AsInteger:=rec.audio;
             add_rec.ParamByName('resample').AsInteger:=rec.resample;
             if rec.audioeq='' then add_rec.ParamByName('audioeq').Clear
                               else add_rec.ParamByName('audioeq').AsString:=rec.audioeq;
             if rec.file_audio='' then add_rec.ParamByName('file_audio').Clear
                                  else add_rec.ParamByName('file_audio').AsString:=rec.file_audio;
             if rec.lang='' then add_rec.ParamByName('lang').Clear
                            else add_rec.ParamByName('lang').AsString:=rec.lang;
             if rec.position=-1 then add_rec.ParamByName('position').Clear
                                else add_rec.ParamByName('position').AsInteger:=rec.position;
             add_rec.Execute;
           end;
        1: begin
             {odczyt listy filmów by później wybrać niektóre z nich do doczytania}
             lista_wybor.Add(rec.nazwa);
             klucze_wybor.Add(IntToStr(rec.id));
           end;
        2: begin
             {zapis do bazy tylko wybranych pozycji}
             i:=ecode.StringToItemIndex(klucze_wybor,IntToStr(rec.id));
             if i>-1 then
             begin
               add_rec.ParamByName('id').Clear;
               add_rec.ParamByName('sort').Clear;
               add_rec.ParamByName('nazwa').AsString:=rec.nazwa;
               if rec.link='' then add_rec.ParamByName('link').Clear else add_rec.ParamByName('link').AsString:=rec.link;
               if rec.plik='' then add_rec.ParamByName('plik').Clear else add_rec.ParamByName('plik').AsString:=rec.plik;
               if db_rozid.AsInteger=0 then add_rec.ParamByName('rozdzial').Clear
                                       else add_rec.ParamByName('rozdzial').AsInteger:=db_rozid.AsInteger;
               //if rec.rozdzial='[null]' then add_rec.ParamByName('rozdzial').Clear
               //                         else add_rec.ParamByName('rozdzial').AsInteger:=rec.rozdzial;
               if rec.wzmocnienie=-1 then add_rec.ParamByName('wzmocnienie').Clear
                                     else add_rec.ParamByName('wzmocnienie').AsBoolean:=rec.wzmocnienie=1;
               if rec.glosnosc=-1 then add_rec.ParamByName('glosnosc').Clear
                                  else add_rec.ParamByName('glosnosc').AsInteger:=rec.glosnosc;
               add_rec.ParamByName('status').AsInteger:=rec.status;
               add_rec.ParamByName('osd').AsInteger:=rec.osd;
               add_rec.ParamByName('audio').AsInteger:=rec.audio;
               add_rec.ParamByName('resample').AsInteger:=rec.resample;
               if rec.audioeq='' then add_rec.ParamByName('audioeq').Clear
                                 else add_rec.ParamByName('audioeq').AsString:=rec.audioeq;
               if rec.file_audio='' then add_rec.ParamByName('file_audio').Clear
                                    else add_rec.ParamByName('file_audio').AsString:=rec.file_audio;
               if rec.lang='' then add_rec.ParamByName('lang').Clear
                              else add_rec.ParamByName('lang').AsString:=rec.lang;
               if rec.position=-1 then add_rec.ParamByName('position').Clear
                                  else add_rec.ParamByName('position').AsInteger:=rec.position;
               add_rec.Execute;
               id:=get_last_id;
               lista_wybor.Delete(i);
               lista_wybor.Insert(i,IntToStr(id));
             end;
           end;
      end; {case}
    end; {if PosRec=x}
  end else
  if rec.typ='C' then {CZASY}
  begin
    if TCsvParser(Sender).Tag=1 then
    begin
      Stopped:=true;
      exit;
    end;
    case PosRec of
      1: rec.typ:=sValue;
      2: rec.id:=StrToInt(sValue);
      3: rec.film:=StrToInt(sValue);
      4: rec.nazwa:=sValue;
      5: rec.czas_od:=StrToInt(sValue);
      6: rec.czas_do:=StrToInt(sValue);
      7: rec.czas2:=StrToInt(sValue);
      8: if sValue='[null]' then rec.status:=0 else rec.status:=StrToInt(sValue);
      9: if sValue='[null]' then rec.file_audio:='' else rec.file_audio:=sValue;
    end;
    if PosRec=9 then
    begin
      case TCsvParser(Sender).Tag of
        0: begin
             {zapis do bazy}
             add_rec2.ParamByName('id').AsInteger:=rec.id;
             add_rec2.ParamByName('film').AsInteger:=rec.film;
             add_rec2.ParamByName('nazwa').AsString:=rec.nazwa;
             add_rec2.ParamByName('czas_od').AsInteger:=rec.czas_od;
             if rec.czas_do=0 then add_rec2.ParamByName('czas_do').Clear
             else add_rec2.ParamByName('czas_do').AsInteger:=rec.czas_do;
             if rec.czas2=0 then add_rec2.ParamByName('czas2').Clear
             else add_rec2.ParamByName('czas2').AsInteger:=rec.czas2;
             add_rec2.ParamByName('status').AsInteger:=rec.status;
             if rec.file_audio='' then add_rec2.ParamByName('file_audio').Clear
                                  else add_rec2.ParamByName('file_audio').AsString:=rec.file_audio;
             add_rec2.Execute;
           end;
        2: begin
             {zapis do bazy tylko wybranych pozycji}
             i:=ecode.StringToItemIndex(klucze_wybor,IntToStr(rec.film));
             if i>-1 then
             begin
               id:=StrToInt(lista_wybor[i]);
               add_rec2.ParamByName('id').Clear;
               add_rec2.ParamByName('film').AsInteger:=id;
               add_rec2.ParamByName('nazwa').AsString:=rec.nazwa;
               add_rec2.ParamByName('czas_od').AsInteger:=rec.czas_od;
               if rec.czas_do=0 then add_rec2.ParamByName('czas_do').Clear
               else add_rec2.ParamByName('czas_do').AsInteger:=rec.czas_do;
               if rec.czas2=0 then add_rec2.ParamByName('czas2').Clear
               else add_rec2.ParamByName('czas2').AsInteger:=rec.czas2;
               add_rec2.ParamByName('status').AsInteger:=rec.status;
               if rec.file_audio='' then add_rec2.ParamByName('file_audio').Clear
                                    else add_rec2.ParamByName('file_audio').AsString:=rec.file_audio;
               add_rec2.Execute;
             end;
           end;
      end; {case}
    end; {if PosRec=x}
  end else
  if rec.typ='I' then {INDEKSY}
  begin
    case PosRec of
      1: rec.typ:=sValue;
      2: rec.id:=StrToInt(sValue);
      3: rec.s1:=sValue;
      4: rec.s2:=sValue;
      5: rec.s3:=sValue;
      6: rec.s4:=sValue;
      7: rec.s5:=sValue;
    end;
    if PosRec=7 then
    begin
      case TCsvParser(Sender).Tag of
        0: begin
             {zapis do bazy}
             mem_lamp[rec.id].active:=rec.s1='1';
             mem_lamp[rec.id].rozdzial:=StrToInt(rec.s2);
             mem_lamp[rec.id].indeks:=StrToInt(rec.s3);
             mem_lamp[rec.id].indeks_czasu:=StrToInt(rec.s4);
             mem_lamp[rec.id].time:=StrToFloat(rec.s5);
             tab_lamp_odczyt(true);
        end;
      end; {case}
    end; {if PosRec=x}
  end;
end;

procedure TForm1.czasyCalcFields(DataSet: TDataSet);
var
  stat: integer;
  b,i: boolean;
  s: string;
begin
  stat:=czasystatus.AsInteger;
  b:=GetBit(stat,0);
  i:=GetBit(stat,1);
  s:='';
  if i then s:=s+'I';
  if b then s:=s+'B';
  czasyc_flagi.AsString:=s;
end;

procedure TForm1.dbBeforeConnect(Sender: TObject);
begin
  db.AutoEncodeStrings:=false;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
var
  s,s1: string;
begin
  if filmy.IsEmpty then exit;
  stop_force:=true;
  if mplayer.Running then mplayer.Stop;
  indeks_czas:=-1;
  s:=filmy.FieldByName('plik').AsString;
  if (s='') or (not FileExists(s)) then s:=filmy.FieldByName('link').AsString;
  Edit1.Text:=s;
  indeks_rozd:=filmyrozdzial.AsInteger;
  film_tytul:=filmy.FieldByName('nazwa').AsString;
  indeks_play:=filmy.FieldByName('id').AsInteger;
  indeks_czas:=-1;
  vv_wzmocnienie:=filmywzmocnienie.AsBoolean;
  vv_glosnosc:=filmyglosnosc.AsInteger;
  vv_obrazy:=GetBit(filmystatus.AsInteger,0);
  vv_transmisja:=GetBit(filmystatus.AsInteger,1);
  vv_szum:=GetBit(filmystatus.AsInteger,2);
  vv_osd:=filmyosd.AsInteger;
  vv_audio:=filmyaudio.AsInteger;
  vv_lang:=filmylang.AsString;
  vv_resample:=filmyresample.AsInteger;
  vv_audioeq:=filmyaudioeq.AsString;
  vv_audio1:=filmyfile_audio.AsString;
  if _DEF_COOKIES_FILE_YT<>'' then if FileExists(_DEF_COOKIES_FILE_YT) then const_mplayer_param:='--cookies --cookies-file='+_DEF_COOKIES_FILE_YT+' --ytdl-raw-options=cookies='+_DEF_COOKIES_FILE_YT;
  if _DEF_FULLSCREEN_MEMORY then
  begin
    if cctimer_opt>0 then
    begin
      (* kontynuuję od ostatniej pozycji czasowej *)
      s1:=FormatDateTime('hh:nn:ss.z',IntegerToTime(cctimer_opt));
      if const_mplayer_param='' then const_mplayer_param:='--start='+s1
      else const_mplayer_param:=const_mplayer_param+' --start='+s1;
    end;
  end else
  if miPlayer.Checked and (filmyposition.AsInteger>0) then
  begin
    (* kontynuuję od ostatniej pozycji czasowej *)
    s1:=FormatDateTime('hh:nn:ss.z',IntegerToTime(filmyposition.AsInteger));
    if const_mplayer_param='' then const_mplayer_param:='--start='+s1
    else const_mplayer_param:=const_mplayer_param+' --start='+s1;
  end;
  Play.Click;
  if czasy.RecordCount=0 then zapisz_na_tasmie(film_tytul);
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  b: boolean;
begin
  DBGrid1.Canvas.Font.Bold:=false;
  b:=filmyc_plik_exist.AsBoolean;
  if b then DBGrid1.Canvas.Font.Color:=clBlue else DBGrid1.Canvas.Font.Color:=TColor($333333);
  if indeks_play=filmyid.AsInteger then
  begin
    DBGrid1.Canvas.Font.Bold:=true;
    if b then
      DBGrid1.Canvas.Font.Color:=TColor($0E0044)
    else
      DBGrid1.Canvas.Font.Color:=clBlack;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
var
  s,s1: string;
begin
  if czasy.IsEmpty then exit;
  pstatus_ignore:=true;
  {player działa}
  if mplayer.Running and (indeks_play=filmy.FieldByName('id').AsInteger) then
  begin
    if vv_obrazy then SeekPlay(mplayer_obraz_normalize(czasy.FieldByName('czas_od').AsInteger))
    else SeekPlay(czasy.FieldByName('czas_od').AsInteger);
    exit;
  end;
  {player nie działa - uruchamiam i lece od danego momentu}
  stop_force:=true;
  if mplayer.Running then mplayer.Stop;
  s:=filmy.FieldByName('plik').AsString;
  if (s='') or (not FileExists(s)) then s:=filmy.FieldByName('link').AsString;
  Edit1.Text:=s;
  film_tytul:=filmy.FieldByName('nazwa').AsString;//+' - '+czasy.FieldByName('nazwa').AsString;
  vv_obrazy:=GetBit(filmystatus.AsInteger,0);
  vv_transmisja:=GetBit(filmystatus.AsInteger,1);
  vv_szum:=GetBit(filmystatus.AsInteger,2);
  if vv_obrazy then s1:=FormatDateTime('hh:nn:ss.z',IntegerToTime(mplayer_obraz_normalize(czasy.FieldByName('czas_od').AsInteger)))
  else s1:=FormatDateTime('hh:nn:ss.z',IntegerToTime(czasy.FieldByName('czas_od').AsInteger));
  force_position:=false;
  if _DEF_COOKIES_FILE_YT<>'' then if FileExists(_DEF_COOKIES_FILE_YT) then const_mplayer_param:='--cookies --cookies-file='+_DEF_COOKIES_FILE_YT+' --ytdl-raw-options=cookies='+_DEF_COOKIES_FILE_YT;
  if const_mplayer_param='' then const_mplayer_param:='--start='+s1
  else const_mplayer_param:=const_mplayer_param+' --start='+s1;
  indeks_rozd:=filmyrozdzial.AsInteger;
  indeks_play:=filmy.FieldByName('id').AsInteger;
  if indeks_czas>-1 then indeks_czas:=czasy.FieldByName('id').AsInteger;
  vv_wzmocnienie:=filmywzmocnienie.AsBoolean;
  vv_glosnosc:=filmyglosnosc.AsInteger;
  vv_osd:=filmyosd.AsInteger;
  vv_audio:=filmyaudio.AsInteger;
  vv_lang:=filmylang.AsString;
  vv_resample:=filmyresample.AsInteger;
  vv_audioeq:=filmyaudioeq.AsString;
  vv_audio1:=filmyfile_audio.AsString;
  Play.Click;
  timer_obrazy.Enabled:=vv_obrazy;
end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  a: integer;
  b,c: boolean;
begin
  a:=czasystatus.AsInteger;
  b:=ecode.GetBit(a,0);
  c:=ecode.GetBit(a,1);
  DBGrid2.Canvas.Font.Bold:=false;

  if b then DBGrid2.Canvas.Font.Color:=clRed else
  //if c then DBGrid2.Canvas.Font.Color:=clGray else
  DBGrid2.Canvas.Font.Color:=TColor($333333);

  if indeks_czas=czasy.FieldByName('id').AsInteger then
  begin
    DBGrid2.Canvas.Font.Bold:=true;
    if b then DBGrid2.Canvas.Font.Color:=clGray
         else DBGrid2.Canvas.Font.Color:=clBlack;
  end;
  DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TForm1.DBGrid3PrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);
var
  b: boolean;
  tlo,video,plik: TColor;
begin
  tlo:=clBlack;
  video:=clWhite;
  plik:=clYellow;
  DBGrid3.Canvas.Font.Bold:=false;
  b:=filmyc_plik_exist.AsBoolean;
  if b then DBGrid3.Canvas.Font.Color:=plik else DBGrid3.Canvas.Font.Color:=video;
  if (not filmyposition.IsNull) and (filmyposition.AsInteger>0) then DBGrid3.Canvas.Font.Bold:=true;
  if gdSelected in AState then DBGrid3.Canvas.Brush.Color:=clBlue else
  DBGrid3.Canvas.Brush.Color:=tlo;
end;

procedure TForm1.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  DBLookupComboBox1.DataSource:=ds_roz;
  DBLookupComboBox1.DataField:='id';
end;

procedure TForm1.DBLookupComboBox1DropDown(Sender: TObject);
begin
  DBLookupComboBox1.DataSource:=nil;
end;

procedure TForm1.DBLookupComboBox1Select(Sender: TObject);
var
  id: integer;
begin
  id:=DBLookupComboBox1.KeyValue;
  db_roz.Locate('id',id,[]);
  filmy.First;
end;

procedure TForm1.db_rozAfterScroll(DataSet: TDataSet);
begin
  MenuItem70.Checked:=db_rozautosort.AsInteger=1;
end;

procedure TForm1.db_roznazwaGetText(Sender: TField; var aText: string;
  DisplayText: Boolean);
begin
  aText:=Sender.AsString;
end;

procedure TForm1.ds_filmyDataChange(Sender: TObject; Field: TField);
begin
  Menuitem63.Enabled:=filmyc_plik_exist.AsBoolean;
end;

procedure TForm1.ds_rozDataChange(Sender: TObject; Field: TField);
begin
  if db_rozautosort.AsInteger=1 then filmy.SortedFields:='nazwa' else filmy.SortedFields:='';
end;

procedure TForm1.filmyBeforeOpen(DataSet: TDataSet);
begin
  if MenuItem25.Checked then filmy.ParamByName('all').AsInteger:=0
                        else filmy.ParamByName('all').AsInteger:=1;
end;

procedure TForm1.filmyCalcFields(DataSet: TDataSet);
var
  b: boolean;
  s: string;
begin
  s:=filmyplik.AsString;
  if (s='') or (not FileExists(s)) then b:=false else b:=true;
  filmyc_plik_exist.AsBoolean:=b;
end;

procedure TForm1.film_playBeforeOpen(DataSet: TDataSet);
begin
  if MenuItem25.Checked then film_play.ParamByName('all').AsInteger:=0
                        else film_play.ParamByName('all').AsInteger:=1;
end;

procedure TForm1.fmenuBefore(aItemIndex: integer);
begin
  cctimer_opt:=0;
end;

procedure TForm1.fmenuExecute(aItemIndex: integer; aResult: integer);
begin
  (* pierwszy zestaw *)
  if aItemIndex=0 then
  begin
    case aResult of
      0: cctimer_opt:=0;
      1: cctimer_opt:=filmyposition.AsInteger;
    end;
    DBGrid1DblClick(self);
  end else
  (* drugi zestaw *)
  if aItemIndex=1 then case aResult of
    0: begin
         (* Opuść tryb pełnoekranowy *)
         _DEF_FULLSCREEN_MEMORY:=false;
         UpdateFilmToRoz;
         go_fullscreen(true);
       end;
    1: menu_rozdzialy;
    2: begin
         (* Usuń zapis czasu *)
         filmy.Edit;
         filmyposition.Clear;
         filmy.Post;
       end;
    3: sciagnij_film;
    4: DeleteFilm(true,false,true);
    5: DeleteFilm(true,true,true);
    6: ComputerOff;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if UOSPlayer.Busy or UOSpodklad.Busy or trans_serwer then
  begin
    if UOSPlayer.Busy then UOSPlayer.Stop(true);
    if UOSpodklad.Busy then UOSpodklad.Stop(true);
    if UOSszum.Busy then UOSszum.Stop(true);
    if trans_serwer then tcp.SendString('{EXIT}');
    Application.ProcessMessages;
    sleep(500);
  end;
  if mplayer.Playing or mplayer.Paused then
  begin
    Stop.Click;
    sleep(500);
  end;
  wygeneruj_plik2;
  db_close;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
var
  b15: boolean;
  res: TResourceStream;
begin
  //writeln('Force key: ',Key);
  //EXIT;
  b15:=miRecord.Checked;
  {obsługa skrótów klawiszowych}
  if b15 then
  begin
    case Key of
      VK_S: if (not miPresentation.Checked) and mplayer.Running then zrob_zdjecie;
      VK_E: if (not miPresentation.Checked) and mplayer.Running then MenuItem11.Click; //'E'
      VK_RETURN: if mplayer.Running then DBGrid2DblClick(Sender); //'ENTER
      107: if mplayer.Running then dodaj_pozycje_na_koniec_listy(ssShift in Shift); //'+'
      188: if mplayer.Running then czasy_edycja_188; //'<'
      190: if mplayer.Running then czasy_edycja_190; //'>'
      191: if mplayer.Running then czasy_edycja_191; //'/'
      146: if mplayer.Running then czasy_edycja_146; //'\' (między SHIFT a Z)
    end;
  end;

  {obsługa reszty skrótów}
  case Key of
    VK_SPACE: if mplayer.Running then if mplayer.Playing then mplayer.Pause else if mplayer.Paused then mplayer.Replay;
    VK_LEFT: if mplayer.Running and (not miPresentation.Checked) then mplayer.Position:=mplayer.Position-4;
    VK_RIGHT: if mplayer.Running and (not miPresentation.Checked) then mplayer.Position:=mplayer.Position+4;
    VK_UP: komenda_up;
    VK_DOWN: komenda_down;
    VK_F: if not miPresentation.Checked then go_fullscreen;
    VK_O: if not miPresentation.Checked then go_przelaczpokazywanieczasu;
    VK_ESCAPE: if not Panel1.Visible then
               begin
                 if _DEF_FULLSCREEN_MEMORY then
                 begin
                   UpdateFilmToRoz;
                   _DEF_FULLSCREEN_MEMORY:=false;
                   DBGrid3.Visible:=false;
                 end;
                 go_fullscreen;
                 Key:=0;
               end;
    VK_DELETE: if Menuitem45.Checked then
               begin
                 if DBGrid1.Focused then
                 begin
                   if not filmy.IsEmpty then filmy.Delete;
                 end else
                 if DBGrid2.Focused then usun_pozycje_czasu(false);
               end;
    VK_R: if (not miPresentation.Checked) and mplayer.Running then test_force:=true;
    VK_RETURN: if mplayer.Running and (not b15) then go_czas2; //'ENTER'
    else if MenuItem17.Checked then writeln('Klawisz: ',Key);
  end;

  {obsługa plików muzycznych}
  if miPresentation.Checked then case Key of
    VK_1: musicload(0);
    VK_2: musicload(1);
    VK_3: musicload(2);
    VK_4: musicload(3);
    VK_5: musicload(4);
    VK_6: musicload(5);
    VK_7: musicload(6);
    VK_8: musicload(7);
    VK_9: musicload(8);
    VK_0: musicload(9);
  end;

  {obsługa pilota}
  if miPlayer.Checked or miPresentation.Checked or miRecord.Checked then
  begin

    if miPresentation.Checked then
    begin
      if (Key=45) and (not bcenzura) then
      begin
        mixer.RecMute;
        try
          cenzura:=TMemoryStream.Create;
          res:=TResourceStream.Create(hInstance,'CENZURA',RT_RCDATA);
          cenzura.LoadFromStream(res);
        finally
          res.Free;
        end;
        UOSPlayer.Volume:=0.04;
        UOSPlayer.Start(cenzura);
        bcenzura:=true;
      end;
      if Key=46 then
      begin
        try
          cenzura:=TMemoryStream.Create;
          res:=TResourceStream.Create(hInstance,'PRZERYWNIK2',RT_RCDATA);
          cenzura.LoadFromStream(res);
        finally
          res.Free;
        end;
        UOSPlayer.Volume:=1;
        UOSPlayer.Start(cenzura);
      end;
    end;
    Presentation.Execute(Key);
  end;
  Key:=0;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {obsługa pilota}
  if miPlayer.Checked or miPresentation.Checked or miRecord.Checked then
  begin
    if miPresentation.Checked then
    begin
      if Key=45 then if bcenzura then
      begin
        UOSPlayer.Stop;
        mixer.RecUnmute;
        bcenzura:=false;
      end;
    end;
  end;
end;

procedure TForm1.Memory_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbMiddle then
  begin
    mem_lamp[1].active:=false;
    Memory_1.ImageIndex:=27;
  end else
  if Button=mbRight then
  begin
    if not mplayer.Running then exit;
    mem_lamp[1].rozdzial:=db_roz.FieldByName('id').AsInteger;
    mem_lamp[1].indeks:=indeks_play;
    mem_lamp[1].indeks_czasu:=indeks_czas;
    mem_lamp[1].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[1].active:=true;
    Memory_1.ImageIndex:=28;
  end;
end;

procedure TForm1.Memory_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbMiddle then
  begin
    mem_lamp[2].active:=false;
    Memory_2.ImageIndex:=29;
  end else
  if Button=mbRight then
  begin
    if not mplayer.Running then exit;
    mem_lamp[2].rozdzial:=db_roz.FieldByName('id').AsInteger;
    mem_lamp[2].indeks:=indeks_play;
    mem_lamp[2].indeks_czasu:=indeks_czas;
    mem_lamp[2].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[2].active:=true;
    Memory_2.ImageIndex:=30;
  end;
end;

procedure TForm1.Memory_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbMiddle then
  begin
    mem_lamp[3].active:=false;
    Memory_3.ImageIndex:=31;
  end else
  if Button=mbRight then
  begin
    if not mplayer.Running then exit;
    mem_lamp[3].rozdzial:=db_roz.FieldByName('id').AsInteger;
    mem_lamp[3].indeks:=indeks_play;
    mem_lamp[3].indeks_czasu:=indeks_czas;
    mem_lamp[3].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[3].active:=true;
    Memory_3.ImageIndex:=32;
  end;
end;

procedure TForm1.Memory_4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbMiddle then
  begin
    mem_lamp[4].active:=false;
    Memory_4.ImageIndex:=33;
  end else
  if Button=mbRight then
  begin
    if not mplayer.Running then exit;
    mem_lamp[4].rozdzial:=db_roz.FieldByName('id').AsInteger;
    mem_lamp[4].indeks:=indeks_play;
    mem_lamp[4].indeks_czasu:=indeks_czas;
    mem_lamp[4].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[4].active:=true;
    Memory_4.ImageIndex:=34;
  end;
end;

procedure TForm1.mplayerStop(Sender: TObject);
var
  pom1,pom2,pom3: integer;
  s: string;
begin
  DBGrid3.Visible:=_DEF_FULLSCREEN_MEMORY;
  cctimer_opt:=0;
  wygeneruj_plik2;
  if uELED9.Active then musicplay;
  szumpause;
  Edit1.Text:='';
  pom1:=indeks_rozd;
  pom2:=indeks_play;
  Play.ImageIndex:=0;
  const_mplayer_param:='';
  mplayer.StartParam:='';
  indeks_rozd:=-1;
  indeks_play:=-1;
  indeks_czas:=-1;
  czas_aktualny:=-1;
  czas_nastepny:=-1;
  vv_obrazy:=false;
  vv_transmisja:=false;
  vv_szum:=false;
  vv_osd:=0;
  vv_audio:=0;
  vv_lang:='';
  vv_resample:=0;
  vv_audioeq:='';
  vv_audio1:='';
  vv_audio2:='';
  uELED5.Active:=false;
  DBGrid1.Refresh;
  DBGrid2.Refresh;
  przyciski(false);
  Play.ImageIndex:=0;
  Label3.Caption:='-:--';
  Label4.Caption:='-:--';
  pp.Position:=0;
  reset_oo;
  if trans_serwer then SendRamkaPP;
  if (not stop_force) and miPlayer.Checked then
  begin
    film_play.ParamByName('id').AsInteger:=pom1;
    film_play.Open;
    film_play.Locate('id',pom2,[]);
    film_play.Next;
    pom3:=film_play.FieldByName('id').AsInteger;
    if (pom2<>pom3) and (pom3<>0) then
    begin
      s:=film_play.FieldByName('plik').AsString;
      if (s='') or (not FileExists(s)) then s:=film_play.FieldByName('link').AsString;
      Edit1.Text:=s;
      indeks_rozd:=pom1;
      film_tytul:=film_play.FieldByName('nazwa').AsString;
      indeks_play:=film_play.FieldByName('id').AsInteger;
      indeks_czas:=-1;
      vv_wzmocnienie:=film_play.FieldByName('wzmocnienie').AsBoolean;
      vv_glosnosc:=film_play.FieldByName('glosnosc').AsInteger;
      vv_obrazy:=GetBit(film_play.FieldByName('status').AsInteger,0);
      vv_transmisja:=GetBit(film_play.FieldByName('status').AsInteger,1);
      vv_szum:=GetBit(film_play.FieldByName('status').AsInteger,2);
      vv_osd:=film_play.FieldByName('osd').AsInteger;
      vv_audio:=film_play.FieldByName('audio').AsInteger;
      vv_resample:=film_play.FieldByName('resample').AsInteger;
      vv_audioeq:=film_play.FieldByName('audioeq').AsString;
      vv_audio1:=film_play.FieldByName('file_audio').AsString;
      Play.Click;
      if czasy.RecordCount=0 then zapisz_na_tasmie(film_tytul);
    end else if not _DEF_FULLSCREEN_MEMORY then go_fullscreen(true);
    film_play.Close;
  end else if not _DEF_FULLSCREEN_MEMORY then go_fullscreen(true);
  stop_force:=false;
end;

procedure TForm1.ooMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  max,czas: single;
  a: integer;
  aa: TTime;
  bPos: boolean;
begin
  if vv_obrazy then exit;
  if mplayer.Running and (Label5.Caption<>'-:--') then
  begin
    pstatus_ignore:=true;
    if czas_nastepny=-1 then max:=MiliSecToInteger(round(mplayer.Duration*1000))-czas_aktualny
    else max:=czas_nastepny-czas_aktualny;
    a:=round(max*X/oo.Width)+czas_aktualny;
    czas:=IntegerToTime(a)*SecsPerDay;
    mplayer.Position:=czas;
  end;
end;

procedure TForm1.ooMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
  );
var
  max: integer;
  a: integer;
  aa: TTime;
  bPos: boolean;
begin
  if vv_obrazy then exit;
  if mplayer.Running and (Label5.Caption<>'-:--') then
  begin
    if czas_nastepny=-1 then max:=MiliSecToInteger(round(mplayer.Duration*1000))-czas_aktualny
    else max:=czas_nastepny-czas_aktualny;
    a:=round(max*X/oo.Width)+czas_aktualny;
    aa:=IntegerToTime(a);
    bPos:=a<3600000;
    if bPos then podpowiedz2.Caption:=FormatDateTime('nn:ss',aa) else podpowiedz2.Caption:=FormatDateTime('h:nn:ss',aa);
    podpowiedz2.Left:=X+oo.Left-round(podpowiedz2.Width/2);
    podpowiedz2.Visible:=true;
    oo_mouse.Enabled:=false;
    oo_mouse.Enabled:=true;
  end;
end;

procedure TForm1.oo_mouseStartTimer(Sender: TObject);
begin
  podpowiedz2.Visible:=true;
end;

procedure TForm1.oo_mouseTimer(Sender: TObject);
begin
  oo_mouse.Enabled:=false;
  podpowiedz2.Visible:=false;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  dodaj_pozycje_na_koniec_listy;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
var
  id: integer;
begin
  if czasy.RecordCount=0 then exit;
  id:=czasy.FieldByName('id').AsInteger;
  FCzas:=TFCzas.Create(self);
  try
    FCzas.s_nazwa:=czasy.FieldByName('nazwa').AsString;
    FCzas.s_audio:=czasy.FieldByName('file_audio').AsString;
    FCzas.i_od:=czasy.FieldByName('czas_od').AsInteger;
    if czasy.FieldByName('czas_do').IsNull then FCzas.i_do:=0
    else FCzas.i_do:=czasy.FieldByName('czas_do').AsInteger;
    FCzas.in_tryb:=2;
    FCzas.ShowModal;
    if FCzas.out_ok then
    begin
      trans.StartTransaction;
      czasy.Edit;
      czasy.FieldByName('nazwa').AsString:=FCzas.s_nazwa;
      if FCzas.s_audio='' then czasy.FieldByName('file_audio').Clear else
      czasy.FieldByName('file_audio').AsString:=FCzas.s_audio;
      czasy.Post;
      trans.Commit;
    end;
  finally
    FCzas.Free;
  end;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  if czasy.RecordCount=0 then exit;
  usun_pozycje_czasu(not Menuitem45.Checked);
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
var
  a_id,a_od,a_do: integer;
  p_id,p_od,p_do: integer;
  id,pom1,pom2: integer;
  cod: integer;
begin
  a_id:=czasy.FieldByName('id').AsInteger;
  a_od:=czasy.FieldByName('czas_od').AsInteger;
  if czasy.FieldByName('czas_do').IsNull then a_do:=-1 else a_do:=czasy.FieldByName('czas_do').AsInteger;
  czasy_przed.ParamByName('id_aktualne').AsInteger:=a_id;
  czasy_przed.Open;
  if czasy_przed.IsEmpty then
  begin
    p_od:=0;
    p_do:=0;
  end else begin
    p_id:=czasy_przed.FieldByName('id').AsInteger;
    p_od:=czasy_przed.FieldByName('czas_od').AsInteger;
    if czasy_przed.FieldByName('czas_do').IsNull then p_do:=-1 else p_do:=czasy_przed.FieldByName('czas_do').AsInteger;
  end;
  czasy_przed.Close;

  if p_do=-1 then cod:=p_od else cod:=p_do;

  trans.StartTransaction;
  czasy.Append;
  czasy.FieldByName('film').AsInteger:=filmy.FieldByName('id').AsInteger;
  czasy.FieldByName('nazwa').AsString:='..';
  czasy.FieldByName('czas_od').AsInteger:=cod;
  czasy.FieldByName('czas_do').Clear;
  czasy.Post;
  czasy.Last;
  id:=czasy.FieldByName('id').AsInteger;
  czasy_up_id.ParamByName('id').AsInteger:=id;
  czasy_up_id.ParamByName('new_id').AsInteger:=0;
  czasy_up_id.ExecSQL;

  czasy_od_id.ParamByName('id_aktualne').AsInteger:=a_id;
  czasy_od_id.Open;
  pom1:=id;
  while not czasy_od_id.EOF do
  begin
    pom2:=czasy_od_id.Fields[0].AsInteger;
    czasy_up_id.ParamByName('id').AsInteger:=pom2;
    czasy_up_id.ParamByName('new_id').AsInteger:=pom1;
    czasy_up_id.ExecSQL;
    czasy_od_id.Next;
    pom1:=pom2;
  end;
  czasy_up_id.ParamByName('id').AsInteger:=0;
  czasy_up_id.ParamByName('new_id').AsInteger:=pom1;
  czasy_up_id.ExecSQL;
  czasy_od_id.Close;
  trans.Commit;
  czasy.Refresh;
  czasy.Locate('id',pom1,[]);
  test;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
var
  a_id,a_od,a_do: integer;
  p_id,p_od,p_do: integer;
  id,pom1,pom2: integer;
  cod: integer;
  ostatni: boolean;
begin
  a_id:=czasy.FieldByName('id').AsInteger;
  a_od:=czasy.FieldByName('czas_od').AsInteger;
  if czasy.FieldByName('czas_do').IsNull then a_do:=-1 else a_do:=czasy.FieldByName('czas_do').AsInteger;
  czasy_po.ParamByName('id_aktualne').AsInteger:=a_id;
  czasy_po.Open;
  if czasy_po.IsEmpty then ostatni:=true else
  begin
    p_id:=czasy_po.FieldByName('id').AsInteger;
    p_od:=czasy_po.FieldByName('czas_od').AsInteger;
    if czasy_po.FieldByName('czas_do').IsNull then p_do:=-1 else p_do:=czasy_po.FieldByName('czas_do').AsInteger;
    ostatni:=false;
  end;
  czasy_po.Close;

  if a_do=-1 then cod:=a_od else cod:=a_do;

  trans.StartTransaction;
  czasy.Append;
  czasy.FieldByName('film').AsInteger:=filmy.FieldByName('id').AsInteger;
  czasy.FieldByName('nazwa').AsString:='..';
  czasy.FieldByName('czas_od').AsInteger:=cod;
  czasy.FieldByName('czas_do').Clear;
  czasy.Post;
  czasy.Last;
  if ostatni then
  begin
    trans.Commit;
    exit;
  end;
  id:=czasy.FieldByName('id').AsInteger;
  czasy_up_id.ParamByName('id').AsInteger:=id;
  czasy_up_id.ParamByName('new_id').AsInteger:=0;
  czasy_up_id.ExecSQL;

  czasy_od_id.ParamByName('id_aktualne').AsInteger:=p_id;
  czasy_od_id.Open;
  pom1:=id;
  while not czasy_od_id.EOF do
  begin
    pom2:=czasy_od_id.Fields[0].AsInteger;
    czasy_up_id.ParamByName('id').AsInteger:=pom2;
    czasy_up_id.ParamByName('new_id').AsInteger:=pom1;
    czasy_up_id.ExecSQL;
    czasy_od_id.Next;
    pom1:=pom2;
  end;
  czasy_up_id.ParamByName('id').AsInteger:=0;
  czasy_up_id.ParamByName('new_id').AsInteger:=pom1;
  czasy_up_id.ExecSQL;
  czasy_od_id.Close;
  trans.Commit;
  czasy.Refresh;
  czasy.Locate('id',pom1,[]);
  test;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
var
  ss: TStrings;
begin
  if mess.ShowConfirmationYesNo('Czy pobrać dane ze zdalnego serwera?') then
  begin
    ss:=TStringList.Create;
    try
      dm.www_odczyt(ss);
      ss.SaveToFile(MyConfDir('archiwum_www.csv'));
    finally
      ss.Free;
    end;
    csv.Filename:=MyConfDir('archiwum_www.csv');
    csv.Tag:=1;
    csv.Execute;
    exit;
  end;
  if OpenDialogCsv.Execute then
  begin
    csv.Filename:=OpenDialogCsv.FileName;
    csv.Tag:=1;
    csv.Execute;
  end;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  MenuItem17.Checked:=not MenuItem17.Checked;
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  schemasync.SaveSchema;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
var
  id_roz,id_filmu,id_czasu: integer;
  id,new_id: integer;
begin
  if not mess.ShowConfirmationYesNo('Baza danych zostanie zrestrukturyzowana, identyfikatory zostaną przepisane i nadane na nowo, po tej operacji baza zostanie spakowana, by zwolnić zajmowane miejsce na dysku.^^Czy kontynuować?') then exit;
  if filmy.IsEmpty then exit;
  id_roz:=db_roz.FieldByName('id').AsInteger;
  id_filmu:=filmy.FieldByName('id').AsInteger;
  if czasy.IsEmpty then id_czasu:=-1 else id_czasu:=czasy.FieldByName('id').AsInteger;
  trans.StartTransaction;
  {rozdziały}
  roz2.Open;
  new_id:=1;
  while not roz2.EOF do
  begin
    id:=roz2.FieldByName('id').AsInteger;
    if id<>new_id then
    begin
      if id=id_roz then id_roz:=new_id;
      rename_id0.ParamByName('id').AsInteger:=id;
      rename_id0.ParamByName('new_id').AsInteger:=new_id;
      rename_id0.Execute;
    end;
    inc(new_id);
    roz2.Next;
  end;
  roz2.Close;
  {filmy}
  filmy2.Open;
  new_id:=1;
  while not filmy2.EOF do
  begin
    id:=filmy2.FieldByName('id').AsInteger;
    if id<>new_id then
    begin
      if id=id_filmu then id_filmu:=new_id;
      rename_id.ParamByName('id').AsInteger:=id;
      rename_id.ParamByName('new_id').AsInteger:=new_id;
      rename_id.Execute;
    end;
    inc(new_id);
    filmy2.Next;
  end;
  filmy2.Close;
  {filmy - sort}
  filmy3.Open;
  new_id:=1;
  while not filmy3.EOF do
  begin
    id:=filmy3.FieldByName('sort').AsInteger;
    if id<>new_id then
    begin
      if id=id_filmu then id_filmu:=new_id;
      rename_id1.ParamByName('sort').AsInteger:=id;
      rename_id1.ParamByName('new_sort').AsInteger:=new_id;
      rename_id1.Execute;
    end;
    inc(new_id);
    filmy3.Next;
  end;
  filmy3.Close;
  {czasy}
  czasy2.Open;
  new_id:=1;
  while not czasy2.EOF do
  begin
    id:=czasy2.FieldByName('id').AsInteger;
    if id<>new_id then
    begin
      if id=id_czasu then id_czasu:=new_id;
      rename_id2.ParamByName('id').AsInteger:=id;
      rename_id2.ParamByName('new_id').AsInteger:=new_id;
      rename_id2.Execute;
    end;
    inc(new_id);
    czasy2.Next;
  end;
  czasy2.Close;
  trans.Commit;
  pakowanie_db.Execute;
  //filmy.Close;
  db_roz.Close;
  db.Disconnect;
  db.Connect;
  //filmy.Open;
  db_roz.Open;
  db_roz.Locate('id',id_roz,[]);
  filmy.Locate('id',id_filmu,[]);
  if id_czasu>-1 then czasy.Locate('id',id_czasu,[]);
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  dodaj_film;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
var
  id_roz,id_filmu,id_czasu: integer;
begin
  if mess.ShowConfirmationYesNo('Baza danych zostanie spakowana, tj. usunięte zostaną rekordy wcześniej usunięte, które zajmują już tylko pamięć dyskową.^^Czy kontynuować?') then
  begin
    id_roz:=db_roz.FieldByName('id').AsInteger;
    if filmy.IsEmpty then id_filmu:=-1 else id_filmu:=filmy.FieldByName('id').AsInteger;
    if czasy.IsEmpty then id_czasu:=-1 else id_czasu:=czasy.FieldByName('id').AsInteger;
    pakowanie_db.Execute;
    //filmy.Close;
    db_roz.Close;
    db.Disconnect;
    db.Connect;

    //filmy.Open;
    //if id_filmu>-1 then filmy.Locate('id',id_filmu,[]);
    //if id_czasu>-1 then czasy.Locate('id',id_czasu,[]);

    db_roz.Open;
    db_roz.Locate('id',id_roz,[]);
    filmy.Locate('id',id_filmu,[]);
    if id_czasu>-1 then czasy.Locate('id',id_czasu,[]);
  end;
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  MenuItem25.Checked:=not MenuItem25.Checked;
  filmy.Close;
  filmy.Open;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
  MenuItem26.Checked:=not MenuItem26.Checked;
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
var
  s: string;
  id: integer;
begin
  s:=InputBox('Nowy rozdział','Podaj nazwę:','');
  if s<>'' then
  begin
    roz_add.ParamByName('nazwa').AsString:=s;
    roz_add.ExecSQL;
    id:=get_last_id;
    db_roz.Refresh;
    db_roz.Locate('id',id,[]);
  end;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var
  vstatus: integer;
begin
  if filmy.RecordCount=0 then exit;
  FLista:=TFLista.Create(self);
  try
    FLista.s_tytul:=filmy.FieldByName('nazwa').AsString;
    FLista.s_link:=filmy.FieldByName('link').AsString;
    FLista.s_file:=filmy.FieldByName('plik').AsString;
    FLista.s_audio:=filmyfile_audio.AsString;
    FLista.s_lang:=filmylang.AsString;
    if filmy.FieldByName('rozdzial').IsNull then FLista.i_roz:=0
    else FLista.i_roz:=filmy.FieldByName('rozdzial').AsInteger;
    if filmywzmocnienie.IsNull then FLista.in_out_wzmocnienie:=-1 else
    if filmywzmocnienie.AsBoolean then FLista.in_out_wzmocnienie:=1 else FLista.in_out_wzmocnienie:=0;
    if filmyglosnosc.IsNull then FLista.in_out_glosnosc:=-1 else FLista.in_out_glosnosc:=filmyglosnosc.AsInteger;
    vstatus:=filmystatus.AsInteger;
    FLista.in_out_obrazy:=GetBit(vstatus,0);
    FLista.in_transmisja:=GetBit(vstatus,1);
    FLista.in_szum:=GetBit(vstatus,2);
    FLista.in_out_osd:=filmyosd.AsInteger;
    FLista.in_out_audio:=filmyaudio.AsInteger;
    FLista.in_out_resample:=filmyresample.AsInteger;
    FLista.in_tryb:=2;
    FLista.ShowModal;
    if FLista.out_ok then
    begin
      trans.StartTransaction;
      filmy.Edit;
      filmy.FieldByName('nazwa').AsString:=FLista.s_tytul;
      if FLista.s_link='' then filmy.FieldByName('link').Clear else filmy.FieldByName('link').AsString:=FLista.s_link;
      if FLista.s_file='' then filmy.FieldByName('plik').Clear else filmy.FieldByName('plik').AsString:=FLista.s_file;
      if FLista.s_audio='' then filmyfile_audio.Clear else filmyfile_audio.AsString:=FLista.s_audio;
      if FLista.s_lang='' then filmylang.Clear else filmylang.AsString:=FLista.s_lang;
      if FLista.i_roz=0 then filmy.FieldByName('rozdzial').Clear
      else filmy.FieldByName('rozdzial').AsInteger:=FLista.i_roz;
      if FLista.in_out_wzmocnienie=-1 then filmywzmocnienie.Clear else filmywzmocnienie.AsBoolean:=FLista.in_out_wzmocnienie=1;
      if FLista.in_out_glosnosc=-1 then filmyglosnosc.Clear else filmyglosnosc.AsInteger:=FLista.in_out_glosnosc;
      SetBit(vstatus,0,FLista.in_out_obrazy);
      SetBit(vstatus,1,FLista.in_transmisja);
      SetBit(vstatus,2,FLista.in_szum);
      filmystatus.AsInteger:=vstatus;
      filmyosd.AsInteger:=FLista.in_out_osd;
      filmyaudio.AsInteger:=FLista.in_out_audio;
      filmyresample.AsInteger:=FLista.in_out_resample;
      filmy.Post;
      trans.Commit;
      filmy.Refresh;
    end;
  finally
    FLista.Free;
  end;
end;

procedure TForm1.MenuItem30Click(Sender: TObject);
var
  pom,s: string;
  id: integer;
begin
  if db_roz.FieldByName('id').AsInteger=0 then exit;
  id:=db_roz.FieldByName('id').AsInteger;
  pom:=db_roz.FieldByName('nazwa').AsString;
  s:=InputBox('Edycja rozdziału','Podaj nową nazwę:','');
  if (s<>'') and (s<>pom) then
  begin
    db_roz.Edit;
    db_roz.FieldByName('nazwa').AsString:=s;
    db_roz.Post;
  end;
end;

procedure TForm1.MenuItem31Click(Sender: TObject);
var
  id: integer;
  b: boolean;
  link,plik: string;
  vobrazy: boolean;
begin
  if db_roz.FieldByName('id').AsInteger=0 then exit;
  if mess.ShowConfirmationYesNo('Czy usunąć wskazany rozdział?') then
  begin
    id:=db_roz.FieldByName('id').AsInteger;
    trans.StartTransaction;
    if mess.ShowConfirmationYesNo('Czy usunąć jednocześnie z bazy danych wszystkie filmy należące do usuwanego rozdziału?') then
    begin
      b:=mess.ShowConfirmationYesNo('Czy istniejące pliki skojarzone z filmami także usunąć?^^Zwróć uwagę, że zostaną tylko usunięte pliki, których film ma wypełniony link do Youtube, więc pozycje bez tego linku nie zostaną usunięte.');
      filmy_roz.Open;
      while not filmy_roz.EOF do
      begin
        if b then
        begin
          if filmy_roz.FieldByName('link').IsNull then link:='' else  link:=filmy_roz.FieldByName('link').AsString;
          plik:=filmy_roz.FieldByName('plik').AsString;
          vobrazy:=GetBit(filmy_roz.FieldByName('status').AsInteger,0);
          if (vobrazy or (link<>'')) and (plik<>'') and FileExists(plik) then DeleteFile(plik);
        end;
        filmy_roz.Next;
      end;
      filmy_roz.Close;
      roz_del2.ParamByName('id').AsInteger:=id;
      roz_del2.Execute;
      db_roz.Delete;
    end else begin
      roz_del1.ParamByName('id').AsInteger:=id;
      roz_del1.Execute;
      db_roz.Delete;
    end;
    trans.Commit;
  end;
end;

procedure TForm1.MenuItem32Click(Sender: TObject);
var
  cc: string;
  cla: TInfoYoutube;
  aa,vv: TStrings;
  a,v: integer;
begin
  if filmyc_plik_exist.AsBoolean then exit;
  //ytdir.InitialDir:=dm.GetConfig('default-directory-save-files','');
  //if not ytdir.Execute then exit;
  //writeln(ytdir.FileName);
  if FileExists(_DEF_COOKIES_FILE_YT) then cc:=_DEF_COOKIES_FILE_YT else cc:='';
  cla:=TInfoYoutube.Create;
  aa:=TStringList.Create;
  vv:=TStringList.Create;
  try
    cla.DownloadInfo(filmylink.AsString,aa,vv,cc);
    FSelectYT:=TFSelectYT.Create(self);
    try
      FSelectYT.CheckListBox1.Items.Assign(aa);
      FSelectYT.CheckListBox2.Items.Assign(vv);
      FSelectYT.ShowModal;
      if FSelectYT.io_ok then
      begin
        a:=FSelectYT.io_audio;
        v:=FSelectYT.io_video;
      end else exit;
    finally
      FSelectYT.Free;
    end;
  finally
    cla.Free;
    aa.Free;
    vv.Free;
  end;
  YoutubeElement.link:=filmylink.AsString;
  YoutubeElement.film:=filmyid.AsInteger;
  YoutubeElement.dir:=dm.GetConfig('default-directory-save-files','');
  YoutubeElement.audio:=a;
  YoutubeElement.video:=v;
  ppp.Add;
  if not YoutubeIsProcess then TWatekYoutube.Create(cc);
end;

procedure TForm1.MenuItem33Click(Sender: TObject);
var
  cc: string;
  t: TBookmark;
begin
  if filmy.IsEmpty then exit;
  ytdir.InitialDir:=dm.GetConfig('default-directory-save-files','');
  if not ytdir.Execute then exit;
  filmy.DisableControls;
  t:=filmy.GetBookmark;
  filmy.First;
  while not filmy.EOF do
  begin
    if filmyc_plik_exist.AsBoolean then
    begin
      filmy.Next;
      continue;
    end;
    YoutubeElement.link:=filmylink.AsString;
    YoutubeElement.film:=filmyid.AsInteger;
    YoutubeElement.dir:=ytdir.FileName;
    YoutubeElement.audio:=0;
    YoutubeElement.video:=0;
    ppp.Add;
    filmy.Next;
  end;
  filmy.GotoBookmark(t);
  filmy.EnableControls;
  if not YoutubeIsProcess then
  begin
    if FileExists(_DEF_COOKIES_FILE_YT) then cc:=_DEF_COOKIES_FILE_YT else cc:='';
    TWatekYoutube.Create(cc);
  end;
end;

procedure TForm1.MenuItem34Click(Sender: TObject);
begin
  FConfig:=TFConfig.Create(self);
  FConfig.ShowModal;
  pilot:=dm.pilot_wczytaj;
end;

procedure TForm1.MenuItem35Click(Sender: TObject);
begin
  FTransmisja:=TFTransmisja.Create(self);
  try
    FTransmisja.ShowModal;
    if FTransmisja.out_ok then
    begin
      trans_tytul:=FTransmisja.Edit1.Text;
      trans_opis.Assign(FTransmisja.Memo1.Lines);
      trans_serwer:=FTransmisja.CheckBox1.Checked;
    end;
  finally
    FTransmisja.Free;
  end;
  if trans_serwer then tcp.Connect;
end;

var
  tasma_wektor: integer = 0;

procedure TForm1.MenuItem36Click(Sender: TObject);
begin
  FZapisTasmy:=TFZapisTasmy.Create(self);
  try
    FZapisTasmy.wektor.Value:=tasma_wektor;
    FZapisTasmy.ShowModal;
    tasma_wektor:=FZapisTasmy.wektor.Value;
  finally
    FZapisTasmy.Free;
  end;
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
var
  t: TBookmark;
  ss: TStrings;
  b,b2: boolean;
begin
  if czasy.IsEmpty then exit;
  b:=mess.ShowConfirmationYesNo('Czy do planu dołączyć ignorowane obszary filmu?');
  b2:=mess.ShowConfirmationYesNo('Czy dołączyć etykiety czasowe do planu?');
  ss:=TStringList.Create;
  try
    czasy.DisableControls;
    t:=czasy.GetBookmark;
    czasy.First;
    while not czasy.EOF do
    begin
      if GetBit(czasystatus.AsInteger,0) and (not b) then
      begin
        czasy.Next;
        continue;
      end;
      if b2 then ss.Add('[czas] - '+FirstMinusToGeneratePlane(czasynazwa.AsString))
            else ss.Add(czasynazwa.AsString);
      czasy.Next;
    end;
    Clipboard.AsText:=ss.Text;
  finally
    czasy.GotoBookmark(t);
    czasy.EnableControls;
    ss.Free;
  end;
end;

procedure TForm1.MenuItem38Click(Sender: TObject);
var
  a: integer;
  b: boolean;
begin
  a:=czasystatus.AsInteger;
  b:=ecode.GetBit(a,0);
  if b then SetBit(a,0,false) else SetBit(a,0,true);
  czasy.Edit;
  czasystatus.AsInteger:=a;
  czasy.Post;
end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin
  MenuItem39.Checked:=not MenuItem39.Checked;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  DeleteFilm;
end;

procedure TForm1.MenuItem40Click(Sender: TObject);
begin
  if Menuitem40.Tag=0 then
  begin
    Menuitem40.Tag:=filmyid.AsInteger;
    Menuitem40.Caption:='Pamięć 1 ('+filmynazwa.AsString+')';
  end else begin
    Menuitem40.Tag:=0;
    Menuitem40.Caption:='Pamięć 1';
  end;
  auto_memory[1]:=Menuitem40.Tag;
  Menuitem40.Checked:=Menuitem40.Tag>0;
end;

procedure TForm1.MenuItem41Click(Sender: TObject);
begin
  if Menuitem41.Tag=0 then
  begin
    Menuitem41.Tag:=filmyid.AsInteger;
    Menuitem41.Caption:='Pamięć 2 ('+filmynazwa.AsString+')';
  end else begin
    Menuitem41.Tag:=0;
    Menuitem41.Caption:='Pamięć 2';
  end;
  auto_memory[2]:=Menuitem41.Tag;
  Menuitem41.Checked:=Menuitem41.Tag>0;
end;

procedure TForm1.MenuItem42Click(Sender: TObject);
begin
  if Menuitem42.Tag=0 then
  begin
    Menuitem42.Tag:=filmyid.AsInteger;
    Menuitem42.Caption:='Pamięć 3 ('+filmynazwa.AsString+')';
  end else begin
    Menuitem42.Tag:=0;
    Menuitem42.Caption:='Pamięć 3';
  end;
  auto_memory[3]:=Menuitem42.Tag;
  Menuitem42.Checked:=Menuitem42.Tag>0;
end;

procedure TForm1.MenuItem43Click(Sender: TObject);
begin
  if Menuitem43.Tag=0 then
  begin
    Menuitem43.Tag:=filmyid.AsInteger;
    Menuitem43.Caption:='Pamięć 4 ('+filmynazwa.AsString+')';
  end else begin
    Menuitem43.Tag:=0;
    Menuitem43.Caption:='Pamięć 4';
  end;
  auto_memory[4]:=Menuitem43.Tag;
  Menuitem43.Checked:=Menuitem43.Tag>0;
end;

procedure TForm1.MenuItem44Click(Sender: TObject);
var
  a: integer;
  b: boolean;
begin
  a:=czasystatus.AsInteger;
  b:=ecode.GetBit(a,1);
  if b then SetBit(a,1,false) else SetBit(a,1,true);
  czasy.Edit;
  czasystatus.AsInteger:=a;
  czasy.Post;
end;

procedure TForm1.MenuItem45Click(Sender: TObject);
begin
  Menuitem45.Checked:=not Menuitem45.Checked;
end;

procedure TForm1.MenuItem46Click(Sender: TObject);
begin
  if SelDirPic.Execute then if SaveDialogFilm.Execute then PictureToVideo(SelDirPic.FileName,SaveDialogFilm.FileName,'*.jpg');
end;

procedure TForm1.MenuItem47Click(Sender: TObject);
begin
  if SelDirPic.Execute then if SaveDialogFilm.Execute then PictureToVideo(SelDirPic.FileName,SaveDialogFilm.FileName,'*.png');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
var
  plik: string;
  ss: TStrings;
begin
  if mess.ShowConfirmationYesNo('Czy pobrać dane ze zdalnego serwera?') then
  begin
    ss:=TStringList.Create;
    try
      plik:=MyConfDir('archiwum_www.csv');
      dm.www_odczyt(ss);
      ss.SaveToFile(plik);
    finally
      ss.Free;
    end;
  end else plik:=MyConfDir('archiwum.csv');
  if not mess.ShowConfirmationYesNo('Aktualne pozycje zostaną usunięte, kontynuować?') then exit;
  csv.Tag:=0;
  csv.Filename:=plik;
  csv.Execute;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
const
  NULE = ';[null];[null];[null];[null];[null];[null];[null];[null]';
var
  f: textfile;
  s,s1,s2,p1,p2: string;
  ss: TStrings;
  i: integer;
begin
  if filmy.RecordCount=0 then exit;
  assignfile(f,MyConfDir('archiwum.csv'));
  rewrite(f);
  roz_id.Open;
  roz_id.First;
  while not roz_id.EOF do
  begin
    s:='R;'+roz_id.FieldByName('id').AsString+';'+roz_id.FieldByName('sort').AsString+';"'+roz_id.FieldByName('nazwa').AsString+'"';
    if roz_id.FieldByName('autosort').IsNull then s1:='0' else s1:=roz_id.FieldByName('autosort').AsString;
    s:=s+';'+s1;
    if roz_id.FieldByName('film_id').IsNull then s1:='[null]' else s1:=roz_id.FieldByName('film_id').AsString;
    s:=s+';'+s1;
    s:=s+';[null];[null];[null];[null];[null];[null];[null];[null];[null];[null];[null]';
    writeln(f,s+NULE);
    roz_id.Next;
  end;
  roz_id.Close;
  filmy_id.Open;
  filmy_id.First;
  while not filmy_id.EOF do
  begin
    if filmy_id.FieldByName('rozdzial').IsNull then p1:='[null]' else p1:=filmy_id.FieldByName('rozdzial').AsString;
    if filmy_id.FieldByName('wzmocnienie').IsNull then s1:='[null]' else if filmy_id.FieldByName('wzmocnienie').AsBoolean then s1:='1' else s1:='0';
    if filmy_id.FieldByName('glosnosc').IsNull then s2:='[null]' else s2:=filmy_id.FieldByName('glosnosc').AsString;
    s:='F;'+filmy_id.FieldByName('id').AsString+';'+filmy_id.FieldByName('sort').AsString+';"'+filmy_id.FieldByName('link').AsString+'";"'+filmy_id.FieldByName('plik').AsString+'";'+p1+';"'+filmy_id.FieldByName('nazwa').AsString+'";'+s1+';'+s2+';'+filmy_id.FieldByName('status').AsString;
    s:=s+';'+filmy_id.FieldByName('osd').AsString+';'+filmy_id.FieldByName('audio').AsString+';'+filmy_id.FieldByName('resample').AsString;
    if filmy_id.FieldByName('audioeq').IsNull then s:=s+';[null]' else s:=s+';"'+filmy_id.FieldByName('audioeq').AsString+'"';
    if filmy_id.FieldByName('file_audio').IsNull then s:=s+';[null]' else s:=s+';"'+filmy_id.FieldByName('file_audio').AsString+'"';
    if filmy_id.FieldByName('lang').IsNull then s:=s+';[null]' else s:=s+';"'+filmy_id.FieldByName('lang').AsString+'"';
    if filmy_id.FieldByName('position').IsNull then s:=s+';[null]' else s:=s+';'+filmy_id.FieldByName('position').AsString;
    writeln(f,s+NULE);
    filmy_id.Next;
  end;
  filmy_id.Close;
  czasy_id.Open;
  while not czasy_id.EOF do
  begin
    if czasy_id.FieldByName('czas_do').IsNull then p1:='0' else p1:=czasy_id.FieldByName('czas_do').AsString;
    if czasy_id.FieldByName('czas2').IsNull then p2:='0' else p2:=czasy_id.FieldByName('czas2').AsString;
    s:='C;'+czasy_id.FieldByName('id').AsString+';'+czasy_id.FieldByName('film').AsString+';"'+czasy_id.FieldByName('nazwa').AsString+'";'+czasy_id.FieldByName('czas_od').AsString+';'+p1+';'+p2+';'+czasy_id.FieldByName('status').AsString;
    if czasy_id.FieldByName('file_audio').IsNull then s:=s+';[null]' else s:=s+';"'+czasy_id.FieldByName('file_audio').AsString+'"';
    s:=s+';[null];[null];[null];[null];[null];[null]';
    writeln(f,s+NULE);
    czasy_id.Next;
  end;
  czasy_id.Close;
  (* indeksy czasu *)
  for i:=1 to 4 do
  begin
    if mem_lamp[i].active then s1:='1' else s1:='0';
    s:='I;'+IntToStr(i)+';'+s1+';'+IntToStr(mem_lamp[i].rozdzial)+';'+IntToStr(mem_lamp[i].indeks)+';'+IntToStr(mem_lamp[i].indeks_czasu)+';'+FloatToStr(mem_lamp[i].time)+';[null];[null];[null];[null];[null];[null];[null];[null]';
    writeln(f,s+NULE);
  end;
  closefile(f);
  if mess.ShowConfirmationYesNo('Czy wysłać dane także na serwer?') then
  begin
    ss:=TStringList.Create;
    try
      ss.LoadFromFile(MyConfDir('archiwum.csv'));
      if not dm.www_zapis(ss) then mess.ShowError('Dane nie zostały wysłane z powodu błędu.');
    finally
      ss.Free;
    end;
  end;
end;

procedure TForm1.MenuItem62Click(Sender: TObject);
var
  s: string;
begin
  FAEQ.in_out_filtr:=vv_audioeq;
  FAEQ.ShowModal;
  if FAEQ.out_zapisz then
  begin
    s:=FAEQ.in_out_filtr;
    //writeln(s);
    filmy.Edit;
    if s='' then filmyaudioeq.Clear else filmyaudioeq.AsString:=s;
    filmy.Post;
    vv_audioeq:=s;
  end;
end;

procedure TForm1.MenuItem63Click(Sender: TObject);
begin
  if mess.ShowConfirmationYesNo('Zostanie tylko usunięty lokalny plik skojarzony z tym filmem.^Kontunuować?') then
  begin
    DeleteFile(filmyplik.AsString);
    filmy.Edit;
    filmyplik.Clear;
    filmy.Post;
  end;
end;

procedure TForm1.MenuItem65Click(Sender: TObject);
begin
  FPanMusic:=TFPanMusic.Create(self);
  FPanMusic.ShowModal;
end;

procedure TForm1.MenuItem67Click(Sender: TObject);
var
  s: string;
  czas: TTime;
  t: TYoutubeTimer;
begin
  if uELED10.Active then exit;
  s:=InputBox('Konfiguracja zegara','Podaj czas rozpoczęcia programu:','');
  if s<>'' then
  begin
    try
      czas:=StrToTime(s);
      t:=TYoutubeTimer.Create(czas);
    except
      mess.ShowError('Wystąpił błąd - zegar czasu nie został uruchomiony.');
    end;
  end;
end;

procedure TForm1.MenuItem68Click(Sender: TObject);
var
  s,s2: string;
  ss: TStrings;
  i: integer;
  vstatus: integer;
begin
  if not SelectDirectoryDialog1.Execute then exit;
  ss:=TStringList.Create;
  try
    DirectoryPack1.ExecuteFiles(SelectDirectoryDialog1.FileName,'*.avi;*.mkv;*.mp4;*.webm',ss);
    TStringList(ss).Sort;
    trans.StartTransaction;
    for i:=0 to ss.Count-1 do
    begin
      s:=ss[i];
      filmy.Append;
      filmy.FieldByName('nazwa').AsString:=s;
      filmy.FieldByName('link').Clear;
      s2:=SelectDirectoryDialog1.FileName+_FF+s;
      s2:=StringReplace(s2,_FF+_FF,_FF,[rfReplaceAll]);
      filmy.FieldByName('plik').AsString:=s2;
      filmyfile_audio.Clear;
      if db_roz.FieldByName('id').AsInteger=0 then filmy.FieldByName('rozdzial').Clear
      else filmy.FieldByName('rozdzial').AsInteger:=db_roz.FieldByName('id').AsInteger;
      vstatus:=0;
      //SetBit(vstatus,0,FLista.in_out_obrazy);
      filmystatus.AsInteger:=vstatus;
      filmy.Post;
      ini.Execute;
    end;
    trans.Commit;
  finally
    ss.Free;
  end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  go_up;
end;

procedure TForm1.MenuItem70Click(Sender: TObject);
begin
  MenuItem70.Checked:=not MenuItem70.Checked;
  db_roz.Edit;
  if MenuItem70.Checked then db_rozautosort.AsInteger:=1 else db_rozautosort.AsInteger:=0;
  db_roz.Post;
end;

procedure TForm1.MenuItem71Click(Sender: TObject);
begin
  FImportDirectoryYoutube:=TFImportDirectoryYoutube.Create(self);
  try
    FImportDirectoryYoutube.ShowModal;
  finally
    FImportDirectoryYoutube.Free;
  end;
end;

procedure TForm1.MenuItem72Click(Sender: TObject);
begin
  //ffmpeg -i input.mp3 -ss 00:02:54.583 -t 300 -acodec copy output.mp3
  //ffmpeg -i input.mp3 -ss 00:02:54.583 --to 00:04:20.583 -acodec copy output.mp3
  mess.ShowInformation('Opcja przyszłościowa');
end;

procedure TForm1.MenuItem75Click(Sender: TObject);
begin
  dodaj_film(true);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  go_down;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  go_first;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  go_last;
end;

procedure TForm1.miPlayerClick(Sender: TObject);
begin
  case TMenuItem(Sender).Tag of
    1: miPlayer.Checked:=true;
    2: miRecord.Checked:=true;
    3: miPresentation.Checked:=true;
  end;
  uELED6.Active:=false;
  uELED7.Active:=false;
  uELED8.Active:=false;
  case TMenuItem(Sender).Tag of
    1: uELED6.Active:=true;
    2: uELED7.Active:=true;
    3: uELED8.Active:=true;
  end;
  if miPresentation.Checked then zmiana(tryb) else zmiana;
end;

procedure TForm1.mplayerBeforePlay(ASender: TObject; AFilename: string);
var
  ipom,vol,vosd,vaudio,vresample: integer;
  osd,audio,samplerate,audioeq,lang: string;
begin
  SetCursorOnPresentation(uELED8.Active and mplayer.Running);
  {AUDIOEQ}
  if vv_audioeq='' then audioeq:='' else audioeq:='--af=superequalizer='+vv_audioeq;
  {Screenshot}
  mplayer.ScreenshotDirectory:=_DEF_SCREENSHOT_SAVE_DIR;
  case _DEF_SCREENSHOT_FORMAT of
    0: mplayer.ScreenshotFormat:=ssJPG;
    1: mplayer.ScreenshotFormat:=ssPNG;
  end;
  uELED5.Active:=vv_obrazy;
  {OSD}
  if vv_osd=0 then
  begin
    if Menuitem49.Checked then vosd:=1 else
    if Menuitem50.Checked then vosd:=2 else
    if Menuitem51.Checked then vosd:=3 else
    if Menuitem52.Checked then vosd:=4 else
    vosd:=1;
  end else vosd:=vv_osd;
  case vosd of
    1: osd:='--osd-level=0 --osd-scale=0.5 --osd-border-size=2 --osd-margin-x=10 --osd-margin-y=10';
    2: osd:='--osd-level=1 --osd-scale=0.5 --osd-border-size=2 --osd-margin-x=10 --osd-margin-y=10';
    3: osd:='--osd-level=2 --osd-scale=0.5 --osd-border-size=2 --osd-margin-x=10 --osd-margin-y=10';
    4: osd:='--osd-level=3 --osd-scale=0.5 --osd-border-size=2 --osd-margin-x=10 --osd-margin-y=10';
    else osd:='--osd-level=0 --osd-scale=0.5 --osd-border-size=2 --osd-margin-x=10 --osd-margin-y=10';
  end;
  {AUDIO}
  if vv_audio=0 then
  begin
    if Menuitem54.Checked then vaudio:=1 else if Menuitem55.Checked then vaudio:=2 else if Menuitem56.Checked then vaudio:=3 else vaudio:=0;
  end else vaudio:=vv_audio;
  case vaudio of
    1: audio:='--mute=yes';
    2: audio:='--mute=no --audio-channels=mono';
    3: audio:='--mute=no --audio-channels=stereo';
    else audio:='';
  end;
  {LANG}
  if vv_lang='' then lang:='' else
  begin
    try
      ipom:=StrToInt(vv_lang);
      lang:='--no-sub-visibility --aid='+vv_lang;
    except
      lang:='--no-sub-visibility --alang='+vv_lang;
    end;
  end;
  {RESAMPLE}
  if vv_resample=0 then
  begin
    if Menuitem58.Checked then vresample:=1 else
    if Menuitem59.Checked then vresample:=2 else
    if Menuitem60.Checked then vresample:=3 else
    if Menuitem61.Checked then vresample:=4 else
    vresample:=0;
  end else vresample:=vv_resample;
  case vresample of
    1: samplerate:='--audio-samplerate=11025';
    2: samplerate:='--audio-samplerate=22050';
    3: samplerate:='--audio-samplerate=44100';
    4: samplerate:='--audio-samplerate=48000';
    else samplerate:='';
  end;
  {RESZTA}
  if vv_wzmocnienie then
  begin
    mplayer.BostVolume:=vv_wzmocnienie;
    if vv_glosnosc=0 then
    begin
      indeks_def_volume:=0;
      vol:=round(uEKnob1.Position);
    end else begin
      indeks_def_volume:=100-vv_glosnosc;
      vol:=round(uEKnob1.Position)-indeks_def_volume;
    end;
  end else begin
    indeks_def_volume:=0;
    mplayer.BostVolume:=Menuitem39.Checked;
    vol:=round(uEKnob1.Position);
  end;
  if const_mplayer_param='' then
    mplayer.StartParam:=audioeq+' '+osd+' '+audio+' '+lang+' '+samplerate+' -volume '+IntToStr(vol)
  else
    mplayer.StartParam:=audioeq+' '+osd+' '+audio+' '+lang+' '+samplerate+' -volume '+IntToStr(vol)+' '+const_mplayer_param;
  if _FULL_SCREEN then
  begin
    mplayer.ProcessPriority:=mpIdle;
  end else mplayer.ProcessPriority:=mpNormal;
end;

procedure TForm1.mplayerBeforeStop(Sender: TObject);
var
  pom: integer;
  l: integer;
begin
  if miPlayer.Checked then
  begin
    l:=TimeToInteger(mplayer.GetPositionOnlyRead/SecsPerDay);
    if l>0 then
    begin
      if _DEF_FULLSCREEN_MEMORY then
      begin
        filmy.Edit;
        filmyposition.AsInteger:=l;
        filmy.Post;
      end else begin
        pom:=filmyid.AsInteger;
        film.ParamByName('id').AsInteger:=indeks_play;
        film.Open;
        film.Edit;
        film.FieldByName('position').AsInteger:=l;
        film.Post;
        film.Close;
        filmy.Refresh;
        filmy.Locate('id',pom,[]);
      end;
    end;
  end;
  _MPLAYER_LOCALTIME:=false;
  timer_obrazy.Enabled:=false;
  SetCursorOnPresentation(false);
  if auto_memory[1]=indeks_play then
  begin
    mem_lamp[1].rozdzial:=indeks_rozd;
    mem_lamp[1].indeks:=indeks_play;
    mem_lamp[1].indeks_czasu:=indeks_czas;
    mem_lamp[1].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[1].active:=true;
    Memory_1.ImageIndex:=28;
  end else
  if auto_memory[2]=indeks_play then
  begin
    mem_lamp[2].rozdzial:=indeks_rozd;
    mem_lamp[2].indeks:=indeks_play;
    mem_lamp[2].indeks_czasu:=indeks_czas;
    mem_lamp[2].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[2].active:=true;
    Memory_2.ImageIndex:=30;
  end else
  if auto_memory[3]=indeks_play then
  begin
    mem_lamp[3].rozdzial:=indeks_rozd;
    mem_lamp[3].indeks:=indeks_play;
    mem_lamp[3].indeks_czasu:=indeks_czas;
    mem_lamp[3].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[3].active:=true;
    Memory_3.ImageIndex:=32;
  end else
  if auto_memory[4]=indeks_play then
  begin
    mem_lamp[4].rozdzial:=indeks_rozd;
    mem_lamp[4].indeks:=indeks_play;
    mem_lamp[4].indeks_czasu:=indeks_czas;
    mem_lamp[4].time:=mplayer.GetPositionOnlyRead;
    mem_lamp[4].active:=true;
    Memory_4.ImageIndex:=34;
  end;
end;

procedure TForm1.mplayerGrabImage(ASender: TObject; AFilename: String);
var
  res: TResourceStream;
begin
  try
    cenzura:=TMemoryStream.Create;
    res:=TResourceStream.Create(hInstance,'SHUTTER',RT_RCDATA);
    cenzura.LoadFromStream(res);
  finally
    res.Free;
  end;
  UOSPlayer.Volume:=1;
  UOSPlayer.Start(cenzura);
end;

procedure TForm1.mplayerPause(Sender: TObject);
begin
  if uELED9.Active then musicplay;
  szumpause;
  Play.ImageIndex:=0;
  if trans_serwer then SendRamkaPP;
  //if vv_audio1<>'' then podklad_play(vv_audio1);
end;

procedure TForm1.mplayerPlay(Sender: TObject);
var
  s: string;
begin
  DBGrid3.Visible:=false;
  Play.ImageIndex:=1;
  DBGrid1.Refresh;
  DBGrid2.Refresh;
  przyciski(true);
  if mplayer.Playing then Play.ImageIndex:=1 else Play.ImageIndex:=0;
  test_play;
  if trans_serwer then
  begin
    przygotuj_do_transmisji;
    s:=RunCommandTransmission('{READ_ALL}');
    if s='' then exit;
    tcp.SendString(s);
  end;
  if uELED9.Active then musicpause;
  szumplay;
  if miPlayer.Checked then if _DEF_FULLSCREEN_MEMORY then DBGrid3.Visible:=_DEF_FULLSCREEN_MEMORY and (not mplayer.Running);
  cctimer_opt:=0;
end;

procedure TForm1.mplayerPlaying(ASender: TObject; APosition, ADuration: single);
var
  a,b,n: integer;
  aa,bb: TTime;
  bPos,bMax: boolean;
begin
  //writeln(FormatFloat('0.0000',APosition),'/',FormatFloat('0.0000',ADuration));
  if vv_obrazy then mplayer.Pause;
  {kod dotyczy kontrolki "pp"}
  if ADuration=0 then exit;
  aa:=ADuration/SecsPerDay;
  bb:=APosition/SecsPerDay;
  a:=TimeToInteger(aa);
  b:=TimeToInteger(bb);
  pp.Min:=0;
  pp.Max:=a;
  pp.Position:=b;
  bMax:=a<3600000;
  bPos:=b<3600000;
  if bPos then Label3.Caption:=FormatDateTime('nn:ss',bb) else Label3.Caption:=FormatDateTime('h:nn:ss',bb);
  if bMax then Label4.Caption:=FormatDateTime('nn:ss',aa) else Label4.Caption:=FormatDateTime('h:nn:ss',aa);
  if test_force or ((czas_nastepny>-1) and (czas_nastepny<b)) then test;
  {kod dotyczy kontrolki "oo"}
  if czas_aktualny>-1 then
  begin
    if czas_nastepny=-1 then n:=TimeToInteger(ADuration/SecsPerDay) else n:=czas_nastepny;
    if n-czas_aktualny<=0 then
    begin
      if oo.Position>0 then reset_oo;
      exit;
    end;
    bPos:=czas_aktualny<3600000;
    bMax:=n<3600000;
    oo.Min:=0; //czas_aktualny;
    oo.Max:=n-czas_aktualny;
    oo.Position:=b-czas_aktualny;
    if bPos then Label5.Caption:=FormatDateTime('nn:ss',IntegerToTime(czas_aktualny)) else Label5.Caption:=FormatDateTime('h:nn:ss',IntegerToTime(czas_aktualny));
    if bMax then Label6.Caption:=FormatDateTime('nn:ss',IntegerToTime(n)) else Label6.Caption:=FormatDateTime('h:nn:ss',IntegerToTime(n));
  end;
end;

procedure TForm1.mplayerReplay(Sender: TObject);
begin
  Play.ImageIndex:=1;
  if trans_serwer then SendRamkaPP;
  test_force:=true;
  //podklad_pause(vv_audio1);
  if uELED9.Active then musicpause;
  szumplay;
end;

procedure TForm1.mplayerSetPosition(Sender: TObject);
begin
  test_force:=true;
  if trans_serwer then SendRamkaPP;
  mplayerPlaying(self,mplayer.Position,mplayer.Duration);
  //writeln(TimeToInteger(mplayer.Position/SecsPerDay),'/',TimeToInteger(mplayer.Duration/SecsPerDay));
end;

procedure TForm1.Panel3Resize(Sender: TObject);
begin
  resize_update_grid;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  UOSEngine.LibDirectory:=MyDir('uos');
  UOSEngine.LoadLibrary;
  mixer.Init;
  pilot:=dm.pilot_wczytaj;
  auto_memory[1]:=0;
  auto_memory[2]:=0;
  auto_memory[3]:=0;
  auto_memory[4]:=0;
  mem_lamp[1].active:=false;
  mem_lamp[2].active:=false;
  mem_lamp[3].active:=false;
  mem_lamp[4].active:=false;
  uELED6.Active:=miPlayer.Checked;
  uELED7.Active:=miRecord.Checked;
  uELED8.Active:=miPresentation.Checked;
  lista_wybor:=TStringList.Create;
  klucze_wybor:=TStringList.Create;
  trans_opis:=TStringList.Create;
  trans_film_czasy:=TStringList.Create;
  trans_indeksy:=TStringList.Create;
  PropStorage.FileName:=MyConfDir('ustawienia.xml');
  PropStorage.Active:=true;
  db_open;
  schemasync.init;
  przyciski(mplayer.Playing);
  _DEF_MULTIMEDIA_SAVE_DIR:=dm.GetConfig('default-directory-save-files','');
  _DEF_SCREENSHOT_SAVE_DIR:=dm.GetConfig('default-directory-save-files-ss','');
  _DEF_SCREENSHOT_FORMAT:=dm.GetConfig('default-screenshot-format',0);
  _DEF_COOKIES_FILE_YT:=dm.GetConfig('default-cookies-file-yt','');
  Menuitem15.Visible:=_DEV_ON;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if tcp.Active then tcp.Disconnect;
  ppp.Clear;
  UOSEngine.UnLoadLibrary;
  lista_wybor.Free;
  klucze_wybor.Free;
  trans_opis.Free;
  trans_film_czasy.Free;
  trans_indeksy.Free;
  if _FORCE_SHUTDOWNMODE then cShutdown.execute;
end;

procedure TForm1.ppMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  max,czas: single;
  a: integer;
  aa: TTime;
  bPos: boolean;
begin
  if vv_obrazy then exit;
  if mplayer.Running then
  begin
    pstatus_ignore:=true;
    max:=mplayer.Duration;
    czas:=round(max*X/pp.Width);
    mplayer.Position:=czas;
    pp.Position:=MiliSecToInteger(round(czas*1000));
    aa:=czas/SecsPerDay;
    a:=TimeToInteger(aa);
    bPos:=a<3600000;
    if bPos then Label3.Caption:=FormatDateTime('nn:ss',aa) else Label3.Caption:=FormatDateTime('h:nn:ss',aa);
    //test_force:=true;
  end;
end;

procedure TForm1.ppMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
  );
var
  max,czas: single;
  a: integer;
  aa: TTime;
  bPos: boolean;
begin
  if vv_obrazy then exit;
  if mplayer.Running then
  begin
    max:=mplayer.Duration;
    czas:=round(max*X/pp.Width);
    aa:=czas/SecsPerDay;
    a:=TimeToInteger(aa);
    bPos:=a<3600000;
    if bPos then podpowiedz.Caption:=FormatDateTime('nn:ss',aa) else podpowiedz.Caption:=FormatDateTime('h:nn:ss',aa);
    podpowiedz.Left:=X+pp.Left-round(podpowiedz.Width/2);
    podpowiedz.Visible:=true;
    pp_mouse.Enabled:=false;
    pp_mouse.Enabled:=true;
  end;
end;

procedure TForm1.pppCreateElement(Sender: TObject; var AWskaznik: Pointer);
var
  p: PYoutubeElement;
begin
  new(p);
  AWskaznik:=p;
end;

procedure TForm1.pppDestroyElement(Sender: TObject; var AWskaznik: Pointer);
var
  p: PYoutubeElement;
begin
  p:=AWskaznik;
  dispose(p);
  AWskaznik:=nil;
end;

procedure TForm1.pppReadElement(Sender: TObject; var AWskaznik: Pointer);
var
  p: PYoutubeElement;
begin
  p:=AWskaznik;
  YoutubeElement:=p^;
end;

procedure TForm1.pppWriteElement(Sender: TObject; var AWskaznik: Pointer);
var
  p: PYoutubeElement;
begin
  p:=AWskaznik;
  p^:=YoutubeElement;
end;

procedure TForm1.pp_mouseStartTimer(Sender: TObject);
begin
  podpowiedz.Visible:=true;
end;

procedure TForm1.pp_mouseTimer(Sender: TObject);
begin
  pp_mouse.Enabled:=false;
  podpowiedz.Visible:=false;
end;

procedure TForm1.PresentationClick(aButton: integer; var aTestDblClick: boolean);
var
  a: ^TArchitekt;
  b: ^TArchitektPrzycisk;
begin
  b:=nil;

  if miPlayer.Checked then
  begin
    {tryb zmiany rozdziałów}
    if cRozdzialy.Visible then
    begin
      case aButton of
          1: menu_rozdzialy(false);
          2: db_roz.Prior;
          3: db_roz.Next;
        4,5: menu_rozdzialy(false);
      end;
    end else
    {specjalny tryb odtwarzania filmów}
    if fmenu.IsManual then
    begin
      case aButton of
          1: fmenu.Click;
          2: fmenu.Prior;
          3: fmenu.Next;
        4,5: fmenu.Cancel;
      end;
    end else
    if mplayer.Running then
    begin
      case aButton of
          //1: if mplayer.Playing then mplayer.Pause else mplayer.Replay;
          1: aTestDblClick:=true;
          2: if _MPLAYER_LOCALTIME then scisz10 else mplayer.Position:=mplayer.Position-10;
          3: if _MPLAYER_LOCALTIME then zglosnij10 else mplayer.Position:=mplayer.Position+10;
        4,5: mplayer.Stop;
      end;
    end else begin
      case aButton of
          1: if fmenu.Active then fmenu.Click else if filmyposition.IsNull or (filmyposition.AsInteger=0) or (not _DEF_FULLSCREEN_MEMORY) then DBGrid1DblClick(self) else fmenu.Execute(0);
          2: filmy.Prior;
          3: filmy.Next;
        4,5: begin
               if _DEF_FULLSCREEN_MEMORY then //Uwaga: Sprawdzam historycznie przed zmianą!
               begin
                 if fmenu.Active then fmenu.Click else fmenu.Execute(1,fmManual);
               end else begin
                 _DEF_FULLSCREEN_MEMORY:=true;
                 UpdateFilmToRoz(true);
                 go_fullscreen;
               end;
             end;
      end;
    end;
    exit;
  end else

  if miRecord.Checked then
  begin
    {specjalny tryb przygotowywania sesji programu}
    case aButton of
        1: begin MenuItem10.Click; go_beep; end;
        2: mplayer.Position:=mplayer.Position-4;
        3: mplayer.Position:=mplayer.Position+4;
      4,5: zrob_zdjecie;
    end;
    exit;
  end;
  if (tryb=1) and vv_obrazy then a:=@pilot.t3 else
  if (tryb=2) and vv_obrazy then a:=@pilot.t4 else
  if tryb=1 then a:=@pilot.t1 else a:=@pilot.t2;
  case aButton of
    1: b:=@a^.p1;
    2: b:=@a^.p2;
    3: b:=@a^.p3;
    4: b:=@a^.p4;
    5: if a^.suma45 then b:=@a^.p4 else b:=@a^.p5;
  end;
  case b^.funkcja_wewnetrzna of
     1: zmiana(1);
     2: zmiana(2);
     3: if tryb=1 then zmiana(2) else zmiana(1);
     4: begin zmiana(1); if mplayer.Paused then mplayer.Replay; end;
     5: begin zmiana(2); if mplayer.Paused then mplayer.Replay; end;
     6: begin if mplayer.Playing then mplayer.Pause; zmiana(1); end;
     7: begin if mplayer.Playing then mplayer.Pause; zmiana(2); end;
     8: if mplayer.Paused then mplayer.Replay;
     9: if mplayer.Playing then mplayer.Pause;
    10: if mplayer.Running then if mplayer.Playing then mplayer.Pause else mplayer.Replay;
    11: if mplayer.Running then obraz_next;
    12: if mplayer.Running then obraz_prior;
    13: if mplayer.Running then if vv_obrazy then obraz_next else if mplayer.Paused then mplayer.Replay;
    14: if mplayer.Running then if vv_obrazy then obraz_prior else if mplayer.Paused then mplayer.Replay;
    15: if mplayer.Running then if vv_obrazy then obraz_next else if mplayer.Playing then mplayer.Pause;
    16: if mplayer.Running then if vv_obrazy then obraz_prior else if mplayer.Playing then mplayer.Pause;
    17: if mplayer.Running then if vv_obrazy then obraz_next else if mplayer.Playing then mplayer.Pause else mplayer.Replay;
    18: if mplayer.Running then if vv_obrazy then obraz_prior else if mplayer.Playing then mplayer.Pause else mplayer.Replay;
    19: if mplayer.Running then mplayer.Stop;
  end;
  if b^.kod_wewnetrzny>0 then Presentation.SendKey(b^.kod_wewnetrzny);
  aTestDblClick:=b^.operacja_zewnetrzna;
end;

procedure TForm1.PresentationClickLong(aButton: integer; aDblClick: boolean);
var
  a: ^TArchitekt;
begin
  (* kod do obsługi mplayera *)
  if miPlayer.Checked and mplayer.Running then
  begin
    case aButton of
      1: if aDblClick then
         begin
           _MPLAYER_LOCALTIME:=not _MPLAYER_LOCALTIME;
           if _MPLAYER_LOCALTIME then mplayer.SetOSDLevel(3) else mplayer.SetOSDLevel(0);
         end else if mplayer.Playing then mplayer.Pause else mplayer.Replay;
    end;
    exit;
  end;
  (* starszy kod *)
  if (tryb=1) and vv_obrazy then a:=@pilot.t3 else
  if (tryb=2) and vv_obrazy then a:=@pilot.t4 else
  if tryb=1 then a:=@pilot.t1 else a:=@pilot.t2;
  if aDblClick then
  begin
    case aButton of
      1: if a^.p1.dwuklik>0 then Presentation.SendKey(a^.p1.dwuklik);
      2: if a^.p2.dwuklik>0 then Presentation.SendKey(a^.p2.dwuklik);
      3: begin
           if a^.p3.dwuklik>0 then Presentation.SendKey(a^.p3.dwuklik);
           if tryb=2 then zrob_zdjecie_do_paint;
         end;
      4: if a^.p4.dwuklik>0 then Presentation.SendKey(a^.p4.dwuklik);
      5: if a^.p5.dwuklik>0 then Presentation.SendKey(a^.p5.dwuklik);
    end;
  end else begin
    case aButton of
      1: if a^.p1.klik>0 then Presentation.SendKey(a^.p1.klik);
      2: if a^.p2.klik>0 then Presentation.SendKey(a^.p2.klik);
      3: if a^.p3.klik>0 then Presentation.SendKey(a^.p3.klik);
      4: if a^.p4.klik>0 then Presentation.SendKey(a^.p4.klik);
      5: if a^.p5.klik>0 then Presentation.SendKey(a^.p5.klik);
    end;
  end;
end;

procedure TForm1.PropStorageRestoringProperties(Sender: TObject);
begin
  tab_lamp_odczyt;
end;

procedure TForm1.PropStorageSavingProperties(Sender: TObject);
begin
  tab_lamp_zapisz;
end;

procedure TForm1.restart_csvTimer(Sender: TObject);
var
  b: boolean;
  i: integer;
begin
  restart_csv.Enabled:=false;
  if lista_wybor.Count>0 then
  begin
    FLista_wyboru:=TFLista_wyboru.Create(self);
    try
      FLista_wyboru.CheckListBox1.Items.Assign(lista_wybor);
      FLista_wyboru.klucze_wyboru.Assign(klucze_wybor);
      FLista_wyboru.ShowModal;
      if FLista_wyboru.out_ok then
      begin
        lista_wybor.Clear;
        klucze_wybor.Clear;
        for i:=0 to FLista_wyboru.CheckListBox1.Items.Count-1 do
        begin
          if FLista_wyboru.CheckListBox1.Checked[i] then
          begin
            lista_wybor.Add(FLista_wyboru.CheckListBox1.Items[i]);
            klucze_wybor.Add(FLista_wyboru.klucze_wyboru[i]);
          end;
          b:=klucze_wybor.Count>0;
        end;
      end else b:=false;
    finally
      FLista_wyboru.Free;
    end;
    if b then
    begin
      csv.Tag:=csv.Tag+1;
      csv.Execute;
    end;
  end;
end;

procedure TForm1.RewindClick(Sender: TObject);
begin
  mplayer.Position:=0;
  pp.Position:=0;
  Label3.Caption:=FormatDateTime('nn:ss',0);
  test_force:=true;
end;

procedure TForm1.BExitClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.rfilmyTimer(Sender: TObject);
var
  id: integer;
begin
  rfilmy.Enabled:=false;
  id:=filmyid.AsInteger;
  try
    filmy.DisableControls;
    filmy.Refresh;
    filmy.Locate('id',id,[]);
  finally
    filmy.EnableControls;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  pp1.Position:=10000;
  Timer1.Enabled:=true;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  pp1.Position:=StrToInt(SoundLevel.Text);
  Timer1.Enabled:=true;
end;

procedure TForm1.SpeedButton2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbRight then SoundLevel.Caption:=IntToStr(pp1.Position);
end;

procedure TForm1.StopClick(Sender: TObject);
begin
  stop_force:=true;
  if mplayer.Playing or mplayer.Paused then mplayer.Stop;
  wygeneruj_plik2;
end;

procedure TForm1.tcpCanSend(aSocket: TLSocket);
//var
//  Sent: Integer; // number of bytes sent each try
//  TempBuffer: string = ''; // our local temp. buffer for the filestream, can be done smarter tho
begin
{  repeat
    if Length(TempBuffer) = 0 then
      TempBuffer := GetNewChunk; // get next chunk if we sent all from the last one
    Sent := FConnection.SendMessage(TempBuffer, aSocket); // remember, don't use the aSocket directly!
    Delete(TempBuffer, 1, Sent); // delete all we sent from our temporary buffer!
  until (Sent = 0) or (AllIsSent); // try to send until you can't send anymore}
end;

procedure TForm1.tcpCryptString(var aText: string);
begin
  aText:=EncryptString(aText,dm.GetHashCode(2));
end;

procedure TForm1.tcpDecryptString(var aText: string);
begin
  aText:=DecryptString(aText,dm.GetHashCode(2));
end;

procedure TForm1.tcpReceiveString(aMsg: string; aSocket: TLSocket);
var
  s: string;
begin
  if aMsg='{READ_ALL}' then s:=RunCommandTransmission('{READ_ALL}');
  if s='' then exit;
  tcp.SendString(s,aSocket);
end;

procedure TForm1.tcpStatus(aActive, aCrypt: boolean);
begin
  uELED3.Active:=aActive;
end;

procedure TForm1.test_czasBeforeOpen(DataSet: TDataSet);
begin
  test_czas.ParamByName('id').AsInteger:=indeks_play;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  bstop: boolean;
  vv: integer;
begin
  bstop:=false;
  vv:=round(UOSpodklad.Volume*10000);
  if vv>10000 then vv:=10000;
  if vv<pp1.Position then
  begin
    vv:=vv+5;
    if vv>=pp1.Position then
    begin
      vv:=pp1.Position;
      bstop:=true;
    end;
    UOSpodklad.Volume:=vv/10000;
    if bstop then Timer1.Enabled:=false;
  end else begin
    vv:=vv-5;
    if vv<=pp1.Position then
    begin
      vv:=pp1.Position;
      bstop:=true;
    end;
    UOSpodklad.Volume:=vv/10000;
    if bstop then Timer1.Enabled:=false;
  end;
end;

procedure TForm1.timer_info_tasmyTimer(Sender: TObject);
begin
  timer_info_tasmy.Enabled:=false;
  update_dioda_tasma;
end;

procedure TForm1.timer_obrazyTimer(Sender: TObject);
begin
  if mplayer.Duration>0 then
  begin
    timer_obrazy.Enabled:=false;
    mplayerPlaying(self,mplayer.Position,mplayer.Duration);
  end;
end;

procedure TForm1.tzegarTimer(Sender: TObject);
var
  t: TDateTime;
  h,m,s,ms: word;
  f: textfile;
begin
  t:=now;
  DecodeTime(t,h,m,s,ms);
  if ((s=0) and ((_C_DATETIME[1]<>h) or (_C_DATETIME[2]<>m) or (_C_DATETIME[3]<>s))) or (_C_DATETIME[1]=-1) then
  begin
    _C_DATETIME[1]:=h;
    _C_DATETIME[2]:=m;
    _C_DATETIME[3]:=s;
    assignfile(f,'/home/tao/czas.txt');
    rewrite(f);
    writeln(f,FormatDateTime('hh:nn',t));
    closefile(f);
  end;
end;

procedure TForm1.uEKnob1Change(Sender: TObject);
begin
  mplayer.Volume:=round(uEKnob1.Position)-indeks_def_volume;
end;

procedure TForm1.uELED8Change(Sender: TObject);
begin
  SetCursorOnPresentation(uELED8.Active and mplayer.Running);
end;

procedure TForm1.uELED9Click(Sender: TObject);
begin
  uELED9.Active:=not uELED9.Active;
  if not uELED9.Active then musicpause else
  if not mplayer.Playing then musicplay;
end;

procedure TForm1.UOSpodkladBeforeStart(Sender: TObject);
begin
  UOSPodklad.Volume:=pp1.Position/10000;
end;

procedure TForm1._AUDIOMENU(Sender: TObject);
begin
  case TMenuitem(Sender).Tag of
    0: Menuitem54.Checked:=true;
    1: Menuitem55.Checked:=true;
    2: Menuitem56.Checked:=true;
  end;
  if mplayer.Running then
  begin
    case TMenuitem(Sender).Tag of
      0: mplayer.SetChannels(0);
      1: mplayer.SetChannels(1);
      2: mplayer.SetChannels(2);
    end;
  end;
end;

procedure TForm1._OPEN_CLOSE(DataSet: TDataSet);
begin
  czasy.Active:=DataSet.Active;
end;

procedure TForm1._OPEN_CLOSE_TEST(DataSet: TDataSet);
begin
  test_czas2.Active:=DataSet.Active;
end;

procedure TForm1._OSDMENU(Sender: TObject);
begin
  case TMenuitem(Sender).Tag of
    0: Menuitem49.Checked:=true;
    1: Menuitem50.Checked:=true;
    2: Menuitem51.Checked:=true;
    3: Menuitem52.Checked:=true;
  end;
  if mplayer.Running then
  begin
    mplayer.SetOSDLevel(TMenuitem(Sender).Tag);
  end;
end;

procedure TForm1._PLAY_MEMORY(Sender: TObject);
begin
  play_memory(TSpeedButton(Sender).Tag);
end;

procedure TForm1._PLAY_REC_PRESENT(Sender: TObject);
begin
  case TuELED(Sender).Tag of
    1: miPlayer.Checked:=true;
    2: miRecord.Checked:=true;
    3: miPresentation.Checked:=true;
  end;
  uELED6.Active:=false;
  uELED7.Active:=false;
  uELED8.Active:=false;
  case TuELED(Sender).Tag of
    1: uELED6.Active:=true;
    2: uELED7.Active:=true;
    3: uELED8.Active:=true;
  end;
  if miPresentation.Checked then
  begin
    _C_DATETIME[1]:=-1;
    _C_DATETIME[2]:=-1;
    _C_DATETIME[3]:=-1;
    zmiana(tryb);
  end else zmiana;
  tzegar.Enabled:=miPresentation.Checked;
  if not miPresentation.Checked then szumpause;
end;

procedure TForm1._ROZ_OPEN_CLOSE(DataSet: TDataSet);
begin
  filmy.Active:=DataSet.Active;
end;

procedure TForm1._SAMPLERATEMENU(Sender: TObject);
begin
  case TMenuitem(Sender).Tag of
    0: Menuitem57.Checked:=true;
    1: Menuitem58.Checked:=true;
    2: Menuitem59.Checked:=true;
    3: Menuitem60.Checked:=true;
    4: Menuitem61.Checked:=true;
  end;
  if mplayer.Running then
  begin
    case TMenuitem(Sender).Tag of
      0: mplayer.SetAudioSamplerate(0);
      1: mplayer.SetAudioSamplerate(11525);
      2: mplayer.SetAudioSamplerate(22050);
      3: mplayer.SetAudioSamplerate(44100);
      4: mplayer.SetAudioSamplerate(48000);
    end;
  end;
end;

procedure TForm1.ComputerOff;
begin
  (* Opuść tryb pełnoekranowy *)
  _DEF_FULLSCREEN_MEMORY:=false;
  UpdateFilmToRoz;
  go_fullscreen(true);
  application.ProcessMessages;
  (* wyślij komendę i zamknij program *)
  _FORCE_SHUTDOWNMODE:=true;
  close;
end;

procedure TForm1.musicplay;
begin
  if not miPresentation.Checked then exit;
  if not UOSPodklad.Busy then
  begin
    musicload;
    exit;
  end;
  if UOSPodklad.Pausing then UOSPodklad.Replay;
end;

procedure TForm1.musicpause;
begin
  if not UOSPodklad.Busy then exit;
  if UOSPodklad.Pausing then exit;
  UOSPodklad.Pause;
end;

procedure TForm1.szumload(aNo: integer);
var
  res: TResourceStream;
begin
  if miPresentation.Checked then
  begin
    try
      szum:=TMemoryStream.Create;
      res:=TResourceStream.Create(hInstance,'SZUM',RT_RCDATA);
      szum.LoadFromStream(res);
    finally
      res.Free;
    end;
    UOSszum.Volume:=0.2;
    UOSszum.Start(szum);
  end;
end;

procedure TForm1.szumplay;
begin
  if not miPresentation.Checked then exit;
  if not vv_szum then exit;
  if not UOSszum.Busy then
  begin
    szumload;
    exit;
  end;
  if UOSszum.Pausing then UOSszum.Replay;
end;

procedure TForm1.szumpause;
begin
  if not UOSszum.Busy then exit;
  if UOSszum.Pausing then exit;
  UOSszum.Pause;
end;

procedure TForm1.tab_lamp_zapisz;
var
  i: integer;
begin
  for i:=1 to 4 do
  begin
    PropStorage.WriteBoolean('lamp'+IntToStr(i)+'_active',mem_lamp[i].active);
    PropStorage.WriteInteger('lamp'+IntToStr(i)+'_rozdzial',mem_lamp[i].rozdzial);
    PropStorage.WriteInteger('lamp'+IntToStr(i)+'_indeks',mem_lamp[i].indeks);
    PropStorage.WriteInteger('lamp'+IntToStr(i)+'_czas',mem_lamp[i].indeks_czasu);
    PropStorage.WriteString('lamp'+IntToStr(i)+'_time',FloatToStr(mem_lamp[i].time));
  end;
end;

procedure TForm1.tab_lamp_odczyt(aOnlyRefreshLamp: boolean);
var
  i: integer;
begin
  if not aOnlyRefreshLamp then
  begin
    for i:=1 to 4 do
    begin
      mem_lamp[i].active:=PropStorage.ReadBoolean('lamp'+IntToStr(i)+'_active',false);
      mem_lamp[i].rozdzial:=PropStorage.ReadInteger('lamp'+IntToStr(i)+'_rozdzial',0);
      mem_lamp[i].indeks:=PropStorage.ReadInteger('lamp'+IntToStr(i)+'_indeks',0);
      mem_lamp[i].indeks_czasu:=PropStorage.ReadInteger('lamp'+IntToStr(i)+'_czas',0);
      mem_lamp[i].time:=StrToFloat(PropStorage.ReadString('lamp'+IntToStr(i)+'_time','0'));
    end;
  end;
  if mem_lamp[1].active then Memory_1.ImageIndex:=28 else Memory_1.ImageIndex:=27;
  if mem_lamp[2].active then Memory_2.ImageIndex:=30 else Memory_2.ImageIndex:=29;
  if mem_lamp[3].active then Memory_3.ImageIndex:=32 else Memory_3.ImageIndex:=31;
  if mem_lamp[4].active then Memory_4.ImageIndex:=34 else Memory_4.ImageIndex:=33;
end;

procedure TForm1.dodaj_pozycje_na_koniec_listy(aSkopiujTemat: boolean);
var
  s: string;
  a,b: integer;
begin
  if aSkopiujTemat then
  begin
    czasy_notnull.Open;
    s:=czasynazwa1.AsString;
    czasy_notnull.Close;
    if s='' then s:='..';
  end else s:='';
  b:=MiliSecToInteger(Round(mplayer.GetPositionOnlyRead*1000));
  if vv_obrazy then
  begin
    dec(b,10);
    if b<0 then b:=0;
  end;
  czasy_max.Open;
  if czasy_max.IsEmpty then a:=0 else
  begin
    if czasy_max.FieldByName('czas_do').IsNull then
      a:=czasy_max.FieldByName('czas_od').AsInteger
    else
    a:=czasy_max.FieldByName('czas_do').AsInteger;
  end;
  czasy_max.Close;
  if b<a then dodaj_czas(filmy.FieldByName('id').AsInteger,a,s)
         else dodaj_czas(filmy.FieldByName('id').AsInteger,b,s);
end;

procedure TForm1.DeleteFilm(aDB: boolean; aFile: boolean; aBezPytan: boolean);
var
  b: boolean;
  id,i: integer;
  link,plik: string;
  vobrazy: boolean;
begin
  if filmy.RecordCount=0 then exit;

  id:=filmy.FieldByName('id').AsInteger;
  if filmylink.IsNull then link:='' else link:=filmylink.AsString;
  plik:=filmy.FieldByName('plik').AsString;
  vobrazy:=GetBit(filmystatus.AsInteger,0);

  if aDB then
  begin
    b:=Menuitem45.Checked or aBezPytan;
    if not b then b:=mess.ShowConfirmationYesNo('Czy usunąć pozycję z listy filmów?');
    if b then
    begin
      for i:=1 to 4 do if mem_lamp[i].active and (mem_lamp[i].indeks=id) then
      begin
        mem_lamp[i].active:=false;
        case i of
          1: Memory_1.ImageIndex:=27;
          2: Memory_2.ImageIndex:=29;
          3: Memory_3.ImageIndex:=31;
          4: Memory_4.ImageIndex:=33;
        end;
      end;
      if id=indeks_play then mplayer.Stop;
      trans.StartTransaction;
      filmy.Delete;
      trans.Commit;
    end;
  end;

  if aFile then
  begin
    if (vobrazy or (link<>'')) and (plik<>'') and FileExists(plik) then
    begin
      b:=aBezPytan;
      if not b then b:=mess.ShowConfirmationYesNo('Znaleziono plik na dysku do którego odnosiła się ta pozycja, czy chcesz także usunąć plik z dysku?');
      if b then DeleteFile(plik);
    end;
  end;
end;

procedure TForm1.sciagnij_film(aDownloadAll: boolean);
var
  t: TBookmark;
  dir: string;
  cc: string;
begin
  if filmy.IsEmpty then exit;
  dir:=dm.GetConfig('default-directory-save-files','');

  if aDownloadAll then
  begin
    filmy.DisableControls;
    t:=filmy.GetBookmark;
    filmy.First;
    while not filmy.EOF do
    begin
      if filmyc_plik_exist.AsBoolean then
      begin
        filmy.Next;
        continue;
      end;
      YoutubeElement.link:=filmylink.AsString;
      YoutubeElement.film:=filmyid.AsInteger;
      YoutubeElement.dir:=dir;
      YoutubeElement.audio:=0;
      YoutubeElement.video:=0;
      ppp.Add;
      filmy.Next;
    end;
    filmy.GotoBookmark(t);
    filmy.EnableControls;
  end else begin
    if filmyc_plik_exist.AsBoolean then exit;
    YoutubeElement.link:=filmylink.AsString;
    YoutubeElement.film:=filmyid.AsInteger;
    YoutubeElement.dir:=dir;
    ppp.Add;
  end;

  if not YoutubeIsProcess then
  begin
    if FileExists(_DEF_COOKIES_FILE_YT) then cc:=_DEF_COOKIES_FILE_YT else cc:='';
    TWatekYoutube.Create(cc);
  end;
end;

procedure TForm1.scisz10;
var
  a: double;
begin
  a:=uEKnob1.Position-5;
  if a<50 then a:=50;
  uEKnob1.Position:=a;
end;

procedure TForm1.zglosnij10;
var
  a: double;
begin
  a:=uEKnob1.Position+5;
  if a>100 then a:=100;
  uEKnob1.Position:=a;
end;

procedure TForm1.menu_rozdzialy(aOn: boolean);
begin
  cRozdzialy.Visible:=aOn;
end;

procedure TForm1.dodaj_film(aNaPoczatku: boolean);
var
  vstatus: integer;
  a,b: integer;
begin
  FLista:=TFLista.Create(self);
  try
    FLista.in_tryb:=1;
    FLista.i_roz:=db_roz.FieldByName('id').AsInteger;
    FLista.in_out_obrazy:=false;
    FLista.ShowModal;
    if FLista.out_ok then
    begin
      trans.StartTransaction;
      if aNaPoczatku then
      begin
        filmy.DisableControls;
        filmy.First;
        a:=filmyid.AsInteger;
      end;
      filmy.Append;
      filmy.FieldByName('nazwa').AsString:=FLista.s_tytul;
      if FLista.s_link='' then filmy.FieldByName('link').Clear else filmy.FieldByName('link').AsString:=FLista.s_link;
      if FLista.s_file='' then filmy.FieldByName('plik').Clear else filmy.FieldByName('plik').AsString:=FLista.s_file;
      if FLista.s_audio='' then filmyfile_audio.Clear else filmyfile_audio.AsString:=FLista.s_audio;
      if FLista.i_roz=0 then filmy.FieldByName('rozdzial').Clear
      else filmy.FieldByName('rozdzial').AsInteger:=FLista.i_roz;
      vstatus:=0;
      SetBit(vstatus,0,FLista.in_out_obrazy);
      filmystatus.AsInteger:=vstatus;
      filmy.Post;
      ini.Execute;
      if aNaPoczatku then
      begin
        filmy.Last;
        b:=filmyid.AsInteger;
        filmyidnext.ParamByName('id').AsInteger:=a;
        filmyidnext.ParamByName('id2').AsInteger:=b+1;
        filmyidnext.Execute;
        filmy.Refresh;
        filmy.First;
      end;
      trans.Commit;
    end;
  finally
    FLista.Free;
    if aNaPoczatku then filmy.EnableControls;
  end;
end;

function TForm1.PragmaForeignKeys: boolean;
var
  q1: TZQuery;
  a: integer;
begin
  q1:=TZQuery.Create(self);
  q1.Connection:=db;
  try
    q1.SQL.Clear;
    q1.SQL.Add('PRAGMA foreign_keys');
    q1.Open;
    a:=q1.Fields[0].AsInteger;
    q1.Close;
  finally
    q1.Free;
  end;
  result:=a=1;
end;

procedure TForm1.PragmaForeignKeys(aOn: boolean);
var
  q1: TZQuery;
begin
  q1:=TZQuery.Create(self);
  q1.Connection:=db;
  try
    q1.SQL.Clear;
    if aOn then q1.SQL.Add('PRAGMA foreign_keys = ON')
           else q1.SQL.Add('PRAGMA foreign_keys = OFF');
    q1.ExecSQL;
  finally
    q1.Free;
  end;
end;

procedure TForm1.UpdateFilmToRoz(aRestore: boolean);
begin
  if aRestore then
  begin
    if not db_rozfilm_id.IsNull then filmy.Locate('id',db_rozfilm_id.AsInteger,[]);
  end else
  if db_rozfilm_id.IsNull or (db_rozfilm_id.AsInteger<>filmyid.AsInteger) then
  begin
    db_roz.Edit;
    db_rozfilm_id.AsInteger:=filmyid.AsInteger;
    db_roz.Post;
  end;
end;

procedure TForm1.SeekPlay(aCzas: integer);
var
  t: TTime;
  Hour, Minute, Second, MilliSecond: word;
  a: single;
begin
  t:=IntegerToTime(aCzas);
  DecodeTime(t,Hour,Minute,Second,MilliSecond);
  a:=(Hour*60*60)+(Minute*60)+Second+(MilliSecond/1000);
  mplayer.Position:=a;
end;

procedure TForm1.db_open;
var
  fo: boolean;
begin
  if sciezka_db='' then db.Database:=MyConfDir('db.sqlite') else db.Database:=sciezka_db;
  fo:=not FileExists(db.Database);
  db.Connect;
  if fo then cr.Execute;
  PragmaForeignKeys(true);
  db_roz.Open;
end;

procedure TForm1.db_close;
begin
  db_roz.Close;
  db.Disconnect;
end;

function TForm1.get_last_id: integer;
begin
  last_id.Open;
  result:=last_id.Fields[0].AsInteger;
  last_id.Close;
end;

procedure TForm1.przyciski(v_playing: boolean);
begin
  exit;
  Play.Enabled:=not v_playing;
  Stop.Enabled:=v_playing;
end;

procedure TForm1.update_dioda_tasma(aKlik: boolean);
begin
  if aKlik then uELED4.Color:=clYellow else uELED4.Color:=$006F7575;
  uELED4.Active:=precord;
end;

procedure TForm1.wygeneruj_plik2(nazwa1: string; nazwa2: string; aS1: string;
  aS2: string);
var
  f: textfile;
begin
  if aS1<>'' then zapisz_na_tasmie(aS1,aS2);
  assignfile(f,'/home/tao/nazwa1.txt');
  rewrite(f);
  writeln(f,' '+nazwa1+' ');
  closefile(f);
  assignfile(f,'/home/tao/nazwa2.txt');
  rewrite(f);
  if nazwa1='' then writeln(f,' '+nazwa1+' ') else
  if vv_transmisja then writeln(f,' >>> Transmisja na żywo <<< ') else
  writeln(f,' '+nazwa2+' ');
  closefile(f);
end;

procedure TForm1.usun_pozycje_czasu(wymog_potwierdzenia: boolean);
begin
  if wymog_potwierdzenia then if not mess.ShowConfirmationYesNo('Czy faktycznie chcesz usunąć ten wpis?') then exit;
  czasy.Delete;
  test_force:=true;
end;

procedure TForm1.komenda_up;
begin
  if DBGrid1.Focused then filmy.Prior else
  if DBGrid2.Focused then czasy.Prior;
end;

procedure TForm1.komenda_down;
begin
  if DBGrid1.Focused then filmy.Next else
  if DBGrid2.Focused then czasy.Next;
end;

procedure TForm1.go_czas2;
begin
  if (mplayer.Playing or mplayer.Paused) and (indeks_play=filmy.FieldByName('id').AsInteger) then
    if not czasyczas2.IsNull then SeekPlay(czasy.FieldByName('czas2').AsInteger);
end;

function TForm1.go_up(force_id: integer): boolean;
var
  id,id2: integer;
  s1,s2: integer;
  b: boolean;
begin
  result:=false;
  if filmy.RecordCount=0 then exit;
  if force_id=0 then filmy.DisableControls;
  try
    if force_id>0 then
    begin
      filmy.First;
      b:=filmy.Locate('id',force_id,[]);
      if not b then exit;
    end;
    id:=filmy.FieldByName('id').AsInteger;
    s1:=filmy.FieldByName('sort').AsInteger;
    filmy.Prior;
    id2:=filmy.FieldByName('id').AsInteger;
    s2:=filmy.FieldByName('sort').AsInteger;
    if id=id2 then exit;
    if force_id=0 then trans.StartTransaction;
    update_sort.ParamByName('id').AsInteger:=id;
    update_sort.ParamByName('sort').AsInteger:=s2;
    update_sort.Execute;
    update_sort.ParamByName('id').AsInteger:=id2;
    update_sort.ParamByName('sort').AsInteger:=s1;
    update_sort.Execute;
    if force_id=0 then trans.Commit;
    filmy.Refresh;
    filmy.Locate('id',id,[]);
    result:=true;
  finally
    if force_id=0 then filmy.EnableControls;
  end;
end;

function TForm1.go_first(force_id: integer): boolean;
var
  id: integer;
  b: boolean;
begin
  result:=false;
  if filmy.RecordCount=0 then exit;
  filmy.DisableControls;
  try
    if force_id>0 then
    begin
      filmy.First;
      b:=filmy.Locate('id',force_id,[]);
      if not b then exit;
    end;
    id:=filmy.FieldByName('id').AsInteger;
    trans.StartTransaction;
    repeat until not go_up(id);
    trans.Commit;
  finally
    filmy.EnableControls;
  end;
end;

function TForm1.go_down(force_id: integer): boolean;
var
  id,id2: integer;
  s1,s2: integer;
  b: boolean;
begin
  result:=false;
  if filmy.RecordCount=0 then exit;
  if force_id=0 then filmy.DisableControls;
  try
    if force_id>0 then
    begin
      filmy.First;
      b:=filmy.Locate('id',force_id,[]);
      if not b then exit;
    end;
    id:=filmy.FieldByName('id').AsInteger;
    s1:=filmy.FieldByName('sort').AsInteger;
    filmy.Next;
    id2:=filmy.FieldByName('id').AsInteger;
    s2:=filmy.FieldByName('sort').AsInteger;
    if id=id2 then exit;
    if force_id=0 then trans.StartTransaction;
    update_sort.ParamByName('id').AsInteger:=id;
    update_sort.ParamByName('sort').AsInteger:=s2;
    update_sort.Execute;
    update_sort.ParamByName('id').AsInteger:=id2;
    update_sort.ParamByName('sort').AsInteger:=s1;
    update_sort.Execute;
    if force_id=0 then trans.Commit;
    filmy.Refresh;
    filmy.Locate('id',id,[]);
    result:=true;
  finally
    if force_id=0 then filmy.EnableControls;
  end;
end;

function TForm1.go_last(force_id: integer): boolean;
var
  id: integer;
  b: boolean;
begin
  result:=false;
  if filmy.RecordCount=0 then exit;
  filmy.DisableControls;
  try
    if force_id>0 then
    begin
      filmy.First;
      b:=filmy.Locate('id',force_id,[]);
      if not b then exit;
    end;
    id:=filmy.FieldByName('id').AsInteger;
    trans.StartTransaction;
    repeat until not go_down(id);
    trans.Commit;
  finally
    filmy.EnableControls;
  end;
end;

procedure TForm1.resize_update_grid;
begin
  DBGrid1.Columns[1].Width:=Panel3.Width-14;
  DBGrid2.Columns[2].Width:=DBGrid1.Columns[1].Width-22;
  DBGrid3.Columns[1].Width:=Screen.Width;
end;

procedure TForm1.test_play;
var
  b: boolean;
begin
  b:=pstatus_ignore;
  test;
  pstatus_ignore:=b;
end;

procedure TForm1.test(APositionForce: single);
var
  vposition: single;
  a,teraz,teraz1,teraz2: integer;
  czas_od,czas_do: integer;
  nazwa,s1,s2,v_audio: string;
  stat: integer;
  pstatus,istatus: boolean;
begin
  test_force:=false;
  czas_aktualny:=-1;
  czas_nastepny:=-1;
  if not mplayer.Running then exit;
  if APositionForce>0.0000001 then vposition:=APositionForce else vposition:=mplayer.GetPositionOnlyRead;
  test_czas.Open;
  try
    if test_czas.IsEmpty then exit;
    teraz:=MiliSecToInteger(round(vposition*1000));
    teraz1:=teraz-1000;
    teraz2:=teraz+1000;
    while not test_czas.EOF do
    begin
      s1:=film_tytul;
      s2:=test_czas.FieldByName('nazwa').AsString;
      nazwa:=film_tytul+' - '+s2;
      film_tytul1:=film_tytul;
      film_tytul2:=s2;
      czas_od:=test_czas.FieldByName('czas_od').AsInteger;
      v_audio:=test_czas.FieldByName('file_audio').AsString;
      if test_czas.FieldByName('czas_do').IsNull then
      begin
        if test_czas2.IsEmpty then czas_do:=-1
        else czas_do:=test_czas2.FieldByName('czas_od').AsInteger;
      end else czas_do:=test_czas.FieldByName('czas_do').AsInteger;
      if (teraz2>czas_od) and ((czas_do=-1) or (teraz<czas_do)) then
      begin
        {CZAS AKTUALNY JEST TERAZ!}
        if (czas_od<=teraz2) and ((czas_do=-1) or (czas_do>teraz)) then
        begin
          stat:=test_czas.FieldByName('status').AsInteger;
          if pstatus_ignore then pstatus:=false else pstatus:=GetBit(stat,0);
          istatus:=GetBit(stat,1);
          czas_aktualny:=czas_od;
          czas_aktualny_nazwa:=nazwa;
          czas_aktualny_indeks:=test_czas.FieldByName('id').AsInteger;
          if czas_do>teraz then czas_nastepny:=czas_do;
          vv_audio2:=v_audio;
        end;
        if czas_nastepny>-1 then break;
      end;
      if czas_od>teraz then czas_nastepny:=czas_od;
      if czas_nastepny>-1 then break;
      test_czas.Next;
    end;
  finally
    test_czas.Close;
  end;
  pstatus_ignore:=false;
  {UAKTUALNIAMY!}
  if czas_aktualny>-1 then
  begin
    if pstatus then
    begin
      if czas_nastepny=-1 then mplayer.Stop else SeekPlay(czas_nastepny);
      exit;
    end;
    if not istatus then zapisz_na_tasmie(s1,s2);
    indeks_czas:=czas_aktualny_indeks;
    DBGrid2.Refresh;
    if not istatus then
    begin
      wygeneruj_plik2(film_tytul1,film_tytul2);
    end;
    a:=StringToItemIndex(trans_indeksy,IntToStr(indeks_czas));
    if trans_serwer and (not istatus) then tcp.SendString('{INDEX_CZASU}$'+IntToStr(a));
  end else begin
    zapisz_na_tasmie(s1);
    indeks_czas:=-1;
    DBGrid2.Refresh;
    reset_oo;
    wygeneruj_plik2(film_tytul);
    if trans_serwer then tcp.SendString('{INDEX_CZASU}$-1');
  end;
end;

end.

