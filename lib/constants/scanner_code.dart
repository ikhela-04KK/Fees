import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:fees/components/animation/loading_provider.dart';

class ScannerCode extends StatefulWidget {
  const ScannerCode({super.key});

  @override
  State<ScannerCode> createState() => _ScannerCodeState();
}

class _ScannerCodeState extends State<ScannerCode> {
   final MobileScannerController cameraController = MobileScannerController(formats: [BarcodeFormat.qrCode]);

  @override
  void initState(){
    super.initState(); 
  }
  @override
  Widget build(BuildContext context) {
    final loadingProvider = Provider.of<LoadingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text("Scanner", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
        elevation: 0.0,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: MobileScanner(
            controller: cameraController,
            overlayBuilder: _buildOverlay,
            onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              Navigator.canPop(context) ? Navigator.pop<String>(context, barcode.rawValue ?? 'No data in QR') : null;
            }
          },
          
          ),
            ),
      )
    );
  }

    Widget _buildOverlay(BuildContext context, BoxConstraints constraints) {
    return Stack(
      children: [
        _buildAlignedScanQrHint(),
      ],
    );
  }

   Widget _buildAlignedScanQrHint() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.only(top: 20),
        color: Colors.white,
        child:Text(
          "QrCode",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red
          ),
        ),
      ),
    );
  }

}