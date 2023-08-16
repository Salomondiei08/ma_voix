import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ma_voix/Screens/signUp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final List<String> carouselTitle = [
    'Bienvenue dans MaVoix - Votre Portail Démocratique en Ligne!',
    'Des Fonctionnalités clés pour les électeurs',
    'Un Avantage pour les candidats et les partis politiques',
  ];
  final List<String> carouselTexts = [
    ' S\'impliquer, s\'exprimer et interagir de manière significative.',
    'Participer aux Sondages Électoraux: Votre opinion compte!',
    'Communiquer Directement avec les Électeurs!',
  ];

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 1000;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: isWideScreen
            ? Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF50dcbb).withOpacity(0.5),
                      Color(0xFF127b36).withOpacity(0.5),
                    ],
                  ),
                ),
                child: CarouselSlider(
                  items: [
                    _buildCarouselItem('images/bg_image.png', carouselTexts[0], carouselTitle[0]),
                    _buildCarouselItem('images/bg_image.png', carouselTexts[1], carouselTitle[1]),
                    _buildCarouselItem('images/bg_image.png', carouselTexts[2], carouselTitle[2]),
                  ],
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: _buildLoginContent(),
            ),
          ],
        )
            : _buildLoginContent(),
      ),
    );
  }

  Widget _buildLoginContent() {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top:40, bottom: 40, left: 100, right: 100),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo-baniere.png', height: 80),
            SizedBox(height: 20),
            Text(
              'Connectez-vous à votre compte',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Choisissez une méthode pour vous connecter',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/Icon awesome-google.png', width: 30, height: 25),
                        SizedBox(width: 10),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/Icon awesome-facebook.png', width: 30, height: 25),
                        SizedBox(width: 10),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 45),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Ou avec votre email'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            Theme(
              data: Theme.of(context)
                  .copyWith(primaryColor: Color(0xFFFF7200),),
              child: TextField(
                decoration: InputDecoration(
                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                  states.contains(MaterialState.focused)
                      ? Color(0xFFFF7200): Colors.grey),

                  filled: true,
                  labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF7200)),),
                  prefixIcon: Icon(Icons.mail_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Theme(
              data: Theme.of(context)
                  .copyWith(primaryColor: Color(0xFFFF7200),),
              child: TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                  states.contains(MaterialState.focused)
                      ? Color(0xFFFF7200): Colors.grey),
                 
                  filled: true,
                  labelText: 'Mot de passe',
                  prefixIcon: Icon(Icons.lock_outlined),
                  focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Color(0xFFFF7200)),),
                  suffixIcon: IconButton(
                    icon: Icon( 
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  checkColor: Color(0xFFFF7200),
                  value: false, // Change this according to your needs
                  onChanged: (value) {
                    // Implement your logic here
                  },
                ),
                Text('Se souvenir de moi'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Implement forgot password logic
                  },
                  child: Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(color: Colors.green, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Implement login logic
                },
                style: ElevatedButton.styleFrom(primary: Color(0xFFFF7200)),
                child: Text('Se connecter'),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Pas de compte ?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                  },
                  child: Text(
                    'Créer un compte',
                    style: TextStyle(color: Color(0xFFFF7200)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String imagePath, String text, String title) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF50dcbb).withOpacity(0.8),
                Color(0xFF127b36).withOpacity(0.5),
                Colors.green
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    carouselTexts.length,
                        (index) => Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == carouselTexts.indexOf(text)
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
