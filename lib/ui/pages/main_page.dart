part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  int selectPage = 0;
  String userLogin = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectPage = index;
                });
              },
              children: [
                // Beeranda
                const Center(child: BerandaPage()),
                // Absensi
                Center(
                  child: (userLogin.toString() == "0")
                      ? const AbsensiSiswa()
                      : (userLogin.toString() == "1")
                          ? AbsensiGuru()
                          : (userLogin.toString() == "2")
                              ? const SizedBox()
                              : const SizedBox(),
                ),
                // Kegiatan
                Center(
                    child: (userLogin.toString() == "0")
                        ? const KegiatanSiswa()
                        : (userLogin.toString() == "1")
                            ? const KegiatanGuru()
                            : (userLogin.toString() == "2")
                                ? KegiatanAdmin()
                                : const SizedBox()),
                // Status
                const Center(
                  child: StatusPage(),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavbar(
              selectedIndex: selectPage,
              onTap: (index) {
                setState(() {
                  selectPage = index;
                  debugPrint(userLogin.toString());
                });
                pageController.jumpToPage(selectPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
