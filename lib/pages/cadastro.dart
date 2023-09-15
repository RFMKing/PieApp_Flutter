import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie/repositories/textformarter.dart';
import 'package:pie/pages/login2.dart';


class CadastroPage extends StatefulWidget{
  CadastroPage({Key?key}):super(key:key);

  @override
  _CadastroState createState() => _CadastroState();

}

class _CadastroState extends State<CadastroPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 196, 86, 1),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                                const EdgeInsetsDirectional.fromSTEB(67, 60, 67, 80),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'images/pielogo.png',
                                width: 180,
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
                                inputFormatters: [CPFInputFormatter()],
                                style: GoogleFonts.getFont('Zilla Slab',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF05AFF2),
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
                                  labelText: 'CPF',
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 20),
                            child: SizedBox(
                              width: 300,
                              child: TextFormField(
                                inputFormatters: [EmailInputFormatter()],
                                style: GoogleFonts.getFont('Zilla Slab',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF05AFF2),
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
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 20),
                            child: SizedBox(
                              width: 300,
                              child: TextFormField(
                                inputFormatters: [PasswordInputFormatter()],
                                style: GoogleFonts.getFont('Zilla Slab',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF05AFF2),
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
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 20),
                            child: SizedBox(
                              width: 300,
                              child: TextFormField(
                                obscureText: true,
                                inputFormatters: [
                                  PasswordMatchInputFormatter('originalPassword'), // Replace with actual password
                                ],
                                style: GoogleFonts.getFont('Zilla Slab',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF05AFF2),
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
                                  labelText: 'Confirme Password',
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: SizedBox(
                              width: 250,
                              child: Divider(
                                thickness: 5,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          ElevatedButton(
                            child: const Text("Cadastrar"),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage()
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
            
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green, // Set the background color to green
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0), // Add border radius to the bottom-right corner
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white, // Set the icon color to white
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Go back to the previous page
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}