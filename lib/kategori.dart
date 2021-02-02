import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;
  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti("Zetin yağı", "23.50",
            "https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657_1280.jpg"),
        urunKarti("Süt", "3.50",
            "https://cdn.pixabay.com/photo/2016/08/11/23/25/glass-1587258_1280.jpg"),
        urunKarti("Bulgur", "33.00",
            "https://cdn.pixabay.com/photo/2020/06/09/10/14/crocus-rebel-5277799_1280.jpg"),
        urunKarti("Mercimek", "13.50",
            "https://cdn.pixabay.com/photo/2017/09/27/02/51/couscous-salad-2790796_1280.jpg"),
        urunKarti("Buğday(Un)", "5.30",
            "https://cdn.pixabay.com/photo/2019/08/08/13/50/rice-4393023_1280.jpg"),
        urunKarti("Prinç", "28.99",
            "https://cdn.pixabay.com/photo/2014/10/22/18/43/rice-498688_1280.jpg"),
        urunKarti("Makarna", "2.50",
            "https://cdn.pixabay.com/photo/2010/12/13/10/00/pasta-2093_1280.jpg"),
        urunKarti("Ayçiçek Yağı", "27.00",
            "https://cdn.pixabay.com/photo/2017/09/17/20/48/oil-2759777_1280.jpg"),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti(
          "Çikolata Hediyelik",
          "22.50 ",
          "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Karışık Kurabiye",
          "20 ",
          "https://cdn.pixabay.com/photo/2016/11/17/17/37/cookie-1832169_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Çilekli Kek",
          "15 ",
          "https://cdn.pixabay.com/photo/2014/05/23/23/17/dessert-352475_960_720.jpg",
        ),
        urunKarti(
          "Pasta",
          "16 ",
          "https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg",
        ),
        urunKarti(
          "Çikolata Hediyelik",
          "22.50 ",
          "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745_960_720.jpg",
        ),
        urunKarti(
          "Karışık Kurabiye",
          "20 ",
          "https://cdn.pixabay.com/photo/2016/11/17/17/37/cookie-1832169_960_720.jpg",
        ),
        urunKarti(
          "Çilekli Kek",
          "15 ",
          "https://cdn.pixabay.com/photo/2014/05/23/23/17/dessert-352475_960_720.jpg",
        ),
        urunKarti(
          "Pasta",
          "16 ",
          "https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Çikolata Hediyelik",
          "22.50 ",
          "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745_960_720.jpg",
        ),
        urunKarti(
          "Karışık Kurabiye",
          "20 ",
          "https://cdn.pixabay.com/photo/2016/11/17/17/37/cookie-1832169_960_720.jpg",
        ),
        urunKarti(
          "Çilekli Kek",
          "15 ",
          "https://cdn.pixabay.com/photo/2014/05/23/23/17/dessert-352475_960_720.jpg",
        ),
        urunKarti(
          "Pasta",
          "16 ",
          "https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg",
        ),
        urunKarti(
          "Çikolata Hediyelik",
          "22.50 ",
          "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745_960_720.jpg",
        ),
        urunKarti(
          "Karışık Kurabiye",
          "20 ",
          "https://cdn.pixabay.com/photo/2016/11/17/17/37/cookie-1832169_960_720.jpg",
        ),
        urunKarti(
          "Çilekli Kek",
          "15 ",
          "https://cdn.pixabay.com/photo/2014/05/23/23/17/dessert-352475_960_720.jpg",
        ),
        urunKarti(
          "Pasta",
          "16 ",
          "https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti(
          "Portakal Suyu",
          "6.50 ",
          "https://cdn.pixabay.com/photo/2017/05/21/16/52/juice-2331722_960_720.jpg",
        ),
        urunKarti(
          "Şişe Su",
          "2 ",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_960_720.jpg",
        ),
        urunKarti(
          "Maden Suyu 6'lı",
          "5 ",
          "https://cdn.pixabay.com/photo/2017/08/27/17/43/water-glass-2686973_960_720.jpg",
        ),
        urunKarti(
          "Gazoz",
          "1.50 ",
          "https://cdn.pixabay.com/photo/2018/09/06/21/22/soda-3659387_960_720.jpg",
        ),
        urunKarti(
          "Portakal Suyu",
          "6.50 ",
          "https://cdn.pixabay.com/photo/2017/05/21/16/52/juice-2331722_960_720.jpg",
        ),
        urunKarti(
          "Şişe Su",
          "2 ",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_960_720.jpg",
        ),
        urunKarti(
          "Maden Suyu 6'lı",
          "5 ",
          "https://cdn.pixabay.com/photo/2017/08/27/17/43/water-glass-2686973_960_720.jpg",
        ),
        urunKarti(
          "Gazoz",
          "1.50 ",
          "https://cdn.pixabay.com/photo/2018/09/06/21/22/soda-3659387_960_720.jpg",
        ),
        urunKarti(
          "Portakal Suyu",
          "6.50 ",
          "https://cdn.pixabay.com/photo/2017/05/21/16/52/juice-2331722_960_720.jpg",
        ),
        urunKarti(
          "Şişe Su",
          "2 ",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_960_720.jpg",
        ),
        urunKarti(
          "Maden Suyu 6'lı",
          "5 ",
          "https://cdn.pixabay.com/photo/2017/08/27/17/43/water-glass-2686973_960_720.jpg",
        ),
        urunKarti(
          "Gazoz",
          "1.50 ",
          "https://cdn.pixabay.com/photo/2018/09/06/21/22/soda-3659387_960_720.jpg",
        ),
        urunKarti(
          "Portakal Suyu",
          "6.50 ",
          "https://cdn.pixabay.com/photo/2017/05/21/16/52/juice-2331722_960_720.jpg",
        ),
        urunKarti(
          "Şişe Su",
          "2 ",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_960_720.jpg",
        ),
        urunKarti(
          "Maden Suyu 6'lı",
          "5 ",
          "https://cdn.pixabay.com/photo/2017/08/27/17/43/water-glass-2686973_960_720.jpg",
        ),
        urunKarti(
          "Gazoz",
          "1.50 ",
          "https://cdn.pixabay.com/photo/2018/09/06/21/22/soda-3659387_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti(
          "Bulaşık Deterjanı",
          "12 ",
          "https://cdn.pixabay.com/photo/2020/05/08/15/31/detergent-5146192_960_720.jpg",
        ),
        urunKarti(
          "Sıvı Sabun",
          "9 ",
          "https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683_960_720.jpg",
        ),
        urunKarti(
          "Bulaşık Deterjanı",
          "12 ",
          "https://cdn.pixabay.com/photo/2020/05/08/15/31/detergent-5146192_960_720.jpg",
        ),
        urunKarti(
          "Sıvı Sabun",
          "9 ",
          "https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683_960_720.jpg",
        ),
        urunKarti(
          "Bulaşık Deterjanı",
          "12 ",
          "https://cdn.pixabay.com/photo/2020/05/08/15/31/detergent-5146192_960_720.jpg",
        ),
        urunKarti(
          "Sıvı Sabun",
          "9 ",
          "https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683_960_720.jpg",
        ),
        urunKarti(
          "Bulaşık Deterjanı",
          "12 ",
          "https://cdn.pixabay.com/photo/2020/05/08/15/31/detergent-5146192_960_720.jpg",
        ),
        urunKarti(
          "Sıvı Sabun",
          "9 ",
          "https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683_960_720.jpg",
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Urundetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimyolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu,
                          child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "$fiyat TL",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1.0, //en boy oranı
      children: gosterilecekListe,
    );
  }
}
