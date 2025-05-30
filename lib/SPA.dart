import 'package:flutter/material.dart';
import 'package:amfistk/pdfview.dart';

class PageSPA extends StatelessWidget {
  const PageSPA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            _buildPdfButton(context, "1: Aminao ny hery", "assets/pdf/aminaotanora.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "2: Fiainam-baovao", "assets/pdf/fiainambaovao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "3: Fianarana ho an'ny mino", "assets/pdf/fianarana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "4: Mitafia ny mazava", "assets/pdf/mitafia.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "5: Tanora o, ny nosindrazanao", "assets/pdf/tanoratanindrazanao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "6: Tena aina", "assets/pdf/tenaaina.pdf"),
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
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: Colors.black87,
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