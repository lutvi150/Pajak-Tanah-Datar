import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pajak_tanah_datar/pajak_view_model.dart';

class PajakPage extends StatefulWidget {
  final String name;

  const PajakPage(this.name, {Key key}) : super(key: key);

  @override
  _PajakPageState createState() => _PajakPageState();
}

class _PajakPageState extends State<PajakPage> {
  var ba = TextEditingController();
  var nomor = TextEditingController();
  var seri = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7FC),
        appBar: AppBar(
          title: Text("Pajak Tanah Datar"),
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.grey[350]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Selamat datang",
                      style: Theme.of(context).textTheme.headline1),
                  Text(widget.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.grey[350]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pencarian",
                      style: Theme.of(context).textTheme.headline1),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "BA",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: ba,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Nomor",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: nomor,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Seri",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: seri,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GetX<PajakViewMode>(
                    init: PajakViewMode(),
                    builder: (vm) => ElevatedButton(
                      onPressed: () async {
                        await vm.fetch(ba.text, nomor.text, seri.text);

                        if (vm.pajakState.value.isSuccess) {
                          Get.toNamed('/pajakDetail');
                        } else if((vm.pajakState.value.isError)) {
                          Get.snackbar('Error', 'Data Tidak ditemukan');
                        }
                      },
                      child: vm.pajakState.value.isLoading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text("Cari"),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.grey[350]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("History Pencarian",
                      style: Theme.of(context).textTheme.headline1),
                  GetX<PajakViewMode>(
                    builder: (vm) {
                      if (vm.history != null || vm.history.length != 0) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: vm.history.length,
                          itemBuilder: (c, index) {
                            return ListTile(
                              leading: Icon(Icons.fiber_manual_record_outlined),
                              title: Text(vm.history[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontSize: 16)),
                            );
                          },
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
