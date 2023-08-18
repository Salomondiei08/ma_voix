import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ma_voix/Screens/signUp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ma_voix/constants/couleurs.dart';

import '../home_screen.dart';

class LoginSmallScreen extends StatefulWidget {

  const LoginSmallScreen({Key? key}) : super(key: key);

  @override
  State<LoginSmallScreen> createState() => _LoginSmallScreenState();
}

class _LoginSmallScreenState extends State<LoginSmallScreen> {
  
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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _buildLoginContent(),);
  }

  Widget _buildLoginContent() {
    return Center(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo-baniere.png', height: 80),
              const SizedBox(height: 20),
              const Text(
                'Connectez-vous à votre compte',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Choisissez une méthode pour vous connecter',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: grayColor),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/Icon awesome-google.png', width: 30, height: 25),
                          const SizedBox(width: 10),
                          const Text(
                            'Google',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: grayColor),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor : Colors.white,
                        foregroundColor : Colors.black,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/Icon awesome-facebook.png', width: 30, height: 25),
                          const SizedBox(width: 10),
                          const Text(
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
              const SizedBox(height: 45),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Ou avec votre email'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 20),
              Theme(
                data: Theme.of(context)
                    .copyWith(primaryColor: orangeColor,),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? orangeColor: grayColor),
                    filled: true,
                    labelText: 'Email',
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: orangeColor),),
                    prefixIcon: const Icon(Icons.mail_outlined),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                  states.contains(MaterialState.focused)
                      ? orangeColor: grayColor),
    
                  filled: true,
                  labelText: 'Mot de passe',
                  prefixIcon: const Icon(Icons.lock_outlined),
                  focusedBorder: const OutlineInputBorder(
    
                    borderSide: BorderSide(color: orangeColor),),
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
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    checkColor: orangeColor,
                    value: false, // Change this according to your needs
                    onChanged: (value) {
                      // Implement your logic here
                    },
                  ),
                  const Text('Se souvenir de moi'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // Implement forgot password logic
                    },
                    child: const Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(color: greenColor, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                   _signInWithEmailAndPassword();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: orangeColor),
                  child: const Text('Se connecter'),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Pas de compte ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                    },
                    child: const Text(
                      'Créer un compte',
                      style: TextStyle(color: orangeColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(name: _emailController.text,)));
    } catch (e) {
      // Handle login failure, show error message to the user
      print("Error signing in: $e");
    }
  }


}
