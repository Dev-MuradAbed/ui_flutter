import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/form/speak_form.dart';
import '../state_mangment/speak_get.dart';
import 'pdf_page_paper/text_speak.dart';

Future<Uint8List> generatedPdf(final PdfPageFormat format) async {
  final c = Get.find<SpeakGet>();

  List users=List.of(allUsers);
  final doc = pw.Document(title: 'Flutter Pdf Murad');
  final logoImage = pw.MemoryImage(
      (await rootBundle.load('assets/heading_image.png')).buffer.asUint8List());
  final footerImage = pw.MemoryImage(
      (await rootBundle.load('assets/heading_image.png')).buffer.asUint8List());
  final pageTheme = await _myPageTheme();
  doc.addPage(pw.MultiPage(
      pageTheme: pageTheme,
      header: (final context) => pw.Image(
        alignment: pw.Alignment.topLeft,
        logoImage,
        fit: pw.BoxFit.contain,
      ),
      // footer: (final context) => pw.Image(
      //       footerImage,
      //       fit: pw.BoxFit.scaleDown,
      //     ),
      build: (context) => [
        textSpeakPage1(),
        textSpeakPage2(),
        textSpeakPage3(),
        textSpeakPage4(),
        pw.SizedBox(height: 180),
        textSpeakPage5(context,c.lsit),
      ]));

  return doc.save();
}

class GoogleAuthClient extends http.BaseClient {
  final Map<String, String> _headers;
  final _client = http.Client();

  GoogleAuthClient(this._headers);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers.addAll(_headers);
    return _client.send(request);
  }
}

Future<void> showMessage(BuildContext context, String msg, String title) async {
  final alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("OK"),
      ),
    ],
  );
  await showDialog(
    context: context,
    builder: (BuildContext context) => alert,
  );
}

final _google= GoogleSignIn.standard(scopes: [
  drive.DriveApi.driveAppdataScope,
  drive.DriveApi.driveFileScope,
]);
Future<drive.DriveApi?> _getDriveApi(BuildContext context) async {
  final googleUser = await _google.signIn();
  final googleAuth = await googleUser?.authentication;
  print("AccessToken :: ${googleAuth?.accessToken}");
  final headers = await googleUser?.authHeaders;
  if (headers ==null) {
    await showMessage(context, "Sign-in first", "Error");
    return null;
  }
  final client = GoogleAuthClient(headers);
  final driveApi = drive.DriveApi(client);
  print('driveApi :: ${client._headers}');
  return driveApi;
}
Future<String?> _getFolderId(drive.DriveApi driveApi,String folderName,BuildContext context) async {
  final mimeType = "application/vnd.google-apps.folder";
  // String folderName = "Flutter-sample-by-tf";

  try {
    final found = await driveApi.files.list(
      q: "mimeType = '$mimeType' and name = '$folderName'",
      $fields: "files(id, name)",
    );
    final files = found.files;
    if (files == null) {
      await showMessage(context, "Sign-in first", "Error");
      return null;
    }

    // The folder already exists
    if (files.isNotEmpty) {
      return files.first.id;
    }

    // Create a folder
    var folder =  drive.File();
    folder.name = folderName;
    folder.mimeType = mimeType;
    final folderCreation = await driveApi.files.create(folder);
    print("Folder ID: ${folderCreation.id}");

    return folderCreation.id;
  } catch (e) {
    print(e);
    return null;
  }
}
// Future<String?> _getFolderId(
//     drive.DriveApi driveApi, BuildContext context, String folderName) async {
//   const mimeType = "application/vnd.google-apps.folder";
//   // String folderName = "ىشةث";
//   try {
//     final found = await driveApi.files.list(
//       q: "mimeType = '$mimeType' and name = '$folderName'",
//       $fields: "files(id, name)",
//     );
//     final files = found.files;
//     print(files == null);
//     if (files == null) {
//       await showMessage(context, "Sign-in first", "Error");
//       return null;
//     }
//     print("try1");
//
//     if (files.isNotEmpty) {
//       return files.first.id;
//     }
//     print("try2");
//     // Create a folder
//     var folder = drive.File();
//     folder.name = folderName;
//     folder.mimeType = mimeType;
//     final folderCreation = await driveApi.files.create(folder);
//     print("Folder ID: ${folderCreation.id}");
//     return folderCreation.id;
//   } catch (e) {
//     print("error $e");
//     // I/flutter ( 6132): DetailedApiRequestError(status: 403, message: The granted scopes do not give access to all of the requested spaces.)
//     return null;
//   }
// }

Future<String?> _getFolderIdInsted(drive.DriveApi driveApi,
    BuildContext context, String folderName, String parentId) async {
  final mimeType = "application/vnd.google-apps.folder";
  // String folderName = "ىشةث";

  try {
    final found = await driveApi.files.list(
      q: "mimeType = '$mimeType' and name = '$folderName'",
      $fields: "files(id, name)",
    );
    final files = found.files;
    if (files == null) {
      await showMessage(context, "Sign-in first", "Error");
      return null;
    }

    if (files.isNotEmpty) {
      return files.first.id;
    }

    // Create a folder
    var folder = drive.File();
    folder.name = folderName;
    folder.mimeType = mimeType;
    folder.parents = [parentId];
    final folderCreation = await driveApi.files.create(folder);
    print("Folder ID: ${folderCreation.id}");

    return folderCreation.id;
  }on drive.DetailedApiRequestError catch (e) {
    if(e.status==401&&e.message=="Invalid Credentials"){
      final googleUser = await _google.signInSilently();
      final googleAuth=await googleUser?.authentication;
      print("refreshToken ::${googleAuth?.accessToken}");
      if(googleUser==null){
        return '';
      }
    }
    // I/flutter ( 6132): DetailedApiRequestError(status: 403, message: The granted scopes do not give access to all of the requested spaces.)
  }catch(e){
    print(e);

  }
}

Future<void> saveAsFile(final BuildContext context, final LayoutCallback build,
    final PdfPageFormat pageFormat
    ) async {
  try {
    final driveApi = await _getDriveApi(context);
    if (driveApi == null) {
      return;
    }
    // Not allow a user to do something else
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration(seconds: 2),
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, animation, secondaryAnimation) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    final bytes = await build(pageFormat);
    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;
    final file = File('$appDocPath/Document.pdf');
    final c = Get.find<SpeakGet>();
    final folderId = await _getFolderId(driveApi, 'ارشيف الاحالات',context);
    print('folder id$folderId');
    final folderInstead =
    await _getFolderIdInsted(driveApi, context, "النطق", folderId!);
    print('folderInstead :: $folderInstead');
    final folderInsteadSpeak = await _getFolderIdInsted(
        driveApi, context, c.q1, folderInstead!);
    print('folderInsteadSpeak :: $folderInstead');
    var driveFile = drive.File();
    final timestamp = DateFormat("yyyy-MM-dd-hhmmss").format(DateTime.now());
    driveFile.name = "${c.q1}-$timestamp.pdf";
    driveFile.modifiedTime = DateTime.now().toUtc();
    driveFile.parents = [folderInsteadSpeak ?? ''];
    print('save as file ${file.path}...');
    final z = await file.writeAsBytes(bytes);
    final x = await OpenFile.open(file.path);
    z;
    x;
    print(x.runtimeType);
    print(z.runtimeType);
    driveApi.files.create(driveFile,
        uploadMedia: drive.Media(file.openRead(), file.lengthSync()));
  } finally {
    Navigator.pop(context);
  }
}

void showPrintedToast(final BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Document printed successfully")));
}

void showSharedToast(final BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Document Shared successfully")));
}

Future<pw.PageTheme> _myPageTheme() async {
  final font = await rootBundle.load("fonts/arabic.ttf");
  final ttf = pw.Font.ttf(font);
  final watermark = pw.MemoryImage(
      (await rootBundle.load('assets/watermarker.png')).buffer.asUint8List());
  return pw.PageTheme(
      margin: const pw.EdgeInsets.symmetric(
          horizontal: 1 * PdfPageFormat.cm, vertical: 0.5 * PdfPageFormat.cm),
      textDirection: pw.TextDirection.rtl,
      theme: pw.ThemeData.withFont(
        base: ttf,
      ),
      orientation: pw.PageOrientation.portrait,
      buildBackground: (final context) => pw.FullPage(
        ignoreMargins: true,
        child: pw.Watermark(
            angle: 25,
            child: pw.Opacity(
                opacity: 0.5,
                child: pw.Image(
                  alignment: pw.Alignment.center,
                  watermark,
                  fit: pw.BoxFit.cover,
                ))),
      ));
}
