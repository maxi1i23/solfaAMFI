import 'package:flutter/material.dart';
import 'package:amfistk/pdfview.dart';

class PageAUTRE extends StatelessWidget {
  const PageAUTRE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            _buildPdfButton(context, "Azo antoka", "assets/pdf/azoatoka.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fiainam-bahovao", "assets/pdf/fiainambaovao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Manaiky aho", "assets/pdf/manaiky.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Na tsiky na tomany", "assets/pdf/Natsiky.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Omeo fo mino", "assets/pdf/omeo fo mino.pdf"),
            const SizedBox(height: 12),

          ],
        ),
      ),
    );
  }

  Widget _buildPdfButton(BuildContext context, String label, String pdfPath) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  PdfViewerPage(pdfPath: pdfPath, title: label),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.red.shade300, width: 1.5),
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.library_music, color: Colors.grey),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
