part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  const GeneralPage(
      {super.key,
      this.title = '',
      this.subtitle = '',
      this.onBackButtonPressed,
      this.backColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // color: mainColor,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientColor1, gradientColor2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              // color: backColor ?? mainColor,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradientColor1, gradientColor2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: double.infinity,
                  height: 100,
                  color: transparentColor,
                  child: Row(
                    children: [
                      onBackButtonPressed != null
                          ? GestureDetector(
                              onTap: () {
                                if (onBackButtonPressed != null) {
                                  onBackButtonPressed!();
                                }
                              },
                              child: Container(
                                width: defaultMargin,
                                height: defaultMargin,
                                margin: const EdgeInsets.only(right: 26),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/arrow_back.png'),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.roboto(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: whiteColor),
                          ),
                          Text(
                            subtitle,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300, color: whiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: defaultMargin,
                  width: double.infinity,
                  color: transparentColor,
                ),
                child ?? const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
