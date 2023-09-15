import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pie/pages/home.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key?key}):super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 196, 86, 1),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Container(
                  width: 360,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFC456),
                  ),
                  alignment: const AlignmentDirectional(0, -1),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(67, 60, 67, 150),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'images/pielogo.png',
                            width: 200,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 20),
                        child: SizedBox(
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
                      ),

                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 20),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(

                            style: GoogleFonts.getFont('Zilla Slab',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xFF05AFF2),
                                              fontSize: 24,
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
                              labelText: 'Senha',
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 250,
                        child: Divider(
                          thickness: 5,
                          color: Colors.white,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 20),
                        child: Text(
                          'Esqueci minha senha',
                          style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Zilla Slab',
                                    color: Colors.white,
                                    fontSize: 20,
                                    ),
                                    textAlign: TextAlign.center,
                        ),
                      ),

                      ElevatedButton(
                        child: const Text("Entrar"),
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => HomePage()
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color(0xFF05AFF2),
                          padding: const EdgeInsets.all(15.0),
                          fixedSize: const Size(140, 50),
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          elevation: 15,
                          shadowColor: Colors.white30,
                          side: const BorderSide(color: Color.fromRGBO(5, 150, 242, 80)),
                            alignment: Alignment.center,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Container(
                          width: 360,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'PIE Aplicações',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Zilla Slab',
                                  color: Colors.white,
                                  fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center, 
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


