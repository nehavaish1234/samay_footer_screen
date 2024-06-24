import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 446,
              height: 127,
              child: Text(
                'Contact US 7972391849\nEmail : samaystartup@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Roboto Slab',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerWithLogo(
                    context, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png'),
                buildContainerWithLogo(
                    context, 'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg'),
                buildContainerWithLogo(
                    context, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png'),
                buildContainerWithLogo(
                    context, 'https://upload.wikimedia.org/wikipedia/en/6/60/Twitter_Logo_as_of_2021.svg'),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 236,
              height: 61,
              child: Text(
                'copyright@samay.live',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  height: 1.0, 
                  letterSpacing: 0.36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainerWithLogo(BuildContext context, String logoUrl) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.network(
          logoUrl,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
