part of 'pages.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 95),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const StatusProfileWiget()),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 125,
                      child: Text(
                        "Robet",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      child: Text(
                        "Yahuddd",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const StatusBodyWiget(),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 40,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const SignInPage());
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                "C6EED8".toColor()),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ))),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/logout.png'))),
                            ),
                            Text("Keluar",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
