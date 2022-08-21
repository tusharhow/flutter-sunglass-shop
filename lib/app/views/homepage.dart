import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/category_component.dart';
import '../components/client_review_card.dart';
import '../components/glass_card_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffBBC8A4),
                        image: DecorationImage(
                          image: AssetImage('assets/images/avatar.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Hi, Alexa!',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/grid.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CategoryPicker(),
              ),
              const GlassCardList(
                image: 'assets/images/glass2.png',
                price: '\$144.00',
                title: 'State street',
                subtitle: 'Ray-Ban',
              ),
              const SizedBox(height: 16),
              const GlassCardList(
                image: 'assets/images/glass3.png',
                price: '\$194.00',
                title: 'Original oyafarer',
                subtitle: 'Prada',
              ),
              const SizedBox(height: 16),
              const GlassCardList(
                image: 'assets/images/glass4.png',
                price: '\$124.00',
                title: 'Round metal',
                subtitle: 'Vercace',
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      'Our Clients',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'See All',
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: const [
                      ClientReviewCard(
                        image: 'assets/images/avatar2.png',
                        name: 'Ryan Gosling',
                        review: 'Nice glasses for\nthe day :)',
                        cardColor: Color(0xffF0F3FF),
                      ),
                       SizedBox(width: 16),
                      ClientReviewCard(
                        image: 'assets/images/avatar3.png',
                        name: 'Ryan Gosling',
                        review: 'Nice glasses for\nthe day :)',
                        cardColor: Color(0xffF5FEC5),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
