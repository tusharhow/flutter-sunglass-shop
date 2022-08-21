import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientReviewCard extends StatelessWidget {
  const ClientReviewCard({
    Key? key,
    required this.image,
    required this.name,
    required this.review,
    required this.cardColor,
  }) : super(key: key);
  final String image;
  final String name;
  final String review;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: cardColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              width: 80,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                review,
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
