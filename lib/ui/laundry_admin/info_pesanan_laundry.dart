part of 'laundry_admin.dart';

class InfoPesananLaundry extends StatefulWidget {
  InfoPesananLaundry({Key? key}) : super(key: key);

  @override
  State<InfoPesananLaundry> createState() => _InfoPesananLaundryState();
}

class _InfoPesananLaundryState extends State<InfoPesananLaundry> {
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
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Back")),
                    Container(
                      margin: const EdgeInsets.only(top: 75),
                      child: Text(
                        "Data Laundry",
                        style: GoogleFonts.roboto(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                    ),
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
