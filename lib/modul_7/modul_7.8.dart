import 'package:flutter/material.dart';

class SoftWrapDemo extends StatelessWidget {
  const SoftWrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.softWrap'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Politeknik Negeri Bengkalis',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. '
                'Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis melalui '
                'Peraturan Menteri Pendidikan Nasional (Permendiknas) No. 28 tahun 2011 Tentang Pendirian, Organisasi dan Tata Kerja '
                'Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan yaitu teknik perkapalan, teknik mesin, '
                'teknik elektro, teknik sipil, administrasi niaga, teknik informatika, kemaritiman dan bahasa.',
                softWrap: true,
                maxLines: 10, // batas maksimal baris agar tidak terlalu panjang
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

