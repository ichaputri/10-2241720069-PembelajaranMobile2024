import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Delmonte Saus Spaghetti 2 x 250 gr',
        price: 10000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/18c3d4f739ef28ee0d3249dcab2d8dc1.webp',
        stock: 10,
        rating: 4.9),
    Item(
        name: 'Heinz Apple Vinegar Cuka 473 mL',
        price: 59000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/70d49117dbb8fb105e1c3a88edf876b2.webp',
        stock: 20,
        rating: 4.8),
    Item(
        name: 'Saus Delmonte Extra Hot Chilli',
        price: 22000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/65fb5e15e7b2f6436363abb166913067.webp',
        stock: 20,
        rating: 4.8),
    Item(
        name: 'Kikkoman Kecap Asin 150 mL',
        price: 22000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/22396b67cf67ac691e8d8a990070d93e@resize_w450_nl.webp',
        stock: 20,
        rating: 4.8),
    Item(
        name: 'Pondan Tepung Brownies',
        price: 16000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/54a6e54da7444188f6d04d558a60e266.webp',
        stock: 20,
        rating: 4.8),
    Item(
        name: 'Finna Uleg Sambel Terasi 190gr',
        price: 17000,
        imageUrl:
            'https://down-id.img.susercontent.com/file/a96a595c68f361425f3492afca226611.webp',
        stock: 20,
        rating: 4.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Jumlah kolom
            crossAxisSpacing: 10, // Spasi antar kolom
            mainAxisSpacing: 10, // Spasi antar baris
            childAspectRatio: 3 / 6, // Rasio lebar dan tinggi item
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                // Navigasi ke halaman item yang dipilih
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },
              child: Card(
                elevation: 4, // Bayangan pada Card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Sudut melengkung
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10), // Ruang di atas gambar
                    Hero(
                      tag: item.imageUrl, // Unik untuk setiap item
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.network(
                          item.imageUrl,
                          height: 150, // Tinggi gambar
                          width: double.infinity, // Lebar gambar menyesuaikan
                          fit: BoxFit.cover, // Gambar sesuai ukuran
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Rp ${item.price}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Stock: ${item.stock}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                          Text('${item.rating}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(5),
          color: Colors.grey[200],
          child: Text(
            'Icha Dewi Putriana | NIM: 2241720069',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
