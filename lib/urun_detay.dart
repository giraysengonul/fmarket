import 'package:flutter/material.dart';

class Urundetay extends StatelessWidget {
  final String isim;
  final String fiyat;
  final String resimyolu;
  final bool mevcut;

  const Urundetay({Key key, this.isim, this.fiyat, this.resimyolu, this.mevcut}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: resimyolu,
                              child: Image.network(
                  resimyolu,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20.0),
              Text(
               isim,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "$fiyat TL",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15.0,
                  left: 15.0,
                ),
                child: Text(
                  "Burada ürün hakkında bilgiler yer alacak, Ürünün kalitesi hakkında bilgiler yer alacak.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: mevcut?Colors.red[400]:Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    mevcut?"Sepete Ekle":"Stokta Yok",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
