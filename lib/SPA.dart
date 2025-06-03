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
            _buildPdfButton(context, "Akaikinao", "assets/pdf/akaikinao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Aminao ny hery", "assets/pdf/aminaotanora.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Aminao Jehovah", "assets/pdf/aminaojehova.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ampianaro aho Tompo", "assets/pdf/ampianaroahotompo.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ampidino eto", "assets/pdf/ampidinoeto.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "dera ho anao", "assets/pdf/derahoanao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fa hahazo hery", "assets/pdf/fahahazohery.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fiainan-danitra", "assets/pdf/fiainandanitra.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fiainam-baovao", "assets/pdf/fiainambaovao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Fianarana ho an'ny mino", "assets/pdf/fianarana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Halleluyah", "assets/pdf/haleloya.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Hianao Jevovah ô", "assets/pdf/hianaojevoha.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ity firenena ity", "assets/pdf/ityfirenenaity.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Iza no ahy", "assets/pdf/izanoahy.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Izay matoky ani Jehovah", "assets/pdf/izaymatoky.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Kanto idrindra", "assets/pdf/kantoindrindra.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Koa mitsangana", "assets/pdf/koa mitsangana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Masoandroanay", "assets/pdf/masoandronay.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mitafia ny mazava", "assets/pdf/mitafia.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Mitsangana", "assets/pdf/mitsangana.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ny antsony", "assets/pdf/nyantsonysp.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Ny teninao Jesoa", "assets/pdf/nyteninaojesoa.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Omeo voninahitra", "assets/pdf/omeovoninahitrasp.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Satria tanora ise", "assets/pdf/satriatanora.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Tanora o, ny nosindrazanao", "assets/pdf/tanoratanindrazanao.pdf"),
            const SizedBox(height: 12),
            _buildPdfButton(context, "Tena aina", "assets/pdf/tenaaina.pdf"),
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