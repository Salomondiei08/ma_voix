import 'package:flutter/material.dart';
import '../../constants/couleurs.dart';
import '../../widgets/custom_home_appbar.dart';
import '../../widgets/list_canditats_items.dart';
import '../../widgets/top_menu_items.dart';

class HomeLargeScreen extends StatefulWidget {
  const HomeLargeScreen({super.key});

  @override
  State<HomeLargeScreen> createState() => _HomeLargeScreenState();
}

class _HomeLargeScreenState extends State<HomeLargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // appbar
          const CustomHomeAppBar(),
          // top menu section
          Padding(
            padding:
                const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TopMenuItems(
                  name: 'Accueil',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeLargeScreen()),
                    );
                  },
                ),
                const SizedBox(width: 20),
                TopMenuItems(
                  name: 'Candidats',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeLargeScreen()),
                    );
                  },
                ),
                const SizedBox(width: 20),
                TopMenuItems(
                  name: 'Débats',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeLargeScreen()),
                    );
                  },
                ),
                const SizedBox(width: 20),
                TopMenuItems(
                  name: 'Sondages',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeLargeScreen()),
                    );
                  },
                ),
                const SizedBox(width: 100),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          50.0), // Ajustez le rayon pour contrôler le niveau d'arrondi
                    ),
                    side:
                        const BorderSide(color: orangeColor), // Bordure orange
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.person, color: orangeColor), // Icône orange
                      SizedBox(
                          width: 8), // Espacement entre l'icône et le texte
                      Text(
                        'Mon compte',
                        style: TextStyle(color: orangeColor), // Texte orange
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //body part 1
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 130.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'images/ill1.png',
                    height: 500,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 150.0, top: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Je donne ',
                            style: TextStyle(
                                color: grayColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 65),
                          ),
                          Text(
                            'MaVoix',
                            style: TextStyle(
                                color: Color(0xFF529F91),
                                fontWeight: FontWeight.bold,
                                fontSize: 65),
                          ),
                        ],
                      ),
                      const Text(
                        'Parce que mon avis compte.',
                        style: TextStyle(color: grayColor, fontSize: 27),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Soyez au cœur de l'action électorale en rejoignant \nune plateforme qui favorise la discussion, \nla participation et l'influence citoyenne.",
                        style: TextStyle(color: grayColor, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // je vote button
                      SizedBox(
                        width: 150,
                        height: 33,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: orangeColor,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('JE VOTE'),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 340, // Position horizontale depuis la gauche
                top: 430, // Position verticale depuis le haut
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: secondOrangeColor,
                    border: Border.all(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaVoixAdvantages(
                          imageAsset: 'images/icon1.png',
                          advantageTitle: 'Participation Active',
                          advantageDesc:
                              "un espace où les citoyens peuvent \ns'engager activement dans les \ndiscussions et les débats sur \ndes questions électorales",
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        MaVoixAdvantages(
                          imageAsset: 'images/icon2.png',
                          advantageTitle: 'Informations Centralisées',
                          advantageDesc:
                              "un guichet unique pour accéder \nà toutes les informations liées \naux élections",
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        MaVoixAdvantages(
                          imageAsset: 'images/icon3.png',
                          advantageTitle: 'Débats Constructifs',
                          advantageDesc:
                              "Des sondages, des questionnaires \ninteractif permettant d'exprimer \nvos préférences et vos idées",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Candidats sections 2
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'CANDIDATS INSCRITS',
              style: TextStyle(
                  color: grayColor, fontWeight: FontWeight.w800, fontSize: 20),
            ),
          ),
          const Center(
            child: Divider(
              color: secondGreenColor,
              indent: 610, // Espacement à gauche (optionnel)
              endIndent: 610,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Michel',
                          firstNameCandidat: 'ADJETEY',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Salomon',
                          firstNameCandidat: 'DIEI',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Maxime',
                          firstNameCandidat: 'EFFANGONO',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Prince',
                          firstNameCandidat: 'KOUAME',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Jojo',
                          firstNameCandidat: 'LEGOAT',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Jojo',
                          firstNameCandidat: 'LEGOAT',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: Border.all(
                            color: secondGreenColor,
                            width: 1.0,
                          ),
                        ),
                        child: ListCandidatItems(
                          imagePathCandidat: 'images/face1.jpg',
                          lastNameCandidat: 'Jojo',
                          firstNameCandidat: 'LEGOAT',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0, bottom: 40.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Voir plus',
                  style: TextStyle(
                    color: secondGreenColor,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          // body part 2
          Container(
            height: 400,
            color: lightGrayColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/ci.png',
                    height: 330,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Une diversité de +300 candidats prêts \nà représenter vos idées et vos préoccupations",
                          style: TextStyle(color: secondGreenColor, fontSize: 27),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "De la jeunesse à l'expérience, des innovateurs aux défenseurs des valeurs traditionnelles, +300 candidats qui reflètent la diversité de nos communautés, prêts à partager avec vous, vous écouter et à agir.",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: const Center(
              child: Text(
                'ACTUALITÉS',
                style: TextStyle(
                    color: grayColor, fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
          ),
          const Center(
            child: Divider(
              color: secondGreenColor,
              indent: 640, // Espacement à gauche (optionnel)
              endIndent: 640,
            ),
          ),
        ],
      ),
    );
  }
}

class MaVoixAdvantages extends StatelessWidget {
  String imageAsset;
  String advantageTitle;
  String advantageDesc;

  MaVoixAdvantages(
      {super.key,
      required this.imageAsset,
      required this.advantageTitle,
      required this.advantageDesc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        Image.asset(
          imageAsset,
          height: 60,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          advantageTitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          advantageDesc,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
