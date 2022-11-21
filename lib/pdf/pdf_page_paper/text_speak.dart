import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:ui_flutter/screens/form/speak_form.dart';

import '../../state_mangment/speak_get.dart';
import '../../utils.dart';


pw.Widget textSpeakPage1() {
  final c = Get.find<SpeakGet>();
  return pw.Container(
      padding: const pw.EdgeInsets.only(left: 30, bottom: 20),
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Padding(padding: const pw.EdgeInsets.only(top: 20)),
            pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(
                      width: 500,
                      child: pw.Column(children: [
                        pw.Container(
                            child: pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.center,
                                children: [
                                  pw.Text('قسم علاج اضطرابات النطق و مشاكل  الكلام',
                                      style: const pw.TextStyle(fontSize: 18)),
                                  pw.Text('استمارة دراسة حالة',
                                      style: const pw.TextStyle(fontSize: 18)),
                                ])),
                        pw.SizedBox(height: 20),
                        //البيانات الشخصية لحالة اضطراب النطق و مشاكل الكلام
                        pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.center,
                            children: [
                              pw.Row(
                                  mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'تاريخ الميلاد/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text: c.q2,
                                                style: const pw.TextStyle(
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    ),
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'اسم الحالة/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text: c.q1,
                                                style: const pw.TextStyle(
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    ),
                                  ]),
                              pw.SizedBox(height: 10),
                              pw.Row(
                                  mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'رقم الجوال/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text: c.q4,
                                                style: const pw.TextStyle(
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    ),
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'العنوان/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text: c.q3,
                                                style: const pw.TextStyle(
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    )
                                  ]),
                              pw.SizedBox(height: 10),
                              pw.Row(
                                  mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'الجنس/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text:c.q6,
                                                style: const pw.TextStyle(
                                                  decoration: pw
                                                      .TextDecoration.underline,
                                                  decorationStyle: pw
                                                      .TextDecorationStyle
                                                      .solid,
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    ),
                                    pw.RichText(
                                      text: pw.TextSpan(
                                          text: 'رقم الهوية/ ',
                                          style: const pw.TextStyle(
                                            fontSize: 13,
                                          ),
                                          children: [
                                            pw.TextSpan(
                                                text: c.q5,
                                                style: const pw.TextStyle(
                                                  fontSize: 13,
                                                ))
                                          ]),
                                    ),
                                  ]),
                              pw.SizedBox(height: 20),
                              pw.SizedBox(
                                  width: 500,
                                  child: pw.Column(
                                      crossAxisAlignment:
                                      pw.CrossAxisAlignment.end,
                                      children: [
                                        pw.Text(
                                            'التاريخ الطبي و المرضي للحالة*',
                                            style: const pw.TextStyle(
                                                fontSize: 18)),
                                        pw.SizedBox(height: 14),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text: 'اوصف المشكلة لدى الحالة ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q7,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل تعرض الطفل لحوادث أو تمت اصابته باي امراض ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text:c.q8,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل اكتسب مهارة المشي على عمر سنة ونصف ام بعد ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q9,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل تعرض للإصابة بالحمى الشوكية او التهاب السحايا ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text:
                                                    c.q10,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل حدث امر غير طبيعي في حمله وولادته ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text:
                                                    c.q11,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                            children: [
                                              pw.RichText(
                                                text: pw.TextSpan(
                                                    text:
                                                    'كم كان وزن الطفل عند الميلاد ؟',
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ),
                                                    children: [
                                                      pw.TextSpan(
                                                          text:
                                                         c.q12,
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ))

                                                    ]),
                                              ),
                                              pw.RichText(
                                                text: pw.TextSpan(
                                                    text:
                                                    'هل ميلاده طبيعي ؟',
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ),
                                                    children: [
                                                      pw.TextSpan(
                                                          text:
                                                          c.q13,
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ))

                                                    ]),
                                              ),
                                            ]
                                        ),

                                        pw.SizedBox(height: 10),
                                        pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                            children: [
                                              pw.RichText(
                                                text: pw.TextSpan(
                                                    text:
                                                    'صلة القرابة بين الاب والام ؟',
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ),
                                                    children: [
                                                      pw.TextSpan(
                                                          text: c.q14,
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ))
                                                    ]),
                                              ),
                                              pw.RichText(
                                                text: pw.TextSpan(
                                                    text:
                                                    'هل هناك غياب للاب أو للام ؟',
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ),
                                                    children: [
                                                      pw.TextSpan(
                                                          text:c.q15,
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ))
                                                    ]),
                                              ),
                                            ]
                                        ),

                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل يوجد مشاكل  او اعاقات بالأقارب ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q16,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'كم كان عمر الام بفترة حمله ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q17,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل سلوك الطفل مناسب لعمره ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q18,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل يستجيب الطفل لتنفيذ الأوامر ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q19,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'حسب رايك ما هو سبب المشكلة ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q20,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل الطفل يفهم ما يوجه اليه من قبل العائلة والاخرون ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text:c.q21,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.SizedBox(height: 10),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text:
                                              'هل تم عرض الطفل على اخصائي في السابق ؟',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q22,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                      ]))
                            ]),
                      ]))
                ]),
          ]));
}
pw.Widget textSpeakPage2() {
  final c = Get.find<SpeakGet>();
  return pw.Container(
      padding: const pw.EdgeInsets.only(left: 30, bottom: 20),
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Padding(padding: const pw.EdgeInsets.only(top: 20)),
            pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(
                    width: 500,
                    child: pw.Column(children: [
                      pw.Container(
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              children: [
                                pw.SizedBox(height: 25),
                                pw.Text('قسم علاج اضطرابات النطق و مشاكل  الكلام',
                                    style: const pw.TextStyle(fontSize: 18)),
                                pw.Text('استمارة دراسة حالة',
                                    style: const pw.TextStyle(fontSize: 18)),
                              ])),
                      pw.SizedBox(height: 20),
                      //البيانات الشخصية لحالة اضطراب النطق و مشاكل الكلام
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text("معلومات أولية:",
                                style: const pw.TextStyle(
                                  fontSize: 15,
                                )),
                            pw.SizedBox(height: 10),
                            pw.SizedBox(
                                width: 500,
                                child: pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.SizedBox(height: 14),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '- ما هي لغة التواصل لديه/ها: )لغة الإشارة - نطق - أو كليهما( :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q23,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '- الأدوات المساعدة التي تحتجها الحالة سماعات أو غير ذلك :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q24,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.Text("الوضع الاقتصادي :-",
                                          style: const pw.TextStyle(
                                            fontSize: 15,
                                          )),
                                      pw.SizedBox(height: 20),
                                      pw.Row(
                                          mainAxisAlignment:
                                          pw.MainAxisAlignment.spaceBetween,
                                          children: [
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: 'مهنة الام ',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text: c.q28,
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: ' مكان العمل الاب ',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text: c.q27,
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: 'عمل الاب ',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text: c.q26,
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text:
                                                  'عدد العاملين في الأسرة ',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q25}',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                          ]),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '* المستوى التعليمي للأب )جامعي – ثانوي - إعدادي - أمي( غير ذلك :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q29,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '* المستوى التعليمي للأم )جامعي - ثانوي -إعدادي - ابتدائي -أمي( غير ذلك :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q30,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            'مستوى دخل الأسرة ) مرتفع - متوسط - ضعيف - ضعيف جدا ( غير ذلك : ',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q31,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.Text("التكوين الاسري و الاجتماعي:",
                                          style: const pw.TextStyle(
                                            fontSize: 15,
                                          )),
                                      pw.SizedBox(height: 20),
                                      pw.Row(
                                          mainAxisAlignment:
                                          pw.MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          pw.CrossAxisAlignment.end,
                                          children: [
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: '- زوجات الأب',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q36} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: '- الإناث',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q35} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: '- الذكور',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q34} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: '- عددها',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q33} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: '- نوع الاسره',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q32} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                          ]),
                                      pw.SizedBox(height: 10),
                                      pw.Row(
                                          mainAxisAlignment:
                                          pw.MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          pw.CrossAxisAlignment.end,
                                          children: [
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text:
                                                  '- ترتيب الحالة في الاسرة',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q39} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: 'الام مطلقة',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q38} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text: 'وفاة أحد الولدين',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text:
                                                        '( ${c.q37} )',
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                          ]),
                                      pw.Row(
                                          mainAxisAlignment:
                                          pw.MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          pw.CrossAxisAlignment.end,
                                          children: [
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text:
                                                  'صف العلاقة الاجتماعية بين الوالدين :',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text: c.q41,
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                            pw.RichText(
                                              text: pw.TextSpan(
                                                  text:
                                                  'صلة القرابة بين الوالدين :',
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                  children: [
                                                    pw.TextSpan(
                                                        text: c.q40,
                                                        style:
                                                        const pw.TextStyle(
                                                          fontSize: 13,
                                                        ))
                                                  ]),
                                            ),
                                          ]),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '-صف ماهية التقبل الاجتماعي للحالة داخل المنزل : ',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text:
                                                  c.q42,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '- اذكر الهواية والوسائل الترفيهية المفضلة لدي الحالة :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text:
                                                  c.q43,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.Text("الوضع النفسي :- ",
                                          style: const pw.TextStyle(
                                            fontSize: 15,
                                          )),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            'حدد المشكلات أو السلوكية أو الانفعالية التي تحدث مع الحالة وعدد تكرارها :',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q44,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.RichText(
                                        text: pw.TextSpan(
                                            text:
                                            '-هل يوجد إضافات أخرى تريد إضافتها ؟ ',
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                            children: [
                                              pw.TextSpan(
                                                  text: c.q45,
                                                  style: const pw.TextStyle(
                                                    fontSize: 13,
                                                  ))
                                            ]),
                                      ),
                                      pw.SizedBox(height: 10),
                                      pw.Row(children: [
                                        pw.Spacer(),
                                        pw.Column(children: [
                                          pw.Text(
                                            "توقيع اخصائي النطق",
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                          pw.SizedBox(height: 15),
                                          pw.Text(
                                            "التوقيع",
                                            style: const pw.TextStyle(
                                              fontSize: 13,
                                            ),
                                          )
                                        ]),
                                        pw.Spacer(),
                                        pw.RichText(
                                          text: pw.TextSpan(
                                              text: 'التاريخ / ',
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ),
                                              children: [
                                                pw.TextSpan(
                                                    text: c.q46,
                                                    style: const pw.TextStyle(
                                                      fontSize: 13,
                                                    ))
                                              ]),
                                        ),
                                        pw.Spacer()
                                      ]),
                                    ]))
                          ]),
                    ]),
                  ),
                ]),
          ]));
}
pw.Widget textSpeakPage3() {
  final c = Get.find<SpeakGet>();
  return pw.Container(
      padding: const pw.EdgeInsets.only(left: 30, bottom: 20),
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Padding(padding: const pw.EdgeInsets.only(top: 20)),
            pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(
                    width: 500,
                    child: pw.Column(children: [
                      pw.Container(
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              children: [
                                pw.SizedBox(height: 10),
                                pw.Text('Oral Peripheral Examination',
                                    style: const pw.TextStyle(fontSize: 16)),
                                pw.Text('فحص اعضاء النطق',
                                    style: const pw.TextStyle(fontSize: 18)),
                              ])),
                      pw.SizedBox(height: 20),
                      //البيانات الشخصية لحالة اضطراب النطق و مشاكل الكلام
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Row(
                                mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                                children: [
                                  pw.RichText(
                                    text: pw.TextSpan(
                                        text: 'تاريخ الميلاد/ ',
                                        style: const pw.TextStyle(
                                          fontSize: 13,
                                        ),
                                        children: [
                                          pw.TextSpan(
                                              text: c.q2,
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ))
                                        ]),
                                  ),
                                  pw.RichText(
                                    text: pw.TextSpan(
                                        text: 'اسم الحالة/ ',
                                        style: const pw.TextStyle(
                                          fontSize: 13,
                                        ),
                                        children: [
                                          pw.TextSpan(
                                              text: c.q1,
                                              style: const pw.TextStyle(
                                                fontSize: 13,
                                              ))
                                        ]),
                                  ),
                                ]),
                            pw.SizedBox(height: 10),
                            pw.Container(
                                child: pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Text("الوجه : Face ",
                                          style: const pw.TextStyle(fontSize: 18)),
                                      pw.SizedBox(height: 10),
                                      pw.Padding(
                                          padding:
                                          const pw.EdgeInsets.only(right: 10),
                                          child: pw.Column(
                                              crossAxisAlignment:
                                              pw.CrossAxisAlignment.end,
                                              children: [
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الوجه متناسق طول وعرض :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q46,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الشخص يتنفس من الفم ام من الانف :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q47,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل يوجد شلل في أحد الجانبين :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q48,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل فتحة الفم طبيعية أم لا :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q49,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                              ]))
                                    ])),
                            pw.SizedBox(height: 15),
                            pw.Container(
                                child: pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Text("الشفاه : Lips ",
                                          style: const pw.TextStyle(fontSize: 18)),
                                      pw.SizedBox(height: 10),
                                      pw.Padding(
                                          padding:
                                          const pw.EdgeInsets.only(right: 10),
                                          child: pw.Column(
                                              crossAxisAlignment:
                                              pw.CrossAxisAlignment.end,
                                              children: [
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل ضم الشفاء طبيعية أم لا :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q50,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل يوجد مشاكل في عضلة الشفة :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q51,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الشفتين تحفظ الهواء عند نفخ و إغلاق الشفة :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q52,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل يستطيع حبس الهواء عند نفخ وإغلاق الشفة :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q53,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل يتسرب الهواء من الانف أم لا :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q54,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل تعمل على ممانعة الهواء :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q54,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'عند إغاتقهما تعطي قوة البلع الطعام :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q55,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                              ]))
                                    ])),
                            pw.SizedBox(height: 15),
                            pw.Container(
                                child: pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Text("الفك و الاسنان : Jaw teeth ",
                                          style: const pw.TextStyle(fontSize: 18)),
                                      pw.SizedBox(height: 10),
                                      pw.Padding(
                                          padding:
                                          const pw.EdgeInsets.only(right: 10),
                                          child: pw.Column(
                                              crossAxisAlignment:
                                              pw.CrossAxisAlignment.end,
                                              children: [
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل يفتح فمه ويغلقه بشكل طبيعي :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q56,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الفم لجهة اليمين أم الشمال :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q57,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل حركة الفكين من المفصل الصدعي طبيعي أم غير طبيعي :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q58,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الأسنان طبيعية :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q60,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                                pw.SizedBox(height: 7),
                                                pw.RichText(
                                                  text: pw.TextSpan(
                                                      text:
                                                      'هل الفك العلوي متقدم أم راجع للخلف عن الفك العلوي :',
                                                      style: const pw.TextStyle(
                                                        fontSize: 13,
                                                      ),
                                                      children: [
                                                        pw.TextSpan(
                                                            text: c.q61,
                                                            style:
                                                            const pw.TextStyle(
                                                              fontSize: 13,
                                                            ))
                                                      ]),
                                                ),
                                              ]))
                                    ])),
                          ]),
                    ]),
                  ),
                ]),
          ]));
}
pw.Widget textSpeakPage4() {
  final c = Get.find<SpeakGet>();
  return pw.Container(
      padding: const pw.EdgeInsets.only(left: 30, bottom: 20),
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Padding(padding: const pw.EdgeInsets.only(top: 20)),
            pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(
                    width: 500,
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.SizedBox(height: 20),
                          pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Container(
                                    child: pw.Column(
                                        crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(height: 10),
                                          pw.Padding(
                                              padding:
                                              const pw.EdgeInsets.only(right: 10),
                                              child: pw.Column(
                                                  crossAxisAlignment:
                                                  pw.CrossAxisAlignment.end,
                                                  children: [
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل القواطع فوق بعض :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q62,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل الاسنان مرتبة أم لا :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q63,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل الاسنان منحرفة نحو الشفاه / عضلات الخد / اللهاة :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q64,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'يوجد زيادة في عدد الاسنان أم لا يوجد أسنان في منطقة ما :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q65,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                  ]))
                                        ])),
                                pw.SizedBox(height: 15),
                                pw.Container(
                                    child: pw.Column(
                                        crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                        children: [
                                          pw.Text("سقف الحلق : Palte ",
                                              style: const pw.TextStyle(fontSize: 18)),
                                          pw.SizedBox(height: 10),
                                          pw.Padding(
                                              padding:
                                              const pw.EdgeInsets.only(right: 10),
                                              child: pw.Column(
                                                  crossAxisAlignment:
                                                  pw.CrossAxisAlignment.end,
                                                  children: [
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل سقف الحلق طبيعي :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q66,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل يوجد شق في سقف الحلق :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q67,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                    pw.SizedBox(height: 7),
                                                  ]))
                                        ])),
                                pw.SizedBox(height: 15),
                                pw.Container(
                                    child: pw.Column(
                                        crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                        children: [
                                          pw.Text("اللهاة : Uvula ",
                                              style: const pw.TextStyle(fontSize: 18)),
                                          pw.SizedBox(height: 10),
                                          pw.Padding(
                                              padding:
                                              const pw.EdgeInsets.only(right: 10),
                                              child: pw.Column(
                                                  crossAxisAlignment:
                                                  pw.CrossAxisAlignment.end,
                                                  children: [
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل اللهاة طبيعية :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q68,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                  ]))
                                        ])),
                                pw.SizedBox(height: 15),
                                pw.Container(
                                    child: pw.Column(
                                        crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                        children: [
                                          pw.Text("اللسان : tongue ",
                                              style: const pw.TextStyle(fontSize: 18)),
                                          pw.SizedBox(height: 10),
                                          pw.Padding(
                                              padding:
                                              const pw.EdgeInsets.only(right: 10),
                                              child: pw.Column(
                                                  crossAxisAlignment:
                                                  pw.CrossAxisAlignment.end,
                                                  children: [
                                                    pw.RichText(
                                                      text: pw.TextSpan(
                                                          text:
                                                          'هل اللسان طبيعي :',
                                                          style: const pw.TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                          children: [
                                                            pw.TextSpan(
                                                                text: c.q69,
                                                                style:
                                                                const pw.TextStyle(
                                                                  fontSize: 13,
                                                                ))
                                                          ]),
                                                    ),
                                                  ]))
                                        ])),
                                pw.SizedBox(height: 100),
                                pw.Container(
                                    alignment:const pw.Alignment(-1,-1),
                                    child: pw.Text("توقيع احخصائي النطق")
                                )
                              ]),
                        ]),
                  ),
                ]),
          ]));
}
pw.Widget textSpeakPage5(pw.Context? context, List<List<String>> users) {
  final c = Get.find<SpeakGet>();

  return             pw.Container(
      child: pw.SizedBox(
          width: 500,
          child: pw.Column(children: [
            pw.Container(
                child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.Text('قسم علاج اضطرابات النطق و مشاكل  الكلام',
                          style: const pw.TextStyle(fontSize: 18)),
                      pw.Text('اختبار لفظ الأصوات اللغوية',
                          style: const pw.TextStyle(fontSize: 18)),
                    ])),
            pw.Container(
                child: pw.Column(children: [
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,

                      children: [
                        pw.Text("Name : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text(
                            "................................................................................................................................................ ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text("اسم : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                      ]),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,

                      children: [
                        pw.Text("Date of Birth : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text(
                            "............................................................................................................................",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text("تاريخ الميلاد : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                      ]),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,

                      children: [
                        pw.Text("Date of Test : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text(
                            "............................................................................................................................",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text("تاريخ التطبيق : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                      ]),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text("Diagnosis : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text(
                            "${c.q70}",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                        pw.Text("الشخيص : ",
                            style: const pw.TextStyle(
                              fontSize: 13,
                            )),
                      ]),
                ])),
            pw.SizedBox(height: 15),
            pw.Row(children: [
              pw.Table.fromTextArray(
                  headerDecoration: const pw.BoxDecoration(
                    color: PdfColors.redAccent100,
                  ),
                  cellPadding: const pw.EdgeInsets.symmetric(
                      horizontal: 9, vertical: 0),
                  data: [
                    ["نهاية/ Final", "وسط/ Medial", "بدية/ Initial"],
                    ["كتاب", "لعبة", "بيض"],
                    ["علم", "سمكة", "مفتاح"],
                    ["سيف", "حنفية", "فيل"],
                    ["محراث", "اثنين", "ثعلب"],
                    ["فخد", "مأذنة", "ذئب"],
                    ["حافظ", "نظارة", "ظفر"],
                    ["بنت", "دفتر", "تفاحة"],
                    ["ولد", "كندرة", "ديك"],
                    ["خيط", "مسطرة", "طيارة"],
                    ["بيض", "بيضة", "ضفدع"],
                    ["جرس", "كرسي", "سيارة"],
                    ["باص", "حصان", "صقر"],
                    ["موز", "عنزة", "رز"],
                    ["تلفون", "عنب", "نمل"],
                    ["شعر", "فرشاية", "رأس"],
                    ["جمل", "سلم", "لسان"],
                    ["شاش", "مشط", "شباك"],
                    ["درج", "عجل", "جيبة"],
                    ["شباك", "بسكليت", "كلب"],
                    ["إبريق", "ملعقة", "قلم"],
                    ["بطيخ", "تخت", "خروف"],
                    ["صمغ", "مغسلة", "غسيل"],
                    ["مفتاح", "صحن", "حصان"],
                    ["شارع", "ساعة", "عين"],
                    ["بسه", "نهر", "هلال"],
                    ["قرأ", "سأل", "أرنب"],
                    ["عمرو", "ساندوش", "وردة"],
                    ["يشوى", "ميس", "يد"],
                  ]),
              pw.SizedBox(width: 20),
              pw.Table.fromTextArray(
                headers: ['بدية/ Initial','وسط/ Medial',"نهاية/ Final"],
                  headerDecoration: const pw.BoxDecoration(
                    color: PdfColors.redAccent100,
                  ),
                  cellPadding: const pw.EdgeInsets.symmetric(
                      horizontal: 9, vertical: 0),
                  data:users,
              ),
              pw.SizedBox(width: 20),
              pw.Table.fromTextArray(
                  headerDecoration: const pw.BoxDecoration(
                    color: PdfColors.redAccent100,
                  ),
                  cellPadding: const pw.EdgeInsets.symmetric(
                      horizontal: 9, vertical: 0),
                  data: [
                    ["عربية", "En"],
                    ["ب", "/b/"],
                    ["م", "/m/"],
                    ["ف", "/f/"],
                    ["ث", "/0/"],
                    ["ذ", "/0/"],
                    ["ظ", "/0/"],
                    ["ت", "/t/"],
                    ["د", "/d/"],
                    ["ط", "/t/"],
                    ["ض", "/d./"],
                    ["س", "/s/"],
                    ["ص", "/s/"],
                    ["ز", "/z/"],
                    ["ن", "/n/"],
                    ["ر", "/r/"],
                    ["ل", "/L/"],
                    ["ش", "//"],
                    ["ج", "/d3/"],
                    ["ك", "/k/"],
                    ["ق", "/q/"],
                    ["خ", "/g/"],
                    ["غ", "/x/"],
                    ["ح", "لا"],
                    ["ع", "/h/"],
                    ["هـ", "/؟/"],
                    ["أ", "/h/"],
                    ["و", "/؟/"],
                    ["ي", "/w/"],
                  ]),
            ]),
            pw.Container(
                alignment: const pw.Alignment(-1, -1),
                child: pw.Column(children: [
                  pw.Text("توقيع اخصائي النطق",
                      style: const pw.TextStyle(fontSize: 14)),
                  pw.Text("التوقيع",
                      style: const pw.TextStyle(fontSize: 14)),
                ])),
          ])));
}