import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Apotek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar Jadwal Akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => JadwalAkademisScreen()),
                );
              },
              child: Text('Jam Buka'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar Info Akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoAkademisScreen()),
                );
              },
              child: Text('Informasi Jam Buka Apotek'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar E-learning
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ELearningScreen()),
                );
              },
              child: Text('Nama Dokter Praktek'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar pengelolaan tugas
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pengelolaantugas()),
                );
              },
              child: Text('pengelolaan Aptoke'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar pelayanan akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pelayananakademis()),
                );
              },
              child: Text('Jam Kunjungan'),
            ),
          ],
        ),
      ),
    );
  }
}

// Layar untuk Jadwal Akademis
class JadwalAkademisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jam Buka'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Jadwal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Widget untuk menampilkan jadwal kuliah
            AcademicScheduleItem(
                day: 'Senin',
                time: '08:00 - 22:00',
                subject: 'Buka dari jam 8 pagi sampe jam 10 malem'),
            AcademicScheduleItem(
                day: 'Selasa',
                time: '08:00 - 22:00',
                subject: 'Buka dari jam 8 Pagi sampe jam 10 Malem'),
            AcademicScheduleItem(
                day: 'Rabu',
                time: '08:00 - 22:00',
                subject: 'Buka dari jam 8 Pagi sampe jam 10 Malem'),
            AcademicScheduleItem(
                day: 'Kamis',
                time: '08:00 - 22:00',
                subject: 'Buka dari jam 8 Pagi sampe jam 8 Malem'),
            AcademicScheduleItem(
                day: 'Selasa',
                time: '08:00 - 22:00',
                subject: 'Buka dari jam 8 Pagi sampe jam 8 Malem'),
            AcademicScheduleItem(
                day: 'Sabtu-Minggu', time: '.-', subject: 'TUTUP YGY'),
            // Tambahkan item jadwal lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicScheduleItem extends StatelessWidget {
  final String day;
  final String time;
  final String subject;

  AcademicScheduleItem(
      {required this.day, required this.time, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          '$day - $time',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subject),
      ),
    );
  }
}

// Layar untuk Info Akademis
class InfoAkademisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFORMASI APOTEK'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'REMINDER',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Widget untuk menampilkan pengumuman
            AcademicInfoItem(
              title: 'HARI RAYA IDHUL FITRI',
              content: 'LEBARAN COKKK...',
            ),
            AcademicInfoItem(
              title: 'BUKA KEMBALI PADA :',
              content: 'NANTI BUKA LAGI SAMBIL NGUMPULIN NIAT',
            ),
            // Tambahkan item info akademis lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicInfoItem extends StatelessWidget {
  final String title;
  final String content;

  AcademicInfoItem({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}

// Layar untuk E-learning
class eLearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Apotek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ELearningScreen(),
    );
  }
}

class ELearningScreen extends StatefulWidget {
  @override
  _ELearningScreenState createState() => _ELearningScreenState();
}

class _ELearningScreenState extends State<ELearningScreen> {
  List<ELearningItem> allELearningItems = [
    ELearningItem(
        title: 'Dadi. S.kom.,M.kom', description: 'Dokter Kandungan '),
    ELearningItem(
        title: 'Dani Nurdiana S.kom.,M.kom',
        description: 'Dokter Persalinanan'),
    ELearningItem(
        title: 'Zahravi Idham Muhardian S.kom.,M.kom',
        description: 'Spesialis Ibu Hamil muda'),
    // Tambahkan item e-learning lainnya sesuai kebutuhan
  ];

  List<ELearningItem> displayedELearningItems = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    displayedELearningItems.addAll(allELearningItems);
    super.initState();
  }

  void filterELearningItems(String query) {
    query = query.toLowerCase();
    setState(() {
      displayedELearningItems = allELearningItems
          .where((item) =>
              item.title.toLowerCase().contains(query) ||
              item.description.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Dokter yang praktek'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: searchController,
              onChanged: filterELearningItems,
              decoration: InputDecoration(
                labelText: 'Mau nyari siapa ?',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: displayedELearningItems.length,
                itemBuilder: (context, index) {
                  return ELearningItemCard(
                      item: displayedELearningItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ELearningItem {
  final String title;
  final String description;

  ELearningItem({required this.title, required this.description});
}

class ELearningItemCard extends StatelessWidget {
  final ELearningItem item;

  ELearningItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}

// Layar untuk pengelolaan tugas
class Pengelolaantugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengelolaan Apotek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskManagerScreen(),
    );
  }
}

class TaskManagerScreen extends StatefulWidget {
  @override
  _TaskManagerScreenState createState() => _TaskManagerScreenState();
}

class _TaskManagerScreenState extends State<TaskManagerScreen> {
  List<TaskItem> taskItems = [];

  TextEditingController taskController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengelolaan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Tambah',
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Pilih Tanggal'),
                ),
                SizedBox(width: 16),
                Text(
                  'Tanggal Pengingat: ${selectedDate.toLocal()}'.split(' ')[0],
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _addTask(),
              child: Text('Tambah'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: taskItems.length,
                itemBuilder: (context, index) {
                  return TaskItemCard(
                    item: taskItems[index],
                    onDelete: () => _deleteTask(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        taskItems.add(TaskItem(
          task: taskController.text,
          reminderDate: selectedDate,
        ));
        taskController.clear();
      });
    }
  }

  void _deleteTask(int index) {
    setState(() {
      taskItems.removeAt(index);
    });
  }
}

class TaskItem {
  final String task;
  final DateTime reminderDate;

  TaskItem({required this.task, required this.reminderDate});
}

class TaskItemCard extends StatelessWidget {
  final TaskItem item;
  final VoidCallback onDelete;

  TaskItemCard({required this.item, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.task,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Tanggal Pengingat: ${item.reminderDate.toLocal()}'
                .split(' ')[0]),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: onDelete,
              child: Text('Hapus Tugas'),
            ),
          ],
        ),
      ),
    );
  }
}

// Layar untuk pelayanan akademis
class pelayananakademis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelayanan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AcademicServicesScreen(),
    );
  }
}

class AcademicServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelayanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Layanan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            AcademicServiceItem(
              title: 'Pendaftaran Dokter',
              description: 'Yok daftar',
            ),
            AcademicServiceItem(
              title: 'Pendaftaran Himatif STT Bandung',
              description: 'Himpunan Mahasiswa Teknik Informatika',
            ),
            AcademicServiceItem(
              title: 'Pendaftaran Kuliah',
              description: 'STTBBandung',
            ),
            // Tambahkan item layanan akademis lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicServiceItem extends StatelessWidget {
  final String title;
  final String description;

  AcademicServiceItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
