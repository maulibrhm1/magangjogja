part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final Widget child;

  const GeneralPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                // Column(
                // children: [
                // ignore: prefer_const_constructors
                child ?? SizedBox(),
                // ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
