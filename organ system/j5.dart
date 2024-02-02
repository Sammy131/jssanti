import 'package:flutter/material.dart';

class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;
  Color colorsbody;
  Color panelcol;
  String img;
  //int fees;
  // ignore: non_constant_identifier_names
  Color Bgcolor;

  ItemModel({
    this.expanded = false,
    required this.headerItem,
    required this.discription,
    required this.colorsItem,
    required this.colorsbody,
    required this.panelcol,
    this.img = '',
    //required this.fees,
    // ignore: non_constant_identifier_names
    required this.Bgcolor,
  });
}

class J5 extends StatefulWidget {
  @override
  _J5State createState() => _J5State();
}

class _J5State extends State<J5> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  //late ScrollController _scrollController2 = ScrollController();
  //int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          /*bottom: TabBar(tabs: [
              Tab(
                text: 'Other Infectious Conditions',
              ),
            ]),*/
          //backgroundColor: Color.fromARGB(255, 214, 84, 67),
          backgroundColor: Color.fromARGB(255, 241, 71, 9),
          centerTitle: true,
          title: Text(
            ' Endomyometritis',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: itemData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ExpansionPanelList(
                  animationDuration: Duration(milliseconds: 500),
                  dividerColor: Colors.red,
                  expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
                  key: Key(index.toString()),
                  elevation: 1,
                  children: [
                    //PANEL
                    ExpansionPanel(
                      backgroundColor: itemData[index].panelcol,
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        //itemData[index].expanded = selected;
                        isExpanded = itemData[index].expanded;
                        //expanded[index]==selected,
                        return Container(
                          color: itemData[index].Bgcolor,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            itemData[index].headerItem,
                            style: TextStyle(
                                color: itemData[index].colorsItem,
                                //backgroundColor: itemData[index].Bgcolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      body: Container(
                        color: itemData[index].Bgcolor,
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: Scrollbar(
                          thumbVisibility: true,
                          scrollbarOrientation: ScrollbarOrientation.top,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              itemData[index].img != ''
                                  ? Container(
                                      //height: 87,
                                      //width: 87,
                                      //padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        itemData[index].img,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : const SizedBox(height: 2),
                              Text(
                                itemData[index].discription,
                                style: TextStyle(
                                  color: itemData[index].colorsbody,
                                  fontSize: 18,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      isExpanded: itemData[index].expanded,
                    )
                  ],
                  expansionCallback: (int item, bool status) {
                    setState(() {
                      itemData[index].expanded = !itemData[index].expanded;
                    });
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Definition & Etiology',
      discription:
          "Postpartum endometritis, or more accurately endomyometritis, is a frequent and potentially life-threatening complication following childbirth, characterized by pelvic infection in women. The severity of the condition is categorized based on the extent of the infection. Endometritis refers to inflammation of the endometrium, which is a common occurrence after delivery. Endomyometritis indicates a clinically significant infection involving both the endometrium and the myometrium. In more severe cases, the infection can extend to the parametrium, leading to a condition known as endomyoparametritis.\nOrganisms isolated in endomyometritis include:\n\nGram negative:\n• Escherichia coli \n• Klebsiella sp.\n• Enterobacter sp. \n• Proteus sp. \n\nGram positive \n• Enterococci\n• Other streptococci \n• Staphylococci\n• Anaerobic peptococci\n\nAnaerobes:\n• Bacteroides\n• Clostridium sp.\n• Veilonella sp.\n• Fusobacterium sp.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/j5def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever and chills\n• Headache, malaise, and anorexia\n• Lower abdominal pain and uterine tenderness\n• Foul-smelling lochia\n• Tachycardia, and leukocytosis\n\nDIAGNOSIS:\n• Physical evaluation\n• Complete blood count\n• Urinalysis\n• Cultures (endometrial, urine and blood)\n\nDIFFERENTIAL DIAGNOSIS:\n• Urinary tract infections (including pyelonephritis)\n• Septic pelvic thrombophlebitis.\n• Surgical site infections",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: const Color.fromRGBO(0, 0, 0, 1),
      img: '',
      //'assets/j5diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ampicillin • Metronidazole \n• Ceftriaxone • Piperacillin-Tazobactam\n• Cefoperazone-sulbactam",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Preferred and Alternative Treatment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Likely Causative Organisms:\n• Bacteroides\n• Prevotella bivius\n• Group B\n• Group A Streptococcus\n• Enterobacteriaceae\n• C. trachomatis\n• Clostridium perfringens\n\nEmpirical/First Line:\nNone\n\nAlternative/Second Line:\nAmpicillin 500 mg QID + Metronidazole 500mg IV TDS\n\n• If patient has not taken any prior antibiotic (start antibiotic after sending cultures).\n• If patient has been partially treated with antibiotics, send blood cultures and start\n\nPiperacillin-Tazobactam or Cefoperazone-sulbactam\n• Till the sensitivity report is available\n\nAlternative antibiotic\n• Ceftriaxone 2g IV OD\n\nComments:\nNone",
      img: '',
    ),
  ];
}
