import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerCode extends StatefulWidget {
  const ScannerCode({super.key});

  @override
  State<ScannerCode> createState() => _ScannerCodeState();
}

class _ScannerCodeState extends State<ScannerCode> {
  final MobileScannerController controller = MobileScannerController();


  bool _screenOpened = false; 
  @override
  void initState(){
    super.initState(); 
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Scanner", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
        elevation: 0.0,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: MobileScanner(
            
            onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              Navigator.canPop(context) ? Navigator.pop<String>(context, barcode.rawValue ?? 'No data in QR') : null;
            }
          }),
            ),
      )
    );
  }

}