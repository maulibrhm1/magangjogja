part of 'pages.dart';

class PendaftaranMagangPage extends StatefulWidget {
  const PendaftaranMagangPage({Key? key}) : super(key: key);

  @override
  State<PendaftaranMagangPage> createState() => _PendaftaranMagangPageState();
}

class _PendaftaranMagangPageState extends State<PendaftaranMagangPage> {
  TextEditingController namaLangkap = TextEditingController();
  TextEditingController nik = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController sekolah = TextEditingController();
  TextEditingController prodi = TextEditingController();
  TextEditingController tempatTinggal = TextEditingController();
  TextEditingController alasanMagang = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/back_button.png'))),
                    )),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Pendaftaran",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ]),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 55),
            child: Column(
              children: [
                Text(
                  "Nama Lengkap :",
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField()
              ],
            ),
          )
        ],
      ),
    ));
  }
}
