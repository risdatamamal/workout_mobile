part of 'pages.dart';

class AuthPage extends StatelessWidget {
  final Widget? switchButton;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  const AuthPage(
      {super.key,
      this.switchButton,
      this.onBackButtonPressed,
      this.backColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradientColor1, gradientColor2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/background.jpeg',
                fit: BoxFit.cover,
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
                      switchButton ?? const SizedBox(),
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
