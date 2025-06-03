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
            const SizedBox(height: 12),
            _buildPdfButton(context, "Afon'i Jesosy", "assets/pdf/afo.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Aleloia sy voninahitra", "assets/pdf/aleloiasyvoninahitra.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ampio izahay", "assets/pdf/ampiozahay.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Atambatray ho iray", "assets/pdf/atambatray.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Dia vonona tokoa", "assets/pdf/diavonona.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Dieny mbola velona", "assets/pdf/dienymbola.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Diovy ny foko", "assets/pdf/diovy.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fanahy ô!", "assets/pdf/fanahyo.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fihavanana", "assets/pdf/fihavanana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Hifamela", "assets/pdf/hifamela.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Hira faneva 25", "assets/pdf/hirafaneva.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Hiverina aho", "assets/pdf/hiverina.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ho anao", "assets/pdf/hoanao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ho avy", "assets/pdf/hoavy.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Iesu hamasia", "assets/pdf/iesuamasia.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Jeso no manafaka", "assets/pdf/jesoanomanafaka.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mandehana", "assets/pdf/mandehana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mbola hitsangana", "assets/pdf/mbolahitsangana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mifohaza", "assets/pdf/mifohaza.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mitsaoka anao", "assets/pdf/Mitsaokaanao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Noho ny amiko", "assets/pdf/nohonyamiko.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ny antsony", "assets/pdf/nyantsony.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Omeo voninahitra", "assets/pdf/omeovoninahitra.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Tsy ho toizao", "assets/pdf/tsytoizao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Zava-poana", "assets/pdf/zavapoana.pdf"),
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