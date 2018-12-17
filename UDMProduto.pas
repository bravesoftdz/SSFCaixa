unit UDMProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, ADODB, DBClient, Provider, frxClass, frxDBSet;

type
  TDMProduto = class(TDataModule)
    adtProdutos: TADOTable;
    adtProdutosCdigo: TWideStringField;
    adtProdutosTipo: TWideStringField;
    adtProdutosLinha01: TWideStringField;
    adtProdutosLinha02: TWideStringField;
    adtProdutosLinha03: TWideStringField;
    adtProdutosMarca: TWideStringField;
    adtProdutosUnidade: TWideStringField;
    adtProdutosUnidadeEntrada: TWideStringField;
    adtProdutosUnidadeAuxiliar: TWideStringField;
    adtProdutosUnidadeAuxiliar1: TWideStringField;
    adtProdutosUnidadedeCompra: TWideStringField;
    adtProdutosAtacadosomentesemaiorque: TIntegerField;
    adtProdutosPesoLquido: TFloatField;
    adtProdutosLocalizaodoProduto: TWideStringField;
    adtProdutosDiasparaReposio: TWordField;
    adtProdutosMesesdegarantia: TWordField;
    adtProdutosGrupo: TIntegerField;
    adtProdutosSubgrupo: TIntegerField;
    adtProdutosSituaodoProduto: TWideStringField;
    adtProdutosSituaoTributria: TWideStringField;
    adtProdutosCdigodoNCM: TWideStringField;
    adtProdutosLetradoNCM: TWideStringField;
    adtProdutosReal: TFloatField;
    adtProdutosVirtual: TFloatField;
    adtProdutosMnimo: TFloatField;
    adtProdutosMximo: TFloatField;
    adtProdutosMdiadeVendas: TFloatField;
    adtProdutosMdiadeFabricao: TFloatField;
    adtProdutosLoteMnimodeCompras: TFloatField;
    adtProdutosLoteMnimodeVendas: TFloatField;
    adtProdutosLoteMnimodeFabricao: TFloatField;
    adtProdutosValordeCompra: TFloatField;
    adtProdutosValordeVenda: TFloatField;
    adtProdutosMargemdeVenda: TFloatField;
    adtProdutosVendaAtacado: TFloatField;
    adtProdutosVendaVarejo: TFloatField;
    adtProdutosMargemAtacado: TFloatField;
    adtProdutosMargemVarejo: TFloatField;
    adtProdutosValordeTransferncia: TFloatField;
    adtProdutosValorPromoo: TFloatField;
    adtProdutosValidadedaPromoo: TDateTimeField;
    adtProdutosValorPromooAtacado: TFloatField;
    adtProdutosValidadedaPromooAtacado: TDateTimeField;
    adtProdutosValorPromooVarejo: TFloatField;
    adtProdutosValidadedaPromooVarejo: TDateTimeField;
    adtProdutosltimaAtualizaodoProduto: TDateTimeField;
    adtProdutosltimaAtualizaodeVenda: TDateTimeField;
    adtProdutosQuantidadeporVolume: TFloatField;
    adtProdutosNmerodoDesenho: TWideStringField;
    adtProdutosEspecificaesTcnicas: TMemoField;
    adtProdutosCdigodeBarras: TWideStringField;
    adtProdutosListadePreos: TBooleanField;
    adtProdutosComisso: TFloatField;
    adtProdutosMoedaVenda: TWideStringField;
    adtProdutosCondiodePagamento: TSmallintField;
    adtProdutosMargemdeVendaSubstituioTributria: TFloatField;
    adtProdutosValordosMateriais: TFloatField;
    adtProdutosValordaModeObra: TFloatField;
    adtProdutosCentro: TIntegerField;
    adtProdutosOutrasInformaes01: TWideStringField;
    adtProdutosOutrasInformaes02: TWideStringField;
    adtProdutosOutrasInformaes03: TWideStringField;
    adtProdutosOutrasInformaes04: TWideStringField;
    adtProdutosOutrasInformaes05: TWideStringField;
    adtProdutosOutrasInformaes06: TWideStringField;
    adtProdutosOutrasInformaes07: TWideStringField;
    adtProdutosOutrasInformaes08: TWideStringField;
    adtProdutosOutrasInformaes09: TWideStringField;
    adtProdutosOutrasInformaes10: TWideStringField;
    adtProdutosArquivocomEspecificaoTcnica: TWideStringField;
    adtProdutosFatordeConversodeUnidadeparaProduo: TFloatField;
    adtProdutosObrigatrioLicena: TBooleanField;
    adtProdutosFoto: TBlobField;
    adtProdutosDatadoInventrio: TDateTimeField;
    adtProdutosVendedor01: TSmallintField;
    adtProdutosValordeCompraOriginal: TFloatField;
    adtProdutosValordeDescontonaCompra: TFloatField;
    adtProdutosUnidadeVlrVenda: TWideStringField;
    adtProdutosArea: TFloatField;
    adtProdutosCODIPI: TIntegerField;
    adtProdutosLOCPAD: TWideStringField;
    adtProdutosCUSPRO: TFloatField;
    adtProdutosPerDmx: TFloatField;
    adtProdutosICMVEN: TFloatField;
    adtProdutosICMCOM: TFloatField;
    adtProdutospeso_embalagem: TBCDField;
    adtProdutosproduto_configuravel: TBooleanField;
    dstProduto_EBS: TDataSource;
    adsProduto_EBS: TADODataSet;
    dsProduto_EBS: TDataSource;
    adsProduto_EBSCodigo: TWideStringField;
    adsProduto_EBSSit_Produto: TWideStringField;
    adsProduto_EBSVlrCompra: TFloatField;
    adsProduto_EBSVlrVenda: TFloatField;
    adsProduto_EBSVlrAtacado: TFloatField;
    adsProduto_EBSVlrVarejo: TFloatField;
    adsProduto_EBSVlrPromocao: TFloatField;
    adsProduto_EBSDtPromocao: TDateTimeField;
    adsProduto_EBSCodBarra: TWideStringField;
    adsProduto_EBSTipo: TWideStringField;
    adsProduto_EBSLinha01: TWideStringField;
    adsProduto_EBSLinha02: TWideStringField;
    adsProduto_EBSLinha03: TWideStringField;
    adsProduto_EBSMarca: TWideStringField;
    adsProduto_EBSUnidade: TWideStringField;
    adsProduto_EBSUnidadeEntrada: TWideStringField;
    adsProduto_EBSUnidadeAuxiliar: TWideStringField;
    adsProduto_EBSUnidadeAuxiliar1: TWideStringField;
    adsProduto_EBSUnidadedeCompra: TWideStringField;
    adsProduto_EBSAtacadosomentesemaiorque: TIntegerField;
    adsProduto_EBSPesoLquido: TFloatField;
    adsProduto_EBSLocalizaodoProduto: TWideStringField;
    adsProduto_EBSDiasparaReposio: TWordField;
    adsProduto_EBSMesesdegarantia: TWordField;
    adsProduto_EBSGrupo: TIntegerField;
    adsProduto_EBSSubgrupo: TIntegerField;
    adsProduto_EBSSituaoTributria: TWideStringField;
    adsProduto_EBSCdigodoNCM: TWideStringField;
    adsProduto_EBSLetradoNCM: TWideStringField;
    adsProduto_EBSReal: TFloatField;
    adsProduto_EBSVirtual: TFloatField;
    adsProduto_EBSMnimo: TFloatField;
    adsProduto_EBSMximo: TFloatField;
    adsProduto_EBSMdiadeVendas: TFloatField;
    adsProduto_EBSMdiadeFabricao: TFloatField;
    adsProduto_EBSLoteMnimodeCompras: TFloatField;
    adsProduto_EBSLoteMnimodeVendas: TFloatField;
    adsProduto_EBSLoteMnimodeFabricao: TFloatField;
    adsProduto_EBSMargemdeVenda: TFloatField;
    adsProduto_EBSMargemAtacado: TFloatField;
    adsProduto_EBSMargemVarejo: TFloatField;
    adsProduto_EBSValordeTransferncia: TFloatField;
    adsProduto_EBSValorPromooAtacado: TFloatField;
    adsProduto_EBSValidadedaPromooAtacado: TDateTimeField;
    adsProduto_EBSValorPromooVarejo: TFloatField;
    adsProduto_EBSValidadedaPromooVarejo: TDateTimeField;
    adsProduto_EBSltimaAtualizaodoProduto: TDateTimeField;
    adsProduto_EBSQuantidadeporVolume: TFloatField;
    adsProduto_EBSNmerodoDesenho: TWideStringField;
    adsProduto_EBSEspecificaesTcnicas: TMemoField;
    adsProduto_EBSListadePreos: TBooleanField;
    adsProduto_EBSComisso: TFloatField;
    adsProduto_EBSMoedaVenda: TWideStringField;
    adsProduto_EBSCondiodePagamento: TSmallintField;
    adsProduto_EBSMargemdeVendaSubstituioTributria: TFloatField;
    adsProduto_EBSValordosMateriais: TFloatField;
    adsProduto_EBSValordaModeObra: TFloatField;
    adsProduto_EBSCentro: TIntegerField;
    adsProduto_EBSOutrasInformaes01: TWideStringField;
    adsProduto_EBSOutrasInformaes02: TWideStringField;
    adsProduto_EBSOutrasInformaes03: TWideStringField;
    adsProduto_EBSOutrasInformaes04: TWideStringField;
    adsProduto_EBSOutrasInformaes05: TWideStringField;
    adsProduto_EBSOutrasInformaes06: TWideStringField;
    adsProduto_EBSOutrasInformaes07: TWideStringField;
    adsProduto_EBSOutrasInformaes08: TWideStringField;
    adsProduto_EBSOutrasInformaes09: TWideStringField;
    adsProduto_EBSOutrasInformaes10: TWideStringField;
    adsProduto_EBSArquivocomEspecificaoTcnica: TWideStringField;
    adsProduto_EBSFatordeConversodeUnidadeparaProduo: TFloatField;
    adsProduto_EBSObrigatrioLicena: TBooleanField;
    adsProduto_EBSFoto: TBlobField;
    adsProduto_EBSDatadoInventrio: TDateTimeField;
    adsProduto_EBSVendedor01: TSmallintField;
    adsProduto_EBSValordeCompraOriginal: TFloatField;
    adsProduto_EBSValordeDescontonaCompra: TFloatField;
    adsProduto_EBSUnidadeVlrVenda: TWideStringField;
    adsProduto_EBSArea: TFloatField;
    adsProduto_EBSCODIPI: TIntegerField;
    adsProduto_EBSLOCPAD: TWideStringField;
    adsProduto_EBSCUSPRO: TFloatField;
    adsProduto_EBSPerDmx: TFloatField;
    adsProduto_EBSICMVEN: TFloatField;
    adsProduto_EBSICMCOM: TFloatField;
    adsProduto_EBSUMEPRO: TWideStringField;
    adsProduto_EBScd_conta_contabil: TIntegerField;
    adsProduto_EBScd_formacalculo_icmsst: TIntegerField;
    adsProduto_EBSpr_aliquota_int_icmsst: TBCDField;
    adsProduto_EBSpeso_embalagem: TBCDField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoCons: TSQLDataSet;
    dspProdutoCons: TDataSetProvider;
    cdsProdutoCons: TClientDataSet;
    dsProdutoCons: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoCODIGO_EBS: TStringField;
    sdsProdutoCODBARRA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoPRECO_COMPRA: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoCODIGO_EBS: TStringField;
    cdsProdutoCODBARRA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoPRECO_COMPRA: TFloatField;
    sdsProdutoConsID: TIntegerField;
    sdsProdutoConsCODIGO_EBS: TStringField;
    sdsProdutoConsCODBARRA: TStringField;
    sdsProdutoConsNOME: TStringField;
    sdsProdutoConsUNIDADE: TStringField;
    sdsProdutoConsPRECO_VENDA: TFloatField;
    sdsProdutoConsPRECO_COMPRA: TFloatField;
    cdsProdutoConsID: TIntegerField;
    cdsProdutoConsCODIGO_EBS: TStringField;
    cdsProdutoConsCODBARRA: TStringField;
    cdsProdutoConsNOME: TStringField;
    cdsProdutoConsUNIDADE: TStringField;
    cdsProdutoConsPRECO_VENDA: TFloatField;
    cdsProdutoConsPRECO_COMPRA: TFloatField;
    sdsProdutoLINHA_2: TStringField;
    cdsProdutoLINHA_2: TStringField;
    sdsProdutoConsLINHA_2: TStringField;
    cdsProdutoConsLINHA_2: TStringField;
    sdsProdutoDT_ATUALIZACAO_COMPRA: TDateField;
    sdsProdutoDT_ATUALIZACAO_VENDA: TDateField;
    cdsProdutoDT_ATUALIZACAO_COMPRA: TDateField;
    cdsProdutoDT_ATUALIZACAO_VENDA: TDateField;
    adsProduto_EBSDtUltAtualizacaoVenda: TDateTimeField;
    sdsProdutoINATIVO: TStringField;
    cdsProdutoINATIVO: TStringField;
    sdsProdutoConsINATIVO: TStringField;
    cdsProdutoConsINATIVO: TStringField;
    dsmProduto: TDataSource;
    sdsProdutoPreco: TSQLDataSet;
    sdsProdutoPrecoPRODUTO_ID: TIntegerField;
    sdsProdutoPrecoEMPRESA_ID: TIntegerField;
    sdsProdutoPrecoPRECO_COMPRA: TFloatField;
    cdsProdutoPreco: TClientDataSet;
    dsProdutoPreco: TDataSource;
    cdsProdutosdsProdutoPreco: TDataSetField;
    cdsProdutoPrecoPRODUTO_ID: TIntegerField;
    cdsProdutoPrecoEMPRESA_ID: TIntegerField;
    cdsProdutoPrecoPRECO_COMPRA: TFloatField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    dsEmpresa: TDataSource;
    sdsProdutoPrecoPRECO_VENDA: TFloatField;
    cdsProdutoPrecoPRECO_VENDA: TFloatField;
    cdsProdutoPrecoclNOME: TStringField;
    sdsListaPreco: TSQLDataSet;
    dspListaPreco: TDataSetProvider;
    cdsListaPreco: TClientDataSet;
    dsListaPreco: TDataSource;
    cdsListaPrecoNOME: TStringField;
    cdsListaPrecoPRECO_VENDA: TFloatField;
    cdsEmpresaFANTASIA: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    procedure cdsProdutoAfterInsert(DataSet: TDataSet);
    procedure cdsProdutoPrecoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure posicionarProduto(vId: Integer);
  end;

var
  DMProduto: TDMProduto;

implementation

uses DmdDatabase_EBS, DmdDatabase;

{$R *.dfm}

{ TDMProduto }

procedure TDMProduto.posicionarProduto(vId: Integer);
begin
  cdsProduto.Close;
  sdsProduto.ParamByName('ID').AsInteger := vId;
  cdsProduto.Open;
end;

procedure TDMProduto.cdsProdutoAfterInsert(DataSet: TDataSet);
begin
  cdsProdutoID.AsInteger := dmDatabase.ProximaSequencia('PRODUTO',0);
end;

procedure TDMProduto.cdsProdutoPrecoCalcFields(DataSet: TDataSet);
begin
  if not cdsEmpresa.Active then
    cdsEmpresa.Open;
  cdsEmpresa.IndexFieldNames     := 'ID';
  cdsEmpresa.FindKey([cdsProdutoPrecoEMPRESA_ID.AsInteger]);
  cdsProdutoPrecoclNOME.AsSTring := cdsEmpresaNOME.AsString;
end;

end.
