part of 'widgets.dart';

class StatusLaundryWiget extends StatefulWidget {
  StatusLaundryWiget({Key? key}) : super(key: key);

  @override
  State<StatusLaundryWiget> createState() => _StatusLaundryWigetState();
}

class _StatusLaundryWigetState extends State<StatusLaundryWiget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Plus +.png'))),
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Pesanan diterima dengan kode pemesanan #1234567 atas nama Randy",
                  textAlign: TextAlign.left,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 13, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
