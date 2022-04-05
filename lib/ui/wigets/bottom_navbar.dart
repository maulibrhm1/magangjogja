part of 'widgets.dart';

class BottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const BottomNavbar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(top: 10),
      width: double.infinity,
      color: "D9D9D9".toColor(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  onTap(0);
                },
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'images/home_page${(selectedIndex == 0) ? '.png' : '_normal.png'}',
                    ),
                    fit: BoxFit.contain,
                  )),
                ),
              ),
              Text(
                "Beranda",
                style: GoogleFonts.roboto(
                    color: "3DC484".toColor(),
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  onTap(1);
                },
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'images/absensi${(selectedIndex == 1) ? '.png' : '_normal.png'}'))),
                ),
              ),
              Text(
                "Absensi",
                style: GoogleFonts.roboto(
                    color: "3DC484".toColor(),
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  onTap(2);
                },
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'images/catatan${(selectedIndex == 2) ? '.png' : '_normal.png'}'))),
                ),
              ),
              Text(
                "Catatan Kegiatan",
                style: GoogleFonts.roboto(
                    color: "3DC484".toColor(),
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () {
                    onTap(3);
                  },
                  child: Container(
                    height: 32,
                    width: 32,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'images/status${(selectedIndex == 3) ? '.png' : '_normal.png'}'))),
                  )),
              Text(
                "Status",
                style: GoogleFonts.roboto(
                    color: "3DC484".toColor(),
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
