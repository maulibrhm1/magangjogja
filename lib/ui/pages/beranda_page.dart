part of 'pages.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final String time = DateFormat.Hm().format(DateTime.now());
  final String day = DateFormat.yMMMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(bottom: 95),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 75),
                  child: Column(
                    children: [
                      Text("Absensi",
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: StreamBuilder(
                          stream: Stream.periodic(const Duration(seconds: 1)),
                          builder: (context, snapshot) {
                            return Center(
                              child: Text(
                                DateFormat.Hm().format(DateTime.now()),
                                style: GoogleFonts.roboto(
                                    fontSize: 40, fontWeight: FontWeight.w300),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(day,
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 165,
                        width: 165,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Coba masuk");
                          },
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60))),
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/btn_masuk_pulang.png'))),
                            child: Align(
                              alignment: const Alignment(-0.20, -0.50),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/touch.png'))),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.location_on),
                              label: const Text("TEXT"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        height: 90,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/masuk.png'))),
                                ),
                                Text(
                                  "--:--",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Masuk",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/meal.png'))),
                                ),
                                Text(
                                  "--:--",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Istirahat",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/exit.png'))),
                                ),
                                Text(
                                  "--:--",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Izin Keluar",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/home_address.png'))),
                                ),
                                Text(
                                  "--:--",
                                  style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Pulang",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Align(
          alignment: const Alignment(0.95, -0.45),
          child: TextButton(
            onPressed: () {
              debugPrint("Add Project");
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/add_project.png'))),
            ),
          ),
        )
      ],
    );
  }
}
