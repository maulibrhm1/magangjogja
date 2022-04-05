part of 'widgets.dart';

class StatusBodyWiget extends StatefulWidget {
  const StatusBodyWiget({Key? key}) : super(key: key);

  @override
  State<StatusBodyWiget> createState() => _StatusBodyWigetState();
}

class _StatusBodyWigetState extends State<StatusBodyWiget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Bagian
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/devisi_magang.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bagian",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "UI / UX Deigner",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Durasi
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/durasi_magang.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Durasi",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "3 Bulan",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Waktu yang tersisa
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/waktu_magang.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Waktu yang tersisa",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "2 Bulan 7 Hari",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Catering
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/meal.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Catering",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Mau makan tepat waktu? sini kami bantu",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Kosan
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/kosan.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kosan",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Bingung cari kosan? sini kami bantu",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Laundry
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {
              Get.to(() => const BerandaLaundry());
            },
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/laundry.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Laundry",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Gaada waktu buat nyuci? sini kami bantu",
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
