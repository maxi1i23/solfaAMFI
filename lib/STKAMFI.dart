import 'package:flutter/material.dart';
import 'package:amfistk/pdfview.dart';

class PageSTKAMFI extends StatelessWidget {
  const PageSTKAMFI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildPdfButton(context, "Document 1", "assets/pdf/doc1.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Document 2", "assets/pdf/doc2.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Document 3", "assets/pdf/doc3.pdf"),
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