class PajakModel {
  List<GetDataRanmor> getDataRanmor;

  PajakModel({this.getDataRanmor});

  PajakModel.fromJson(Map<String, dynamic> json) {
    if (json['GetDataRanmor'] != null) {
      getDataRanmor = <GetDataRanmor>[];
      json['GetDataRanmor'].forEach((v) {
        getDataRanmor.add(new GetDataRanmor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getDataRanmor != null) {
      data['GetDataRanmor'] =
          this.getDataRanmor.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetDataRanmor {
  String tNKB;
  String mEREK;
  String tIPE;
  String tAHUN;
  String wARNA;
  String tGLPAJAK;
  String tGLSTNK;
  String sTATUSBLOKIR;
  String pKBPOKOK;
  String pKBDENDA;
  String sWDKLLJPOKOK;
  String sWDKLLJDENDA;
  String aDMSTNK;
  String aDMTNKB;
  String jUMLAH;
  String kETERANGAN;

  GetDataRanmor(
      {this.tNKB,
      this.mEREK,
      this.tIPE,
      this.tAHUN,
      this.wARNA,
      this.tGLPAJAK,
      this.tGLSTNK,
      this.sTATUSBLOKIR,
      this.pKBPOKOK,
      this.pKBDENDA,
      this.sWDKLLJPOKOK,
      this.sWDKLLJDENDA,
      this.aDMSTNK,
      this.aDMTNKB,
      this.jUMLAH,
      this.kETERANGAN});

  GetDataRanmor.fromJson(Map<String, dynamic> json) {
    tNKB = json['TNKB'];
    mEREK = json['MEREK'];
    tIPE = json['TIPE'];
    tAHUN = json['TAHUN'];
    wARNA = json['WARNA'];
    tGLPAJAK = json['TGL PAJAK'];
    tGLSTNK = json['TGL STNK'];
    sTATUSBLOKIR = json['STATUS BLOKIR'];
    pKBPOKOK = json['PKB POKOK'];
    pKBDENDA = json['PKB DENDA'];
    sWDKLLJPOKOK = json['SWDKLLJ POKOK'];
    sWDKLLJDENDA = json['SWDKLLJ DENDA'];
    aDMSTNK = json['ADM STNK'];
    aDMTNKB = json['ADM TNKB'];
    jUMLAH = json['JUMLAH'];
    kETERANGAN = json['KETERANGAN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TNKB'] = this.tNKB;
    data['MEREK'] = this.mEREK;
    data['TIPE'] = this.tIPE;
    data['TAHUN'] = this.tAHUN;
    data['WARNA'] = this.wARNA;
    data['TGL PAJAK'] = this.tGLPAJAK;
    data['TGL STNK'] = this.tGLSTNK;
    data['STATUS BLOKIR'] = this.sTATUSBLOKIR;
    data['PKB POKOK'] = this.pKBPOKOK;
    data['PKB DENDA'] = this.pKBDENDA;
    data['SWDKLLJ POKOK'] = this.sWDKLLJPOKOK;
    data['SWDKLLJ DENDA'] = this.sWDKLLJDENDA;
    data['ADM STNK'] = this.aDMSTNK;
    data['ADM TNKB'] = this.aDMTNKB;
    data['JUMLAH'] = this.jUMLAH;
    data['KETERANGAN'] = this.kETERANGAN;
    return data;
  }
}
