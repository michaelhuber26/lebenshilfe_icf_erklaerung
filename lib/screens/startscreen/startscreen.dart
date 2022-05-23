import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late PdfViewerController _pdfViewerController;
  var zoomLevel = 1.0;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  Icons.zoom_out,
                  color: Colors.white,
                ),
                onPressed: () {
                  zoomLevel = 1;
                  _pdfViewerController.zoomLevel = zoomLevel;
                },
              ),
              Slider(
                thumbColor: Colors.green[800],
                activeColor: Colors.green[500],
                inactiveColor: Colors.grey,
                min: 1.0,
                divisions: 20,
                max: 3.0,
                value: zoomLevel,
                onChanged: (value) {
                  setState(() {
                    zoomLevel = value;
                    print(zoomLevel);

                    _pdfViewerController.zoomLevel = zoomLevel;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.zoom_in,
                  color: Colors.white,
                ),
                onPressed: () {
                  zoomLevel = 3;
                  _pdfViewerController.zoomLevel = zoomLevel;
                },
              ),
            ],
          ),
          actions: <Widget>[],
        ),
        body: SfPdfViewer.asset(
          'assets/erkaerung_icf.pdf',
          canShowScrollHead: true,
          pageSpacing: 0,
          controller: _pdfViewerController,
        ));
  }
}
