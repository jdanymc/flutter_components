import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext cont) {
        return AlertDialog(
          title: const Text(
            "Titulo del Alert",
          ),
          backgroundColor: Colors.white,
          content: const Text("Hola este es el contenido de mi alert"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(cont);
                //Navigator.pop(cont);
              },
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext cont) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          backgroundColor: Colors.white,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hola a todos",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const Divider(
                thickness: 0.7,
              ),
              const SizedBox(
                height: 6.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                "Hola de nuevo, este es el content, vamos a seguir practicando",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black45,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancelar",
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Aceptar",
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Alert Page",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: const Text(
                "Alert 1",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: const Text(
                "Alert 2",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
