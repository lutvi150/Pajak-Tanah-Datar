import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pajak_view_model.dart';

class PajakDetailPage extends StatelessWidget {
  const PajakDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Pencarian"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: GetX<PajakViewMode>(
            builder: (vm) {
              if (vm.pajakState.value.isSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TNKB",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].tNKB,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "MEREK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].mEREK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "TIPE",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].tIPE,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "TAHUN",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].tAHUN,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "WARNA",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].wARNA,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "TANGGAL PAJAK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].tGLPAJAK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "TANGGAL STNK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].tGLSTNK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "STATUS BLOKIR",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].sTATUSBLOKIR,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "PKB POKOK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].pKBPOKOK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "PKB DENDA",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].pKBDENDA,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "SWDKLLJ POKOK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].sWDKLLJPOKOK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "SWDKLLJ DENDA",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].sWDKLLJDENDA,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "ADM STNK",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].aDMSTNK,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "ADM TNKB",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].aDMTNKB,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "JUMLAH",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: vm.pajakModel.value.getDataRanmor[0].jUMLAH,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "KETERANGAN",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue:
                          vm.pajakModel.value.getDataRanmor[0].kETERANGAN,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                );
              } else if (vm.pajakState.value.isError) {
                return Container(
                  child: Center(
                    child: Text("Data Tidak Ditemukan",
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
