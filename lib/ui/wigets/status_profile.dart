part of 'widgets.dart';

class StatusProfileWiget extends StatefulWidget {
  const StatusProfileWiget({Key? key}) : super(key: key);

  @override
  State<StatusProfileWiget> createState() => _StatusProfileWigetState();
}

class _StatusProfileWigetState extends State<StatusProfileWiget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 115,
          width: 115,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/11/30/1012979993.jpg'),
                  fit: BoxFit.cover)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            children: [
              Text(
                "Bergabung",
                style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text("31-03-2022",
                  style: GoogleFonts.roboto(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 50,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint("Add Saldo");
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>("FFE064".toColor()),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Saldoku",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15)),
                      Text("Rp 500.000",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15))
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
