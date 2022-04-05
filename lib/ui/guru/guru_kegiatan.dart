part of 'guru.dart';

class KegiatanGuru extends StatefulWidget {
  const KegiatanGuru({Key? key}) : super(key: key);

  @override
  State<KegiatanGuru> createState() => _KegiatanGuruState();
}

class _KegiatanGuruState extends State<KegiatanGuru> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(bottom: 95),
          children: [
            Column(
              children: [
                Text("Daftar Anak Magang",
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: daftarAnak
                        .map((nama) => Container(
                              height: 60,
                              width: 280,
                              margin: const EdgeInsets.only(top: 15),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(() => CatatanKegiatanGuru(nama.name));
                                  debugPrint(nama.id.toString());
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: "3DC484".toColor(),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                child: Text(
                                  nama.name,
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
