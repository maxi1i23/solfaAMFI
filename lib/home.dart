import 'package:flutter/material.dart';
import 'package:amfistk/AUTRES.dart';
import 'package:amfistk/SPA.dart';
import 'package:amfistk/STKAMFI.dart';

class Pagehome extends StatelessWidget {
  const Pagehome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Bande d'images horizontales
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImageCard("assets/images/tritriva.jpg"),
                  const SizedBox(width: 10),
                  _buildImageCard("assets/images/stk.jpg"),
                  const SizedBox(width: 10),
                  _buildImageCard("assets/images/nature.jpg"),
                  const SizedBox(width: 10),
                  _buildImageCard("assets/images/mena.jpg"),
                  const SizedBox(width: 10),
                  _buildImageCard("assets/images/ensemble.jpeg"),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Boutons stylisés
            ReusableButton(
              text: "STK AMFI",
              destinationPage: PageSTKAMFI(),
            ),
            ReusableButton(
              text: "STK SP",
              destinationPage: PageSPA(),
            ),
            ReusableButton(
              text: "AUTRES",
              destinationPage: PageAUTRE(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard(String assetPath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Image.asset(assetPath, fit: BoxFit.cover),
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  final String text;
  final Widget destinationPage;

  const ReusableButton({
    super.key,
    required this.text,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            foregroundColor: MaterialStateProperty.all(Colors.red[900]),
            side: MaterialStateProperty.all(
              const BorderSide(color: Colors.red, width: 2),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            ),
            shadowColor: MaterialStateProperty.all(Colors.red.withOpacity(0.2)),
            elevation: MaterialStateProperty.all(4),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red.shade100;
                }
                return null;
              },
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destinationPage),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.add_circle_outline, color: Colors.red),
                  const SizedBox(width: 12),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
