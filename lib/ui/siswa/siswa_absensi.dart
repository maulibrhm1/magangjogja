part of 'siswa.dart';

class AbsensiSiswa extends StatefulWidget {
  const AbsensiSiswa({Key? key}) : super(key: key);

  @override
  State<AbsensiSiswa> createState() => _AbsensiSiswaState();
}

class _AbsensiSiswaState extends State<AbsensiSiswa> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // margin: const EdgeInsets.only(top: 155),
      children: [
        ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  height: 140,
                  width: 220,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/Dayflow_Avatar.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 135,
                  child: Text(
                    "Mohon Maaf Kamu tidak bisa mengakses halaman ini",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
