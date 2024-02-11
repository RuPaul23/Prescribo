import 'package:flutter/material.dart';
import 'package:prescribo/Main%20Presentation/ListBar/VerticalList.dart';
import 'package:prescribo/Main%20Presentation/Page/Landing_page.dart';

class PrescriptionPage extends StatelessWidget {
  final List _prescription = [
    'Prescription 1',
    'Prescription 2',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
    'Prescription 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Prescribo Screen')),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              LandingPage();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: _prescription.length,
          itemBuilder: (context, index) {
            return VerticalList(
              child: _prescription[index],
            );
          },
        ),

        //floating button
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ));
  }
}
