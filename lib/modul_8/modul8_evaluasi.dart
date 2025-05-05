import 'package:flutter/material.dart';

void main() {
  runApp(const Modul8Evaluasi());
}

class Modul8Evaluasi extends StatelessWidget {
  const Modul8Evaluasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "JosefinSans",
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Visi & Misi Prodi RPL"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Visi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                        'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah:',
                      ),
                      SizedBox(height: 8),
                      Text(
                        '"Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020”.',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Misi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                          "Misi Program Studi Sarjana Terapan Rekayasa Perangkat Lunak adalah:"),
                      SizedBox(height: 8),
                      Text(
                          "1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa "
                          "dalam menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak "
                          "bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi."),
                      SizedBox(height: 8),
                      Text(
                          "2. Menciptakan, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi "
                          "untuk menghasilkan produk unggulan rekayasa perangkat lunak."),
                      SizedBox(height: 8),
                      Text(
                          "3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahan "
                          "di lingkungan internal maupun lingkungan eksternal (industri, pemerintah dan masyarakat umum)."),
                      SizedBox(height: 8),
                      Text(
                          "4. Melaksanakan dan mengembangkan desain dan jejaring kerjasama bidang "
                          "rekayasa perangkat lunak yang berkelanjutan dengan institusi dalam dan luar negeri."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
