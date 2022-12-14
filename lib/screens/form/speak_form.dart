import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_flutter/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../pdf/pdf_page.dart';
import '../../state_mangment/speak_get.dart';
class SpeakForm extends StatefulWidget {
  const SpeakForm({Key? key}) : super(key: key);

  @override
  State<SpeakForm> createState() => _SpeakFormState();
}

class _SpeakFormState extends State<SpeakForm> {
  final List<Item> pageOne = generateItemOne();
  final List<Item> pageTwo = generateItemTwo();
  final List<Item> pageThree = generateItemThree();
  static TextEditingController q1=TextEditingController();
  static TextEditingController q2=TextEditingController();
  static TextEditingController q3=TextEditingController();
  static TextEditingController q4=TextEditingController();
  static TextEditingController q5=TextEditingController();
  static TextEditingController q6=TextEditingController();
  static TextEditingController q7=TextEditingController();
  static TextEditingController q8=TextEditingController();
  static TextEditingController q9=TextEditingController();
  static TextEditingController q10=TextEditingController();
  static TextEditingController q11=TextEditingController();
  static TextEditingController q12=TextEditingController();
  static TextEditingController q13=TextEditingController();
  static TextEditingController q14=TextEditingController();
  static TextEditingController q15=TextEditingController();
  static TextEditingController q16=TextEditingController();
  static TextEditingController q17=TextEditingController();
  static TextEditingController q18=TextEditingController();
  static TextEditingController q19=TextEditingController();
  static TextEditingController q20=TextEditingController();
  static TextEditingController q21=TextEditingController();
  static TextEditingController q22=TextEditingController();
  static TextEditingController q23=TextEditingController();
  static TextEditingController q24=TextEditingController();
  static TextEditingController q25=TextEditingController();
  static TextEditingController q26=TextEditingController();
  static TextEditingController q27=TextEditingController();
  static TextEditingController q28=TextEditingController();
  static TextEditingController q29=TextEditingController();
  static TextEditingController q30=TextEditingController();
  static TextEditingController q31=TextEditingController();
  static TextEditingController q32=TextEditingController();
  static TextEditingController q33=TextEditingController();
  static TextEditingController q34=TextEditingController();
  static TextEditingController q35=TextEditingController();
  static TextEditingController q36=TextEditingController();
  static TextEditingController q37=TextEditingController();
  static TextEditingController q38=TextEditingController();
  static TextEditingController q39=TextEditingController();
  static TextEditingController q40=TextEditingController();
  static TextEditingController q41=TextEditingController();
  static TextEditingController q42=TextEditingController();
  static TextEditingController q43=TextEditingController();
  static TextEditingController q44=TextEditingController();
  static TextEditingController q45=TextEditingController();
  static TextEditingController q46=TextEditingController();
  static TextEditingController q47=TextEditingController();
  static TextEditingController q48=TextEditingController();
  static TextEditingController q49=TextEditingController();
  static TextEditingController q50=TextEditingController();
  static TextEditingController q51=TextEditingController();
  static TextEditingController q52=TextEditingController();
  static TextEditingController q53=TextEditingController();
  static TextEditingController q54=TextEditingController();
  static TextEditingController q55=TextEditingController();
  static TextEditingController q56=TextEditingController();
  static TextEditingController q57=TextEditingController();
  static TextEditingController q58=TextEditingController();
  static TextEditingController q59=TextEditingController();
  static TextEditingController q60=TextEditingController();
  static TextEditingController q61=TextEditingController();
  static TextEditingController q62=TextEditingController();
  static TextEditingController q63=TextEditingController();
  static TextEditingController q64=TextEditingController();
  static TextEditingController q65=TextEditingController();
  static TextEditingController q66=TextEditingController();
  static TextEditingController q67=TextEditingController();
  static TextEditingController q68=TextEditingController();
  static TextEditingController q69=TextEditingController();
  static TextEditingController q70=TextEditingController();
  static TextEditingController q71=TextEditingController();
  int pageIndex = 0;

  Widget _buildPageOne() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionPanelList(
          dividerColor: Colors.black87,
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              pageOne[index].isExpanded = !isExpanded;
            });
          },
          children: pageOne.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(item.headerValue!);
              },
              body: item.expandedValue!,
              isExpanded: item.isExpanded!,
            );
          }).toList()),
    );
  }

  Widget _buildPageTwo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionPanelList(
          dividerColor: Colors.black87,
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              pageTwo[index].isExpanded = !isExpanded;
            });
          },
          children: pageTwo.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(item.headerValue!);
              },
              body: item.expandedValue!,
              isExpanded: item.isExpanded!,
            );
          }).toList()),
    );
  }

  Widget _buildPageThree() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionPanelList(
          dividerColor: Colors.black87,
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              pageThree[index].isExpanded = !isExpanded;
            });
          },
          children: pageThree.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(item.headerValue!);
              },
              body: item.expandedValue!,
              isExpanded: item.isExpanded!,
            );
          }).toList()),
    );
  }

  late List<User> users;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    PageController _pageViewController = PageController(initialPage: 0);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageViewController,
          onPageChanged: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          children: [
            Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/signup.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.16,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 55,
                        backgroundImage: AssetImage('img/profile1.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: _buildPageOne()
                        // _buildListPanel(),
                        ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/signup.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.16,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 55,
                        backgroundImage: AssetImage('img/profile1.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: _buildPageTwo()
                        // _buildListPanel(),
                        ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/signup.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.16,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 55,
                        backgroundImage: AssetImage('img/profile1.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: _buildPageThree()
                        // _buildListPanel(),
                        ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/signup.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.16,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 55,
                        backgroundImage: AssetImage('img/profile1.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: textFromContainer(
                      controller: q71,
                        question: "??????????????",
                        icon: Icons.file_open_outlined),
                  ),
                ),
                Expanded(child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: buildDataTable()))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          pageIndex > 0
              ? GestureDetector(
                  onTap: () {
                    print(pageIndex);
                    _pageViewController.previousPage(
                        duration: Duration(microseconds: 1000),
                        curve: Curves.easeIn);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('img/loginbtn.png'),
                    child: const Center(
                        child: Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                      size: 40,
                    )),
                  ),
                )
              : SizedBox(),
          pageIndex < 3
              ? GestureDetector(
                  onTap: () {
                    print(pageIndex);
                    _pageViewController.nextPage(
                        duration: Duration(microseconds: 1000),
                        curve: Curves.easeIn);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('img/loginbtn.png'),
                    child: const Center(
                        child: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 40,
                    )),
                  ),
                )
              :  GestureDetector(
            onTap: () {
              final c=Get.find<SpeakGet>();
              print(pageIndex);
              c.insertData(
                  q1:q1.text,
                  q2:q2.text,
                  q3:q3.text,
                  q4:q4.text,
                  q5:q5.text,
                  q6:q6.text,
                  q7:q7.text,
                  q8:q8.text,
                  q9:q9.text,
                  q10:q10.text,
                  q11:q11.text,
                  q12:q12.text,
                  q13:q13.text,
                  q14:q14.text,
                  q15:q15.text,
                  q16:q16.text,
                  q17:q17.text,
                  q18:q18.text,
                  q19:q19.text,
                  q20:q20.text,
                  q21:q21.text,
                  q22:q22.text,
                  q23:q23.text,
                  q24:q24.text,
                  q25:q25.text,
                  q26:q26.text,
                  q27:q27.text,
                  q28:q28.text,
                  q29:q29.text,
                  q30:q30.text,
                  q31:q31.text,
                  q32:q32.text,
                  q33:q33.text,
                  q34:q34.text,
                  q35:q35.text,
                  q36:q36.text,
                  q37:q37.text,
                  q38:q38.text,
                  q39:q39.text,
                  q40:q40.text,
                  q41:q41.text,
                  q42:q42.text,
                  q43:q43.text,
                  q44:q44.text,
                  q45:q45.text,
                  q46:q46.text,
                  q47:q47.text,
                  q48:q48.text,
                  q49:q49.text,
                  q50:q50.text,
                  q51:q51.text,
                  q52:q52.text,
                  q53:q53.text,
                  q54:q54.text,
                  q55:q55.text,
                  q56:q56.text,
                  q57:q57.text,
                  q58:q58.text,
                  q59:q59.text,
                  q60:q60.text,
                  q61:q61.text,
                  q62:q62.text,
                  q63:q63.text,
                  q64:q64.text,
                  q65:q65.text,
                  q66:q66.text,
                  q67:q67.text,
                  q68:q68.text,
                  q69:q69.text,
                  q70:q70.text,
                  q71:q71.text,
              );
              Get.to(()=>pdf_page());
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('img/loginbtn.png'),
              child: const Center(
                  child: Icon(
                    Icons.picture_as_pdf_outlined,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
          )
          // GestureDetector(
          //         onTap: ()=>Get.to(()=>pdf_page(),
          //         child: CircleAvatar(
          //           radius: 25,
          //           backgroundImage: AssetImage('img/loginbtn.png'),
          //           child: const Center(
          //               child: Icon(
          //             Icons.picture_as_pdf_outlined,
          //             color: Colors.white,
          //             size: 40,
          //           )),
          //         ),
          //       ),
          // ),
        ],
      ),
    );
  }

  Widget buildDataTable() {
    final columns = ['????????/ Initial','??????/ Medial',"??????????/ Final"];
    return DataTable(
        // border: TableBorder.all(),
        columns: getColums(columns), rows: getRow(users));
  }

  List<DataColumn> getColums(List<String> columns) {
    return columns.map((String column) {
      return DataColumn(label: Text(column));
    }).toList();
  }
  List<DataRow>getRow(List<User>users)=>users.map((User user){
    final cells=[user.initial,user.medial,user.finalaa];
    return DataRow(cells: Utils.modelBuilder(cells, (index, cell) {
      Color color=Colors.black;
      return DataCell(GestureDetector(

          child: Text('$cell',style: TextStyle(color: color),)),
        onTap: (){
          print(cells[1]);
          // print(user.initial);
        switch(index){
          case 0:editInitial(user);break;
          case 1:editMedial(user);break;
          case 2:editFinalaa(user);break;
        }
        }
      );
    }));
  }).toList();
  Future editInitial(User editUser) async {
    var c = Get.put(SpeakGet());
    final initial = await showTextDialog(
      context,
      title: 'Change First Name',
      value: editUser.initial,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(initial: initial) : user;
    }).toList());
    List<List<String>> d=users.map((e)=>[e.initial.toString(), e.medial.toString(), e.finalaa.toString()]).toList();
    c.insertListItem(listItem: d);
  }
  Future editMedial(User editUser) async {
    var c = Get.put(SpeakGet());

    final medial = await showTextDialog(
      context,
      title: 'Change Last Name',
      value: editUser.medial,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;
      return isEditedUser ? user.copy(medial: medial) : user;
    }).toList());
    List<List<String>> d=users.map((e)=>[e.initial.toString(), e.medial.toString(), e.finalaa.toString()]).toList();
    c.insertListItem(listItem: d);
  }
  Future editFinalaa(User editUser) async {
    var c = Get.put(SpeakGet());

    final finalaa = await showTextDialog(
      context,
      title: 'Change Last Name',
      value: editUser.finalaa,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;
      return isEditedUser ? user.copy(finalaa: finalaa) : user;
    }).toList());
    List<List<String>> d=users.map((e)=>[e.initial.toString(), e.medial.toString(), e.finalaa.toString()]).toList();
    c.insertListItem(listItem: d);
  }


}
List<Item> generateItemOne() {
  return <Item>[
    Item(
      headerValue: "???????????? ????????????",
      expandedValue: Column(
        children:  [
          SizedBox(
            height: 10,
          ),
          textFromContainer(
              question: '?????? ????????????', icon: Icons.person_outline_outlined,controller: _SpeakFormState.q1),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????????? ??????????????', icon: Icons.calendar_month_outlined,controller: _SpeakFormState.q2,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '??????????????', icon: Icons.place_outlined,controller: _SpeakFormState.q3),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '?????? ????????????', icon: Icons.phone,controller: _SpeakFormState.q4),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '?????? ????????????', icon: Icons.perm_identity_outlined,controller: _SpeakFormState.q5),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '??????????', icon: Icons.female_outlined,controller: _SpeakFormState.q6,),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????????????? ?? ??????????????",
      expandedValue: Column(
        children: [
          textFromContainer(
              question: '???????? ?????????????? ?????? ???????????? ??',
              icon: Icons.report_problem_outlined,controller: _SpeakFormState.q7),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????? ?????????? ???????????? ???? ?????? ???????????? ?????? ????????????',
              icon: Icons.drive_eta_outlined,controller: _SpeakFormState.q8),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????? ?????????? ?????????? ?????? ?????? ?????? ???????? ???? ????????',
            icon: Icons.baby_changing_station_outlined,controller: _SpeakFormState.q9,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????? ?????????????? ???????????? ?????????????? ???? ???????????? ????????????????',
              icon: Icons.accessible,controller: _SpeakFormState.q10),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "???????? ??????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ?????? ?????? ?????? ?????????? ???? ???????? ????????????????',
              icon: Icons.mood_bad,controller: _SpeakFormState.q11),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ?????? ?????? ?????????? ?????? ????????????????',
              icon: Icons.monitor_weight_outlined,controller: _SpeakFormState.q12),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????????? ????????????',
            icon: Icons.calendar_today_outlined,controller: _SpeakFormState.q13,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ?????????????? ?????? ???????? ?? ??????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q14,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ???????? ???????? ???? ??????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q15,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????????????? ???? ???????????? ?? ????????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????????? ???? ???????????? ??????????????????',
            icon: Icons.accessible,controller: _SpeakFormState.q16,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????? ?????? ???????? ?????????? ??????????',
            icon: Icons.calendar_month_outlined,controller: _SpeakFormState.q17,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????????? ?????????? ????????????',
            icon: Icons.accessibility_new_rounded,controller: _SpeakFormState.q18,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????????? ?????????? ???????????? ????????????????',
              icon: Icons.repeat_on_outlined,controller: _SpeakFormState.q19),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????????????? ???????????? ?? ?????????????????? ??????????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '?????? ???????? ???? ?????? ????????????????', icon: Icons.sync_problem,controller: _SpeakFormState.q20),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????? ???????? ???? ???????? ???????? ???? ?????? ?????????????? ?? ????????????????',
            icon: Icons.social_distance_outlined,controller: _SpeakFormState.q21,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???? ?????? ?????????? ?????? ???????????? ???? ??????????????',
              icon: Icons.local_hospital_outlined,controller: _SpeakFormState.q22),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
  ];

}

List<Item> generateItemTwo() {
  return <Item>[
    Item(
      headerValue: "?????????????? ??????????",
      expandedValue: Column(
        children:  [
          SizedBox(
            height: 10,
          ),
          textFromContainer(
              question: '???????? ?????? ?????????????? ????????/????',
              icon: Icons.connect_without_contact,controller: _SpeakFormState.q23),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question:
            '?????????????? ???????????????? ???????? ?????????????? ???????????? ???????????? ???? ?????? ??????',
            icon: Icons.pan_tool_alt_outlined,controller: _SpeakFormState.q24,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????????? ??????????????????",
      expandedValue: Column(
        children: [
          textFromContainer(
            question: '?????? ???????????????? ???? ???????????? ',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q25,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '?????? ????????', icon: Icons.work,controller: _SpeakFormState.q26,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???????? ??????????', icon: Icons.location_on_outlined,controller: _SpeakFormState.q27,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '???????? ????????', icon: Icons.work,controller: _SpeakFormState.q28,),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????????????? ???????????????? ????????',
            icon: Icons.leaderboard_outlined,controller: _SpeakFormState.q29,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????????????? ???????????????? ????????',
            icon: Icons.leaderboard_outlined,controller: _SpeakFormState.q30,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????????? ?????? ????????????',
            icon: Icons.monetization_on_outlined,controller: _SpeakFormState.q31,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????????????? ???????????? ?? ??????????????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ????????????', icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q32,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '?????? ?????????? ????????????', icon: Icons.numbers,controller: _SpeakFormState.q33,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '?????? ???????????? ???? ????????????', icon: Icons.male,controller: _SpeakFormState.q34,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ???????????? ???? ????????????', icon: Icons.female,controller: _SpeakFormState.q35,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ???????? ???????? ???? ??????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q36,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ?????????? ????????', icon: Icons.face_retouching_natural,controller: _SpeakFormState.q37,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???????? ?????? ????????????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q38,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(question: '???????? ??????????', icon: Icons.female,controller: _SpeakFormState.q39,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????????? ???????????? ???? ????????????', icon: Icons.grading_outlined,controller: _SpeakFormState.q40,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ?????????????? ?????? ????????????????',
            icon: Icons.connect_without_contact,controller: _SpeakFormState.q41,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????????? ???????????????????? ?????? ???????????????? ',
            icon: Icons.sensor_occupied,controller: _SpeakFormState.q42,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????? ???????????? ?????????????????? ???????????? ???????? ????????????',
            icon: Icons.connect_without_contact,controller: _SpeakFormState.q43,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???????? ?????????????? ???????????????? ?????????????????? ?????????????? ?????? ????????????',
            icon: Icons.sports_football,controller: _SpeakFormState.q44,),
          SizedBox(
            height: 15,
          )
        ],
      ),
    ),
    Item(
      headerValue: "?????????? ????????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question:
            '?????? ???????????????? ???? ???????????????? ???? ???????????????????? ???????? ???????? ???? ???????????? ???????? ??????????????',
            icon: Icons.report_problem,controller: _SpeakFormState.q45,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????? ???????????? ???????? ???????? ??????????????', icon: Icons.add,controller: _SpeakFormState.q46),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
  ];
}


List<Item> generateItemThree() {
  return <Item>[
    Item(
      headerValue: "?????????? Face",
      expandedValue: Column(
        children:  [
          SizedBox(
            height: 10,
          ),
          textFromContainer(
            question: '???? ?????????? ????????????  ?????? ???????? ', icon: Icons.face,controller: _SpeakFormState.q47,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ?????????? ?????????? ???? ???????? ???? ???? ??????????', icon: Icons.air,controller: _SpeakFormState.q48),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????? ???? ?????? ????????????????', icon: Icons.accessible,controller:_SpeakFormState. q49,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ???????? ???????????? ???? ????', icon: Icons.mood,controller: _SpeakFormState.q50,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "???????????? Lips",
      expandedValue: Column(
        children: [
          textFromContainer(
            question: '???? ???? ???????????? ???????????? ???? ????', icon: Icons.mood,controller: _SpeakFormState.q51,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????????? ???? ???????? ??????????',
            icon: Icons.report_problem,controller: _SpeakFormState.q52,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????????? ???????? ???????????? ?????? ?????? ???????????? ??????????',
            icon: Icons.baby_changing_station_outlined,controller: _SpeakFormState.q53,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????????? ?????? ???????????? ?????? ?????? ???????????? ??????????',
            icon: Icons.accessible,controller: _SpeakFormState.q54,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????? ???????????? ???? ?????????? ???? ????',
            icon: Icons.accessible,controller: _SpeakFormState.q55,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????? ???????????? ????????????', icon: Icons.accessible,controller: _SpeakFormState.q56,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '?????? ???????????????? ???????? ?????? ???????? ????????????',
            icon: Icons.accessible,controller: _SpeakFormState.q57,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "???????? ?? ??????????????",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ?????? ???????????? ???????? ??????????', icon: Icons.mood_bad,controller: _SpeakFormState.q58,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????? ???????? ???????????? ???? ????????????',
              icon: Icons.monitor_weight_outlined,controller: _SpeakFormState.q59),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ???????????? ???? ???????????? ???????????? ?????????? ???? ?????? ??????????',
            icon: Icons.calendar_today_outlined,controller: _SpeakFormState.q60,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????????? ????????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q61,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????? ???????????? ?????????? ???? ???????? ?????????? ???? ???????? ????????????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q62,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????????????? ?????? ?????? ',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q63,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ?????????????? ?????????? ???? ????',
              icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q64),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ?????????????? ???????????? ?????? ???????????? / ?????????? ???????? / ????????????',
              icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q65),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question:
            '???????? ?????????? ???? ?????? ?????????????? ???? ???? ???????? ?????????? ???? ?????????? ????',
            icon: Icons.family_restroom_outlined,controller: _SpeakFormState.q66,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "?????? ?????????? Palte",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ?????? ?????????? ?????????? ', icon: Icons.accessible,controller: _SpeakFormState.q67,),
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????? ???? ???? ?????? ?????????? ',
              icon: Icons.calendar_month_outlined,controller: _SpeakFormState.q68),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "???????????? Uvula ",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
            question: '???? ???????????? ????????????', icon: Icons.sync_problem,controller: _SpeakFormState.q69,),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
    Item(
      headerValue: "???????????? tongue",
      expandedValue: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          textFromContainer(
              question: '???? ???????????? ??????????', icon: Icons.sync_problem,controller:_SpeakFormState.q70 ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
  ];
}

class User {
  final String initial;
  final String medial;
  final String finalaa;

  User({required this.initial, required this.medial, required this.finalaa});
  User copy({
    String? initial,
    String? medial,
    String? finalaa,
  }){
    return       User(
        initial: initial ?? this.initial,
        medial: medial ?? this.medial,
        finalaa: finalaa ?? this.finalaa);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              initial == other.initial &&
              medial == other.medial &&
              finalaa == other.finalaa;

  @override
  int get hashCode => initial.hashCode ^ medial.hashCode ^ finalaa.hashCode;
}
final allUsers = <User>[
  User(initial: '??????', medial: '????????', finalaa: "????????"),
  User(initial: '??????????', medial: '????????', finalaa: "??????"),
  User(initial: '??????', medial: '??????????', finalaa: "??????"),
  User(initial: '????????', medial: '??????????', finalaa: "??????????"),
  User(initial: '??????', medial: '??????????', finalaa: "??????"),
  User(initial: '??????', medial: '??????????', finalaa: "????????"),
  User(initial: '??????????', medial: '????????', finalaa: "??????"),
  User(initial: '??????', medial: '??????????', finalaa: "??????"),
  User(initial: '??????????', medial: '??????????', finalaa: "??????"),
  User(initial: '????????', medial: '????????', finalaa: "??????"),
  User(initial: '??????????', medial: '????????', finalaa: "??????"),
  User(initial: '??????', medial: '????????', finalaa: "??????"),
  User(initial: '????', medial: '????????', finalaa: "??????"),
  User(initial: '??????', medial: '??????', finalaa: "??????????"),
  User(initial: '??????', medial: '????????????', finalaa: "??????"),
  User(initial: '????????', medial: '??????', finalaa: "??????"),
  User(initial: '????????', medial: '??????', finalaa: "??????"),
  User(initial: '????????', medial: '??????', finalaa: "??????"),
  User(initial: '??????', medial: '????????????', finalaa: "????????"),
  User(initial: '??????', medial: '??????????', finalaa: "??????????"),
  User(initial: '????????', medial: '??????', finalaa: "????????"),
  User(initial: '????????', medial: '??????????', finalaa: "??????"),
  User(initial: '????????', medial: '??????', finalaa: "??????????"),
  User(initial: '??????', medial: '????????', finalaa: "????????"),
  User(initial: '????????', medial: '????????', finalaa: "??????"),
  User(initial: '????????', medial: '??????', finalaa: "??????"),
  User(initial: '????????', medial: '??????????????', finalaa: "????????"),
  User(initial: '????', medial: '??????', finalaa: "????????"),
];


class Item {
  Widget? expandedValue;
  String? headerValue;
  bool? isExpanded;

  Item({this.expandedValue, this.headerValue, this.isExpanded = false});
}



class textFromContainer extends StatelessWidget {
  final String question;
  final IconData icon;
  final TextEditingController controller;
  const textFromContainer({
    Key? key,
    required this.question,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 2,
                offset: const Offset(1, 1),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: question,
            prefixIcon: Icon(
              icon,
              color: Colors.deepOrangeAccent,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.white, width: 1.0)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
Future<T?> showTextDialog<T>(
    BuildContext context, {
      required String title,
      required String value,
    }) =>
    showDialog<T>(
      context: context,
      builder: (context) => TextDialogWidget(
        title: title,
        value: value,
      ),
    );

class TextDialogWidget extends StatefulWidget {
  final String title;
  final String value;

  const TextDialogWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  _TextDialogWidgetState createState() => _TextDialogWidgetState();
}

class _TextDialogWidgetState extends State<TextDialogWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: '${widget.value} : ');
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(widget.title),
    content: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    ),
    actions: [
      ElevatedButton(
        child: Text('Done'),
        onPressed: () => Navigator.of(context).pop(controller.text),
      )
    ],
  );
}
