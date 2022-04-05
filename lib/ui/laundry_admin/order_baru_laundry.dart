part of 'laundry_admin.dart';

class OrderBaruLaundryPage extends StatefulWidget {
  OrderBaruLaundryPage({Key? key}) : super(key: key);

  @override
  State<OrderBaruLaundryPage> createState() => _OrderBaruLaundryPageState();
}

class _OrderBaruLaundryPageState extends State<OrderBaruLaundryPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: laundry
              .map((orderBaru) => Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => InfoPesananLaundry());
                      },
                      child: Container(
                        height: 61,
                        width: 240,
                        decoration: BoxDecoration(
                            color: "3DC484".toColor(),
                            borderRadius: BorderRadius.circular(13),
                            image: const DecorationImage(
                                alignment: Alignment.bottomRight,
                                image:
                                    AssetImage('images/icon_btn_laundry.png'))),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.fromLTRB(18, 10, 0, 0),
                              child: Text(
                                orderBaru.username,
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.fromLTRB(18, 2, 0, 0),
                              child: Text(
                                "#${orderBaru.id}",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
