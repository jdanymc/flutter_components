import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/grid_page.dart';
import 'package:flutter_components/pages/input_page.dart';
import 'package:flutter_components/pages/list_page.dart';
import 'package:flutter_components/pages/selection_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    //color: Colors.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20.0)),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 20.0,
                        offset: const Offset(8, 8),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(fontSize: 24.0, letterSpacing: 1),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(),
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: const AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alerts",
                toPage: const AlertPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                toPage: const CardPage(),
              ),
              ItemComponentWidget(
                title: "Inputs",
                toPage: const InputPage(),
              ),
              ItemComponentWidget(
                title: "Selection",
                toPage: const SelectionPage(),
              ),
              ItemComponentWidget(
                title: "List",
                toPage: ListPage(),
              ),
              ItemComponentWidget(
                title: "Grid View",
                toPage: GridPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  final String title;
  Widget toPage;
  ItemComponentWidget({required this.title, required this.toPage});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 12,
              offset: const Offset(4, 4),
            )
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => toPage,
              ));
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color(0xff023047),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle:
            Text("Ir a detalles del $title", style: GoogleFonts.poppins()),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
