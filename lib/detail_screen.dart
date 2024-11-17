import 'package:flutter/material.dart';

// variable yang digunakan untuk menyimpan TextSyle
var informationTextStyle = const TextStyle(fontFamily: 'Nunito_Sans');

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //untuk memaksimalkan lebar ukuran dari Column
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/farm-house.jpg'),
              //menggunakan Container agar dapat memberikan property seperti margin atau padding pada isi konten
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nunito_Sans',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  // mengatur agar jaraknya berada di antara
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                        //menggunakan TextStyle yang sudah disimpan pada variable informationTextStyle
                        Text('Open Everyday', style: informationTextStyle),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.access_time),
                        const SizedBox(height: 8.0),
                        Text('09:00 - 20:00', style: informationTextStyle),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.monetization_on),
                        const SizedBox(height: 8.0),
                        Text('Rp25,000', style: informationTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  //menggunakan Custom Font yang ditambahkan pada file pubspec.yaml
                  style: TextStyle(fontFamily: 'Oswald', fontSize: 16.0),
                ),
              ),
              // widget ListView dibungkus Sizedbox untu mengatur Tinggi dari setiap gambar menyesuaikan height yang kita inginkan
              SizedBox(
                height: 200,
                //membungkus gambar dengan ListView agar tampilan dapat menggunakan Scrolling
                child: ListView(
                  scrollDirection:
                      Axis.horizontal, //fungsi yang berfungsi untuk mengubah arah scroll pada isi dari ListView
                  children: [
                    //menambahkan widget Padding untuk mengatur jarak antara setiap gambarnya
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      //widget ClipRRect untuk memberikan property tambahan yaitu BorderRadius pada gambar
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        //Image.network untuk mengambil gambar dari link URL
                        child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
