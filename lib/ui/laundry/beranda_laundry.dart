part of 'laundry.dart';

class BerandaLaundry extends StatelessWidget {
  const BerandaLaundry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Text(
                      "Laundry",
                      style: GoogleFonts.roboto(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  // Btn Laundry
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    height: 165,
                    width: 165,
                    child: TextButton(
                      onPressed: () {
                        debugPrint("Coba Laundry");
                      },
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                      ),
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/btn_laundry.png'))),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: const Alignment(-0.15, -0.35),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/icon_btn_laundry.png'))),
                                ),
                              ),
                              Container(
                                alignment: const Alignment(-0.10, -0.35),
                                child: Text("Laundry yuk",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Alamat penjemputan :",
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.center,
                    child: Text(
                      "Jembatan Janti, Gg. Arjuna No.59, Jaranan, Karangjambe, Banguntapan, Bantul Regency, Special Region of Yogyakarta 55198",
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 23),
                    child: Text(
                      "Lokasi Kamar :",
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: Text(
                      "Kamar nomor 10 lantai 2",
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    height: 42,
                    width: 132,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => StatusLaundry());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: "FFE064".toColor(),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11)),
                        ),
                        child: Text("Status",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500))),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => MainPageAdminLaundry());
                        },
                        child: Text("==>")),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 95),
                  )
                ],
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0.95, -0.45),
            child: TextButton(
              onPressed: () {
                // Get.back();
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/history_laundry.png'))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
