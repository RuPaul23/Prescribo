  import 'package:flutter/material.dart';
import 'package:prescribo/Main%20Presentation/ListBar/VerticalList.dart';

class PrescriptionPage extends StatelessWidget {
  final List _prescription = [
    'Prescription 1',
    'Prescription 2',
    'Prescription 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prescribo Screen'),
      ),
      body: ListView.builder(
        itemCount: _prescription.length,
        itemBuilder: (context, index) {
          return VerticalList(child: _prescription[index],);
        },
      ),
    );
  }
}
