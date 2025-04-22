import 'package:flutter/material.dart';

// Entry point

// Halaman utama dengan navigasi
import 'package:flutter/material.dart';

class HomeEvaluasi extends StatelessWidget {
  final List<Map<String, dynamic>> pages = [
    {'title': 'Data Mahasiswa', 'page': DataMahasiswa()},
    {'title': 'Deskripsi Hari', 'page': DeskripsiHari()},
    {'title': 'Profil Mahasiswa', 'page': ProfilMahasiswa()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Evaluasi'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => pages[index]['page']),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.menu_book, color: Colors.amber, size: 30),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            pages[index]['title'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}


//
// Soal 1: Data Mahasiswa
//
class DataMahasiswa extends StatelessWidget {
  final List<List<String>> data = [
    ['1', '1106315', 'Depandi Enda'],
    ['2', '1106316', 'Budi Handoyo'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Mahasiswa')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: const [
              Expanded(child: Text('No', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(child: Text('NIM', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(child: Text('Nama', style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
          Divider(),
          ...data.map((row) => Row(
                children: [
                  Expanded(child: Text(row[0])),
                  Expanded(child: Text(row[1])),
                  Expanded(child: Text(row[2])),
                ],
              )),
        ],
      ),
    );
  }
}

//
// Soal 2: Deskripsi Hari
//
class DeskripsiHari extends StatefulWidget {
  @override
  _DeskripsiHariState createState() => _DeskripsiHariState();
}

class _DeskripsiHariState extends State<DeskripsiHari> {
  String _deskripsi = '';

  final Map<String, String> deskripsiHari = {
    'Senin': 'Hari yang luar biasa untuk memulai pekerjaanmu.',
    'Selasa': 'Tetap semangat mengerjakan tugas.',
    'Rabu': 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.',
    'Kamis': 'Kerja keras untuk menggapai cita-cita.',
    'Jumat': 'Jangan lupa untuk beribadah.',
    'Sabtu': 'Selamat weekend.',
    'Minggu': 'Manfaatkan hari minggumu untuk istirahat.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deskripsi Hari')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: deskripsiHari.keys.map((hari) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    setState(() {
                      _deskripsi = deskripsiHari[hari]!;
                    });
                  },
                  child: Text(hari),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _deskripsi,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
// Soal 3: Profil Mahasiswa
//
class ProfilMahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Profile Mahasiswa')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
                CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[300],
                child: ClipOval(
                  child: Image.asset(
                    'assets/profile.png',
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                ),
                ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      InfoTile(label: "Nama", value: "Agus saputra"),
                      InfoTile(label: "Tempat, Tgl Lahir", value: "Bantan tengah, 28 Agustus 2004"),
                      InfoTile(label: "Email", value: "agusptr44@gmail.com"),
                      InfoTile(label: "No HP", value: "081276370587"),
                      InfoTile(label: "Hobi", value: "Membaca buku"),
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

class InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label: ", style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
