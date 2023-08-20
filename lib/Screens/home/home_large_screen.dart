import 'package:flutter/material.dart';
import '../../constants/couleurs.dart';
import '../../responsive_layout.dart';
import '../../widgets/custom_home_appbar.dart';
import '../../widgets/list_canditats_items.dart';
import '../../widgets/top_menu_items.dart';

class HomeLargeScreen extends StatefulWidget {
  const HomeLargeScreen({super.key});

  @override
  State<HomeLargeScreen> createState() => _HomeLargeScreenState();
}

class _HomeLargeScreenState extends State<HomeLargeScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // appbar
          const CustomHomeAppBar(),
          // top menu section
          const TopMenu(),
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
          SectionTitle(
            sectionName: 'CANDIDATS INSCRITS',
            underlineMarginLeft: 610,
            underlineMarginRight: 610,
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
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
                      ),
                    ),
                    CandidatsInfoListItems(
                      candidatInfo: ListCandidatItems(
                        imagePathCandidat: 'images/face1.jpg',
                        lastNameCandidat: 'Salomon',
                        firstNameCandidat: 'DIEI',
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
            color: const Color(0xFF62B7A7).withOpacity(0.5),
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
                          style:
                              TextStyle(color: secondGreenColor, fontSize: 27),
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

          //actualité section
          Container(
            color: const Color(0xFFF5F3F3),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                children: [
                  SectionTitle(
                    sectionName: 'ACTUALITÉS',
                    underlineMarginLeft: 640,
                    underlineMarginRight: 640,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ActualiteListItems(
                          imagePath: 'images/rhdp.jpg',
                          acualiteCategorie: 'Politique',
                          acualiteDate: '18 août 2023',
                          acualiteTitle: 'Lorem ipsum dolor sit amet',
                          acualiteDesc:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy...',
                        ),
                        ActualiteListItems(
                          imagePath: 'images/rhdp.jpg',
                          acualiteCategorie: 'Politique',
                          acualiteDate: '18 août 2023',
                          acualiteTitle: 'Lorem ipsum dolor sit amet',
                          acualiteDesc:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy...',
                        ),
                        ActualiteListItems(
                          imagePath: 'images/rhdp.jpg',
                          acualiteCategorie: 'Politique',
                          acualiteDate: '18 août 2023',
                          acualiteTitle: 'Lorem ipsum dolor sit amet',
                          acualiteDesc:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy...',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // follow section
          SizedBox(
            height: 600,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'images/Groupe 97.png',
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod tempor \ninvidunt ut labore et dolore magna. ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 350,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Entrer votre Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: secondGreenColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'S\'abonner',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // bottom page section
          Container(
            height: 40,
            color: secondGreenColor,
            child: const Center(
              child: Text(
                'Tous droits réservés  ©2023 - MaVoix ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActualiteListItems extends StatelessWidget {
  String imagePath;
  String acualiteCategorie;
  String acualiteDate;
  String acualiteTitle;
  String acualiteDesc;

  ActualiteListItems(
      {super.key,
      required this.imagePath,
      required this.acualiteCategorie,
      required this.acualiteTitle,
      required this.acualiteDesc,
      required this.acualiteDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Column(
        children: [
          // actualité image
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                              imagePath), // Remplacez par le chemin de votre image
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 15,
                  top: 10,
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        acualiteCategorie,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // actualité date
                  Text(
                    acualiteDate,
                    style: const TextStyle(
                      color: secondGreenColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  // actualité title
                  Text(
                    acualiteTitle,
                    style: const TextStyle(
                        color: grayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  // actualité description
                  Text(
                    acualiteDesc,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // author
                  Row(
                    children: [
                      // author info
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/face1.jpg'),
                        radius: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Michel Adje',
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      // readtime
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: secondGreenColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          // actualité description
                          const Text(
                            'lecture de 2 min',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CandidatsInfoListItems extends StatelessWidget {
  ListCandidatItems candidatInfo = ListCandidatItems(
    imagePathCandidat: 'images/face1.jpg',
    lastNameCandidat: 'Salomon',
    firstNameCandidat: 'DIEI',
  );
  CandidatsInfoListItems({
    super.key,
    required candidatInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: candidatInfo,
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  String sectionName;
  double underlineMarginLeft;
  double underlineMarginRight;

  SectionTitle(
      {super.key,
      required this.sectionName,
      required this.underlineMarginLeft,
      required this.underlineMarginRight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            sectionName,
            style: const TextStyle(
                color: grayColor, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
        Center(
          child: Divider(
            color: secondGreenColor,
            indent: underlineMarginLeft, // Espacement à gauche (optionnel)
            endIndent: underlineMarginRight,
          ),
        ),
      ],
    );
  }
}

class TopMenu extends StatelessWidget {
  const TopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20.0),
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResponsiveLayout()));
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    50.0), // Ajustez le rayon pour contrôler le niveau d'arrondi
              ),
              side: const BorderSide(color: orangeColor), // Bordure orange
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // affiche l'icone ssi le user est connecté
                //Icon(Icons.person, color: orangeColor), // Icône orange
                SizedBox(width: 8), // Espacement entre l'icône et le texte
                Text(
                  'S\'identifier',
                  style: TextStyle(color: orangeColor), // Texte orange
                ),
              ],
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
