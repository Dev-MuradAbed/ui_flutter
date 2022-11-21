import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
import 'util_pdf.dart';
class pdf_page extends StatefulWidget {
  const pdf_page({Key? key}) : super(key: key);

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  PrintingInfo? printingInfo;
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final info = await Printing.info();
    setState(() {
      printingInfo = info;
    });
  }
  @override
  Widget build(BuildContext context) {
    pw.RichText.debug = true;
    final action = <PdfPreviewAction>[
      if (!kIsWeb)
        const PdfPreviewAction(icon: Icon(Icons.add_to_drive), onPressed: saveAsFile)
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter new pdf"),
        ),
        body: const PdfPreview(
            maxPageWidth: 700,
            allowPrinting: false,
            allowSharing: false,
canChangeOrientation: false,
            canChangePageFormat: false,
            // actions: action,
            build: generatedPdf),
    floatingActionButton: GestureDetector(
      onTap:(){
      saveAsFile(context, (format) => generatedPdf(format), PdfPageFormat.a4);
        },
      child: CircleAvatar(
        radius: 30,
child: Icon(Icons.add_to_drive,size: 30),
      ),
    )
      ,
    );

  }
}
// class GoogleAuthClient extends http.BaseClient {
//   final Map<String, String> _headers;
//   final _client =  http.Client();
//
//   GoogleAuthClient(this._headers);
//
//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) {
//     request.headers.addAll(_headers);
//     return _client.send(request);
//   }
// }