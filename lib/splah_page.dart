import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pajak_tanah_datar/pajak_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> init() async => Future.delayed(
        Duration(seconds: 2),
        () {
          Get.off(LoginPage());
        },
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: init(),
        builder: (_, __) => Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo_tanah_pajak.jpeg",
                  scale: 2,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Pajak Tanah Datar",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 24),
                ),
              ],
            )),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo_tanah_pajak.jpeg",
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Silahkan masukan nama kamu, untuk lanjut",
                    style: Theme.of(context).textTheme.bodyText2),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    hintText: "Nama",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/pajak', arguments: nama.text);
                    },
                    child: Text("Lanjut"))
              ],
            )));
  }
}
