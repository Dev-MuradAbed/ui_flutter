import 'dart:io';

import 'package:get/get.dart';

// import 'package:googleapis/drive/v3.dart';
class SpeakGet extends GetxController {
  List<List<String>> _list = [];
  List<List<String>> get lsit => _list;
  String _q1 = "";
  String get q1 => _q1;
  String _q2 = "";
  String get q2 => _q2;
  String _q3 = "";
  String get q3 => _q3;
  String _q4 = "";
  String get q4 => _q4;
  String _q5 = "";
  String get q5 => _q5;
  String _q6 = "";
  String get q6 => _q6;
  String _q7 = "";
  String get q7 => _q7;
  String _q8 = "";
  String get q8 => _q8;
  String _q9 = "";
  String get q9 => _q9;
  String _q10 = "";
  String get q10 => _q10;
  String _q11 = "";
  String get q11 => _q11;
  String _q12 = "";
  String get q12 => _q12;
  String _q13 = "";
  String get q13 => _q13;
  String _q14 = "";
  String get q14 => _q14;
  String _q15 = "";
  String get q15 => _q15;
  String _q16 = "";
  String get q16 => _q16;
  String _q17 = "";
  String get q17 => _q17;
  String _q18 = "";
  String get q18 => _q18;
  String _q19 = "";
  String get q19 => _q19;
  String _q20 = "";
  String get q20 => _q20;
  String _q21 = "";
  String get q21 => _q21;
  String _q22 = "";
  String get q22 => _q22;
  String _q23 = "";
  String get q23 => _q23;
  String _q24 = "";
  String get q24 => _q24;
  String _q25 = "";
  String get q25 => _q25;
  String _q26 = "";
  String get q26 => _q26;
  String _q27 = "";
  String get q27 => _q27;
  String _q28 = "";
  String get q28 => _q28;
  String _q29 = "";
  String get q29 => _q29;
  String _q30 = "";
  String get q30 => _q30;
  String _q31 = "";
  String get q31 => _q31;
  String _q32 = "";
  String get q32 => _q32;
  String _q33 = "";
  String get q33 => _q33;
  String _q34 = "";
  String get q34 => _q34;
  String _q35 = "";
  String get q35 => _q35;
  String _q36 = "";
  String get q36 => _q36;
  String _q37 = "";
  String get q37 => _q37;
  String _q38 = "";
  String get q38 => _q38;
  String _q39 = "";
  String get q39 => _q39;
  String _q40 = "";
  String get q40 => _q40;
  String _q41 = "";
  String get q41 => _q41;
  String _q42 = "";
  String get q42 => _q42;
  String _q43 = "";
  String get q43 => _q43;
  String _q44 = "";
  String get q44 => _q44;
  String _q45 = "";
  String get q45 => _q45;
  String _q46 = "";
  String get q46 => _q46;
  String _q47 = "";
  String get q47 => _q47;
  String _q48 = "";
  String get q48 => _q48;
  String _q49 = "";
  String get q49 => _q49;
  String _q50 = "";
  String get q50 => _q50;
  String _q51 = "";
  String get q51 => _q51;
  String _q52 = "";
  String get q52 => _q52;
  String _q53 = "";
  String get q53 => _q53;
  String _q54 = "";
  String get q54 => _q54;
  String _q55 = "";
  String get q55 => _q55;
  String _q56 = "";
  String get q56 => _q56;
  String _q57 = "";
  String get q57 => _q57;
  String _q58 = "";
  String get q58 => _q58;
  String _q59 = "";
  String get q59 => _q59;
  String _q60 = "";
  String get q60 => _q60;
  String _q61 = "";
  String get q61 => _q61;
  String _q62 = "";
  String get q62 => _q62;
  String _q63 = "";
  String get q63 => _q63;
  String _q64 = "";
  String get q64 => _q64;
  String _q65 = "";
  String get q65 => _q65;
  String _q66 = "";
  String get q66 => _q66;
  String _q67 = "";
  String get q67 => _q67;
  String _q68 = "";
  String get q68 => _q68;
  String _q69 = "";
  String get q69 => _q69;
  String _q70 = "";
  String get q70 => _q70;
  String _q71 = "";
  String get q71 => _q71;
  File _file = File('');
  File get file => _file;
  String _token="";
  String get token => _token;
  insertToken({required token}){
    _token=token;
  }
  insertListItem({required List<List<String>> listItem}) {
    _list = listItem;
  }

  insertFile({required File file}) {
    _file = file;
  }

  insertData(
      {required String q1,
      q2,
      q3,
      q4,
      q5,
      q6,
      q7,
      q8,
      q9,
      q10,
      q11,
      q12,
      q13,
      q14,
      q15,
      q16,
      q17,
      q18,
      q19,
      q20,
      q21,
      q22,
      q23,
      q24,
      q25,
      q26,
      q27,
      q28,
      q29,
      q30,
      q31,
      q32,
      q33,
      q34,
      q35,
      q36,
      q37,
      q38,
      q39,
      q40,
      q41,
      q42,
      q43,
      q44,
      q45,
      q46,
      q47,
      q48,
      q49,
      q50,
      q51,
      q52,
      q53,
      q54,
      q55,
      q56,
      q57,
      q58,
      q59,
      q60,
      q61,
      q62,
      q63,
      q64,
      q65,
      q66,
      q67,
      q68,
      q69,
      q70,
      q71}) {
    _q1 = q1;
    _q2 = q2;
    _q3 = q3;
    _q4 = q4;
    _q5 = q5;
    _q6 = q6;
    _q7 = q7;
    _q8 = q8;
    _q9 = q9;
    _q10 = q10;
    _q11 = q11;
    _q12 = q12;
    _q13 = q13;
    _q14 = q14;
    _q15 = q15;
    _q16 = q16;
    _q17 = q17;
    _q18 = q18;
    _q19 = q19;
    _q20 = q20;
    _q21 = q21;
    _q22 = q22;
    _q23 = q23;
    _q24 = q24;
    _q25 = q25;
    _q26 = q26;
    _q27 = q27;
    _q28 = q28;
    _q29 = q29;
    _q30 = q30;
    _q31 = q31;
    _q32 = q32;
    _q33 = q33;
    _q34 = q34;
    _q35 = q35;
    _q36 = q36;
    _q37 = q37;
    _q38 = q38;
    _q39 = q39;
    _q40 = q40;
    _q41 = q41;
    _q42 = q42;
    _q43 = q43;
    _q44 = q44;
    _q45 = q45;
    _q46 = q46;
    _q47 = q47;
    _q48 = q48;
    _q49 = q49;
    _q50 = q50;
    _q51 = q51;
    _q52 = q52;
    _q53 = q53;
    _q54 = q54;
    _q55 = q55;
    _q56 = q56;
    _q57 = q57;
    _q58 = q58;
    _q59 = q59;
    _q60 = q60;
    _q61 = q61;
    _q62 = q62;
    _q63 = q63;
    _q64 = q64;
    _q65 = q65;
    _q66 = q66;
    _q67 = q67;
    _q68 = q68;
    _q69 = q69;
    _q70 = q70;
    _q71 = q71;
  }
}
