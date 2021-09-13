part of "pages.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/default_cinema.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70, bottom: 16),
              child: Text(
                'New Experience',
                style: blackTextFont.copyWith(fontSize: 20),
              ),
            ),
            Text(
              'Watch a new movie\n easier than any before',
              style: greyTextFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 250,
              height: 46,
              margin: EdgeInsets.only(top: 70, bottom: 19),
              child: ElevatedButton(
                child: Text(
                  'Get Started',
                  style: whiteTextFont.copyWith(fontSize: 16),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(mainColor)),
                onPressed: () =>
                    BlocProvider.of<PageBloc>(context).add(GoToLoginPage()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: greyTextFont.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      BlocProvider.of<PageBloc>(context).add(GoToLoginPage()),
                  child: Text(
                    'Sign In',
                    style: purpleTextFont.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
