import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  final TextEditingController _dateController = TextEditingController();

  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    _dateController.text = dateSelected.toString().substring(0, 10);
  }

  int selectedValue = 1;

  List<String> superheroes = [
    "Batman",
    "Superman",
    "Wonder Woman",
    "Flash",
  ];
  // todo: poner este listado en el drop
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Selection Page",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(
                hintText: "Fecha de Nacimiento",
              ),
              onTap: () {
                FocusScope.of(context)
                    .requestFocus(FocusNode()); //oculta teclado
                print("Aperturando el datepicker");
                selectedDate();
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 1,
                      offset: const Offset(4, 4),
                    )
                  ]),
              child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black54,
                ),
                value: selectedValue,
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text(
                      "Elemento 1",
                    ),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(
                      "Elemento 2",
                    ),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(
                      "Elemento 3",
                    ),
                  ),
                ],
                onChanged: (int? value) {
                  print(value);
                  selectedValue = value!;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
