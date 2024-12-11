import 'package:flutter/material.dart';

class Studikasus03 extends StatefulWidget {
  const Studikasus03({super.key});

  @override
  State<Studikasus03> createState() => _Studikasus03State();
}

class _Studikasus03State extends State<Studikasus03> {
  // Menyimpan pilihan dropdown
  String? _selectedHokage = 'Hokage 1';
  String url = '';

  // Daftar URL gambar berdasarkan pilihan Hokage
  final Map<String, String> hokageImages = {
    'Hokage 1': 'https://cdn.idntimes.com/content-images/duniaku/post/20211028/hashiramas-sage-mode-5b1eca66a36bca298afe7fd8595c888a.png',
    'Hokage 2': 'https://cdn.idntimes.com/content-images/duniaku/post/20191219/kage-terkuat-tobirama-senju-4f785ff7a463c753eddd05d0c0e9da9b.jpg',
    'Hokage 3': 'https://cdn.idntimes.com/content-images/community/2023/08/2906592-cropped-56965fbaa68adf470a17cc45ea5d328d-1c144a7a493a45ebf933a8015a055700_600x400.jpg',
    'Hokage 4': 'https://img.koran-jakarta.com/images/article/masashi-kishimoto-bakal-buat-spin-off-hokage-keempat-minato-namikaze-230420120651.jpeg',
    'Hokage 5': 'https://upload.wikimedia.org/wikipedia/id/9/9c/Tsunade.png' // Gantilah dengan URL yang sesuai untuk Hokage 5
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComboBox dan Gambar Hokage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Dropdown untuk memilih Hokage
            DropdownButton<String>(
              value: _selectedHokage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedHokage = newValue;
                });
              },
              items: hokageImages.keys.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            // Tombol untuk memuat gambar
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Mengambil URL berdasarkan pilihan
                  url = hokageImages[_selectedHokage] ?? '';
                });
              },
              child: const Text('Tampilkan Gambar'),
            ),
            const SizedBox(height: 20),
            // Menampilkan gambar berdasarkan pilihan
            if (url.isNotEmpty)
              buildImageCard(url),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun kotak gambar
  Widget buildImageCard(String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Sudut melengkung
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Sudut melengkung untuk gambar
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover, // Memastikan gambar penuh di dalam kontainer
          height: 250.0, // Tinggi kontainer lebih tinggi agar gambar lebih besar
          width: double.infinity, // Lebar penuh
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(value: loadingProgress.expectedTotalBytes != null 
                ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                : null),
            );
          },
          errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
            return const Center(child: Text('Gagal memuat gambar'));
          },
        ),
      ),
    );
  }
}
