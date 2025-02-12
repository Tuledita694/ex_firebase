import 'package:ex_firebase/components/boto_auth.dart';
import 'package:flutter/material.dart';
import 'package:ex_firebase/components/textfield_auth.dart';

import '../components/textfield_auth.dart';

class PaginaRegistre extends StatelessWidget {
  const PaginaRegistre({super.key});

  void FerRegistre() {}

  @override
  Widget build(BuildContext context) {
    final TextEditingController tecEmail = TextEditingController();
    final TextEditingController tecPassword = TextEditingController();
    final TextEditingController tecConfPass = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //logo
              const Icon(
                Icons.fireplace,
                size: 126,
                color: Color.fromARGB(255, 255, 240, 218),
              ),

              const SizedBox(height: 25),

              const Text(
                "Crea un compte nou",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 240, 218)),
              ),

              //Text divisori

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 255, 240, 218),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        "Registra't",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 240, 218)),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 255, 240, 218))),
                  ],
                ),
              ),

              //TextField email
              TextfieldAuth(
                controller: tecEmail,
                obscureText: false,
                hintText: 'Escriu el teu email',
              ),
              //TextField password
              TextfieldAuth(
                controller: tecPassword,
                obscureText: true,
                hintText: 'Tria un password',
              ),
              //TextField confirmar password
              TextfieldAuth(
                controller: tecConfPass,
                obscureText: true,
                hintText: 'Rescriu el password',
              ),

              SizedBox(height: 10),
              //No estas registrat/da?

              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Ja ets menmbre?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Fes login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 71, 97),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //botó registrar
              BotoAuth(
                text: 'Registre',
                onTap: FerRegistre,
              ),
              BotoAuth(
                text: 'Logout',
                onTap: () {
                  
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
