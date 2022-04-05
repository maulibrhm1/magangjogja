part of 'laundry_admin.dart';

class MainPageAdminLaundry extends StatefulWidget {
  MainPageAdminLaundry({Key? key}) : super(key: key);

  @override
  State<MainPageAdminLaundry> createState() => _MainPageAdminLaundryState();
}

class _MainPageAdminLaundryState extends State<MainPageAdminLaundry> {
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 75),
                      child: Text(
                        "Data Laundry",
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 38),
                            height: 35,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedMenu = 0;
                                });
                                debugPrint(selectedMenu.toString());
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  "F9D539".toColor(),
                                ),
                              ),
                              child: Text(
                                "Order Baru",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: (selectedMenu == 0)
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 38),
                            height: 35,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedMenu = 1;
                                });
                                debugPrint(selectedMenu.toString());
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                "F9D539".toColor(),
                              )),
                              child: Text(
                                "Proses",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: (selectedMenu == 1)
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          (selectedMenu == 0)
                              ? OrderBaruLaundryPage()
                              : (selectedMenu == 1)
                                  ? Text("Proses")
                                  : Text("Dah Gila")
                        ],
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
