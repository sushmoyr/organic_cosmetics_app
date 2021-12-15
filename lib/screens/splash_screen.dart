import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_cosmetics_app/screens/product_screen.dart';
import 'package:organic_cosmetics_app/widgets/circular_icon_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/splash_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh,\nOrganic,\nCosmetics',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    width: 32,
                    height: 2,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: CircularIconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        icon: Icons.arrow_forward,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
