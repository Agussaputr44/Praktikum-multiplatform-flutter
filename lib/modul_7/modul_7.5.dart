import 'package:flutter/material.dart';

class ProfilPolbeng extends StatelessWidget {
  const ProfilPolbeng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil POLBENG'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar logo POLBENG
            Center(
              child: Image.asset(
                'assets/logo_polbeng.png', // Ganti dengan lokasi file gambar kamu
                width: 200,
              ),
            ),
            const SizedBox(height: 16),
            // Judul, Lokasi, Rating (Row)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text di kiri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Politeknik Negeri Bengkalis',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Bengkalis, Riau',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                // Rating di kanan
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    SizedBox(width: 4),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Deskripsi
            const Text(
              'Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. '
              'Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis melalui '
              'Peraturan Menteri Pendidikan Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendirian, Organisasi dan Tata Kerja '
              'Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan yaitu teknik perkapalan, teknik mesin, teknik elektro, '
              'teknik sipil, administrasi niaga, teknik informatika, kemaritiman dan bahasa.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
