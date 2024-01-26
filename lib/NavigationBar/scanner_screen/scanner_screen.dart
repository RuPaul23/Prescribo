import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Scanner')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  String barcodeScanRes =
                      await FlutterBarcodeScanner.scanBarcode(
                    '#ff6666', // Background color
                    'Cancel', // Button text
                    true, // Show flash option
                    ScanMode.BARCODE, // Scan mode
                  );

                  // Process the scanned barcode here
                  print('Barcode Result: $barcodeScanRes');
                  _generateTxtFile(barcodeScanRes);
                },
                child: Text('Scan Barcode'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final imagePicker = ImagePicker();
                  final XFile? image =
                      await imagePicker.pickImage(source: ImageSource.camera);

                  // Process the captured image here
                  if (image != null) {
                    _convertImageToPdf(image);
                  }
                },
                child: Text('Scan Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _generateTxtFile(String content) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/barcode.txt');
    await file.writeAsString(content);
    print('Text file generated: ${file.path}');
  }

  Future<void> _convertImageToPdf(XFile image) async {
    final pdf = pw.Document();
    final imageBytes = File(image.path).readAsBytesSync();
    final pdfImage = pw.MemoryImage(imageBytes);

    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Image(pdfImage),
        );
      },
    ));

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/scanned_image.pdf');
    await file.writeAsBytes(await pdf.save());
    print('PDF file generated: ${file.path}');
  }
}
