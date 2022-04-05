part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              "Masuk",
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
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 42,
              width: 150,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: "FFE064".toColor(),
                onPressed: () {
                  Get.to(() => const MainPage());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Login",
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.w500)),
              )),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    "Lupa password? ",
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text("Reset aja",
                      style: GoogleFonts.roboto(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: Text(
                  "Ingin magang bersama kami? ",
                  style: GoogleFonts.roboto(
                      fontSize: 13, fontWeight: FontWeight.w300),
                )),
                InkWell(
                  onTap: () {
                    Get.to(() => const SignUpPage());
                  },
                  child: Text(
                    "Daftar yuk",
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
