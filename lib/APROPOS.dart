import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAPROPOS extends StatelessWidget {
  const PageAPROPOS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle("STK AMFI"),
            const SizedBox(height: 10),
            _buildMainSection(),

            const SizedBox(height: 10),
            _buildParastk(),
            _buildParastk1(),


            const Divider(height: 40, thickness: 1),

            _buildTitle("Mahakasika ny fitaovana"),
            const SizedBox(height: 10),
            _buildParaApp1(),
            _buildParaApp(),
            _buildParaApp2(),
            _buildParaApp3(),

            const Divider(height: 40, thickness: 1),

            _buildTitle("Mpamorina ny fitaovana"),
            const SizedBox(height: 10),
            _buildMainSectioncrea(),

            const SizedBox(height: 20),
            _buildParagraph(),
            _buildParacrea(),

            const Divider(height: 40, thickness: 1),

            const Center(
              child: Text(
                "©-2025 by miandry",
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.tealAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }

//titre

  Widget _buildTitle(String title) {
    return Row(
      children: [
        const Icon(Icons.double_arrow, color: Colors.amber),
        const SizedBox(width: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

            color: Colors.amber,
          ),
        ),
      ],
    );
  }

// stk

  Widget _buildMainSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [



        // Image avec bordure stylée (non arrondie)
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.lightBlueAccent,
              width: 4,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(4, 4),
              )
            ],
          ),
          child: Image.asset(
            "assets/images/stk.jpg",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),

        // Paragraphe de texte
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Mombamomba azy: Fikambanana kristianina ao amin'ny FJKM Ambohitsoa Fibebahana, ahitana tanora manolo-tena hanompo an’Andriamanitra.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }


  Widget _buildParastk() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Fototra ijoroany: Miorina amin’ny finoana kristianina, amin’ny alalan’ny Tenin’Andriamanitra, vavaka, ary fanompoana.",
        style: TextStyle(fontStyle: FontStyle.normal, color: Colors.black, fontSize: 16),
        textAlign: TextAlign.left,
      ),

    );
  }
  Widget _buildParastk1() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Text(
            "Tanjona kendrena: Hampiroborobo ny fiainam-panahy sy fanompoam-piangonana eo amin’ny tanora, ho vavolombelona velona amin’ny fiaraha-monina.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          const Text(
            "Misy sokajin'asa maro ao @ STK AMFI: Hira, Vakodrazana, Sports, ary misokatra ho an'izay rehetra mampandroso ny asan'Andriamanitra.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12),
          const Text(
            "Raha maniry ny hifandray mivantana amin'ny birao STK AMFI dia afaka mifanerasera aminao izahay:",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Téléphone
              IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
                onPressed: () async {
                  final Uri uri = Uri(scheme: 'tel', path: '+261385476446');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),

              // Facebook
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
                onPressed: () async {
                  final Uri uri = Uri.parse('https://www.facebook.com/stkambohitsoa.fibebahana');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),

            ],
          ),
          const SizedBox(height: 12),
          const Text(
            " ''Mitsangana, mihazavà fa tonga ny fahazavanao, aoka tsy hisy olona anao tsinotsinona anao noho ny hatanoranao. ''  isai 60:1; I tim 4:12a",
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.amber, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }


// createur




  Widget _buildMainSectioncrea() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Colonne texte
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                " - RANDRIANARIMANANA ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                " - Miandrivola fanomezantsoa",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 8),
              Text(
                " - Mpikambana ao amin'ny STK AMFI",
                style: TextStyle(fontSize: 16),
              ),
            ],

          ),
        ),
        const SizedBox(width: 16),

        // Colonne image
        ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            "assets/images/mi.png",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

// texte sous colone créateur
  Widget _buildParagraph() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Le succès n’est pas final, l’échec n’est pas fatal : c’est le courage de continuer qui compte.",
        style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey, fontSize: 16),
        textAlign: TextAlign.center,
      ),

    );
  }
  Widget _buildParacrea() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Text(
            "Raha misy fanontaniana na maniry ny hifandray mivantana amin'ny mpanorina ity fitaovana ity dia afaka "
                "mifandray amin'ireto tranonkala ireto na manantona mivantana :",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Téléphone
              IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
                onPressed: () async {
                  final Uri uri = Uri(scheme: 'tel', path: '+261385476446');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),



              // Facebook
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
                onPressed: () async {
                  final Uri uri = Uri.parse('https://web.facebook.com/miandry.randrianarimanana');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),

              // LinkedIn
              IconButton(
                icon: const Icon(Icons.link, color: Colors.blueAccent),
                onPressed: () async {
                  final Uri uri = Uri.parse('https://www.linkedin.com/in/miandry-fanomezantsoa-7600992ba/');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),

              // Email
              IconButton(
                icon: const Icon(Icons.email, color: Colors.redAccent),
                onPressed: () async {
                  final Uri uri = Uri(
                    scheme: 'mailto',
                    path: 'miandrivola123@email.com',
                    query: 'subject=Contact depuis l\'application Solfa AMFI',
                  );
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "A bientôt !!",
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }




  // Texte application




  Widget _buildParaApp() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Ny solfa Amfi dia fitaovana iray natao mba hanangonana sy hanamorana ny famakina "
            "ny Solfa rehetra ao amin'ny Sampana Tanora Kristianina Ambohitsoa Fibebahana",
        style: TextStyle(fontSize: 15, height: 1.5),
        textAlign: TextAlign.center,

      ),

    );
  }
  Widget _buildParaApp1() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Version : 1.1.2025-miandry_ft",
        style: TextStyle(fontSize: 15, height: 1.5),
        textAlign: TextAlign.justify,

      ),

    );
  }
  Widget _buildParaApp2() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "TSY AZO AMIDY",

        style: TextStyle(fontSize: 35, height: 1.5, color: Colors.red),
        textAlign: TextAlign.center,

      ),

    );
  }
  Widget _buildParaApp3() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Raha mila fanazavana fanampiny mahakasika ity fitaovana ity dia afaka mifanandray mivantana amin'ny birao Stk AMFI na ny mpamorina.",
        style: TextStyle(fontSize: 15, height: 1.5),
        textAlign: TextAlign.center,

      ),

    );
  }

}
