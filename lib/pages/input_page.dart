import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String textGeneral = "";
  final TextEditingController _myController =
      TextEditingController(text: "Ramon");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Input Page",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const TextField(
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15.0,
                ),
                maxLines: 1,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    hintText: "Dirección",
                    hintStyle: TextStyle(
                      color: Colors.green,
                    ),
                    label: Text(
                      "Dirección Label",
                    ),
                    icon: Icon(Icons.location_on),
                    suffixIcon: Icon(Icons.check_circle_outline),
                    prefixIcon: Icon(Icons.star)),
              ),
              const SizedBox(
                height: 14.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 3.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black38,
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(2.5),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: isInvisible,
                //obscuringCharacter: "#",
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  suffixIcon: IconButton(
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                    icon: Icon(
                      isInvisible
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                style: GoogleFonts.poppins(),
                onTap: () {
                  print("On tap!!!!");
                },
                onChanged: (String text) {
                  textGeneral = text;
                  print(text);
                },
                maxLength: 8,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                keyboardType: TextInputType.text,
                cursorColor: Colors.pink,
                readOnly: false,
                onSubmitted: (String text) {
                  print(text);
                },
                controller: _myController,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_myController.text);
                },
                child: const Text(
                  "Obtener valor del text",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _myController.clear();
                },
                child: const Text(
                  "Reset",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
