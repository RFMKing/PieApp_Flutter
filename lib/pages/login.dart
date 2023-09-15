import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pie/pages/home.dart';

class LoginPage extends StatefulWidget{
  LoginPage({Key?key}):super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 196, 86, 1),

      body:
      Container(
        width: 360,
        height: 800,
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
                Padding(
                  padding: const EdgeInsets.fromLTRB(67, 40, 67, 232),
                  child: SizedBox(
                  width: 350,
                  height: 100,
                    child: Image.asset(
                      "images/pielogo.png",
                      scale: 1.0,
                    ),
                  ),
                ),
          
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    style: GoogleFonts.getFont('Zilla Slab',
                                            textStyle: const TextStyle (
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xFF05AFF2),
                                              fontSize: 24,
                                            ),
                                          ),
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      labelText: 'Usuário',
                    ),
                  ),
                ),
          
                SizedBox(height: 20),
          
                SizedBox(
                  width: 300,
                  child:TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      labelText: 'Senha',
                    ),
                  ),
                ),
          
                const SizedBox(
                  width: 350,
                  height: 50,
                        child: Divider(
                          color: Colors.white
                        )
                ),
          
                SizedBox(
                  width: 300,
                  child: InkWell(
                    child: const Text(
                      "Esqueci minha senha",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.white,                                
                              ),    
                              textAlign: TextAlign.center,   
                    ),
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => HomePage()
                      ),
                    ),
                  ),     
                  ),
                         
                SizedBox(height: 40),         
                
                ElevatedButton(
                  child: Text("Entrar"),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => HomePage()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xFF05AFF2),
                    padding: EdgeInsets.all(20.0),
                    fixedSize: Size(140, 60),
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    elevation: 15,
                    shadowColor: Colors.white30,
                    side: const BorderSide(color: Color.fromRGBO(5, 175, 242, 100)),
                      alignment: Alignment.center,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
          
          
              ],
            ),
          ),
        ),
      ),
     
    );
  }
}