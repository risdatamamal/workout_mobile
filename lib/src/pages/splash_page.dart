part of 'pages.dart';

class SplashPage extends StatelessWidget {
  final String icon;
  final String subImage;
  final String buttonTitle1;
  final Function() buttonTap1;
  final String? buttonTitle2;
  final Function()? buttonTap2;

  const SplashPage({
    super.key,
    required this.icon,
    required this.subImage,
    required this.buttonTitle1,
    required this.buttonTap1,
    this.buttonTitle2,
    this.buttonTap2,
  });

  @override
  Widget build(BuildContext context) {
    return AuthPage(
      child: Column(
        children: [
          Container(
            width: 250,
            height: 150,
            margin: const EdgeInsets.only(bottom: 150),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(icon),
              ),
            ),
          ),
          Container(
            width: 250,
            height: 150,
            margin: const EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(subImage),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 12),
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: buttonTap1,
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  backgroundColor: secColor),
              child: Text(
                buttonTitle1,
                style: blackFontStyle2.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          (buttonTap2 == null)
              ? const SizedBox()
              : SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: buttonTap2,
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: mainColor),
                    child: Text(
                      buttonTitle2 ?? 'title',
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
