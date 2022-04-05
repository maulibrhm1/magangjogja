part of 'guru.dart';

class CatatanKegiatanGuru extends StatefulWidget {
  CatatanKegiatanGuru(String name, {Key? key}) : super(key: key);

  @override
  State<CatatanKegiatanGuru> createState() => _CatatanKegiatanGuruState();
}

class _CatatanKegiatanGuruState extends State<CatatanKegiatanGuru> {
  PageController pageController = PageController(initialPage: 4);
  int selectPage = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 95),
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("<=="),
                    ),
                    Container(
                      height: 60,
                      width: 280,
                      margin: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Absensi"),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 280,
                      margin: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Catatan Kegiatan"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
