part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rewPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            height: 201,
            width: 201,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/11/30/1012979993.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Text(
              "Daftar",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 307,
              decoration: BoxDecoration(
                  color: "E1E1E1".toColor(),
                  borderRadius: BorderRadius.circular(12)),
              child: TextFormField(
                controller: emailController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    hintText: "Email...", border: InputBorder.none),
              )),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 307,
            decoration: BoxDecoration(
              color: "E1E1E1".toColor(),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              controller: passwordController,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Password...",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 307,
            decoration: BoxDecoration(
              color: "E1E1E1".toColor(),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              controller: rewPassController,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Rewrite Password...",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility_off)),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 60),
              height: 42,
              width: 150,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: "FFE064".toColor(),
                onPressed: () {
                  Get.to(() => const VerifikasiPage());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Daftar",
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.w500)),
              )),
        ],
      ),
    );
  }
}
