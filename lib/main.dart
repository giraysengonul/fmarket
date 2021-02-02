import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _aktifIcerikNo = 0;
  List _icerikler;

  @override
  void initState() {
    super.initState();
    _icerikler = [Urunler(), Sepetim()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Seç Gelsin",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        //leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hakkı Can ŞENGÖNüL"),
              accountEmail: Text("cansengonul511@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://avatars0.githubusercontent.com/u/56843071?s=400&u=584400b62d3e96f5cef2e9584e4b72118012421a&v=4",
                   
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color:Colors.blueGrey,),
            ),
            ListTile(title: Text("Siparişlerim"), onTap: (){},),
            ListTile(title: Text("İndirimleri"), onTap: (){},),
            ListTile(title: Text("Ayarlar"), onTap: (){},),
            ListTile(title: Text("Çıkış Yap"), onTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
// ignore: deprecated_member_use
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("Ürünler")),
// ignore: deprecated_member_use
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.shopping_cart),
              // ignore: deprecated_member_use
              title: Text("Sepetim")),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
