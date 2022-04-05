part of 'laundry.dart';

class StatusLaundry extends StatefulWidget {
  StatusLaundry({Key? key}) : super(key: key);

  @override
  State<StatusLaundry> createState() => _StatusLaundryState();
}

class _StatusLaundryState extends State<StatusLaundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              // Row(
              //   children: [
              //     Align(
              //       alignment: Alignment(-1, -1),
              //       child: Container(
              //         height: 45,
              //         width: 45,
              //         decoration: const BoxDecoration(
              //             image: DecorationImage(
              //                 image: AssetImage('images/btn_izin.png'))),
              //       ),
              //     )
              //   ],
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: Text("Status",
                          style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ))),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Text(
                      "Alamat penjemputan : ",
                      style: GoogleFonts.roboto(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 270,
                    child: Text(
                      "Jembatan Janti, Gg. Arjuna No.59, Jaranan, Karangjambe, Banguntapan, Bantul Regency, Special Region of Yogyakarta 55198",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 23),
                    width: 280,
                    child: StatusLaundryWiget(),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: const Alignment(-0.90, -0.85),
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/btn_izin.png'))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
