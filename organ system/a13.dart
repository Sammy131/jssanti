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

class A13 extends StatefulWidget {
  @override
  _A13State createState() => _A13State();
}

class _A13State extends State<A13> {
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
            'Diverticulitis',
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
          "Inflammation or infection of one or more diverticulum can be seen in an 10% to 25% of diverticulosis patients. Diverticulitis is common among people who are above 40 years of age and severe diverticulitis can be seen in elderly people especially who are under steroids therapy or other immunosuppressants. Some of the causes include:\n• Low fiber, high fat, and red meat diets\n• Obesity and smoking\n• Medications (e.g., NSAIDs, steroids)",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Lower abdomen pain and tenderness\n• Fever\n• Nausea and vomiting\n• Change in bowel habits\n• Peritoneal signs (e.g., rigidity, guarding)\n\nDIAGNOSIS:\n• C-reactive protein and ESR\n• Abdomen and Pelvis CT\n• MRI (Alternative during pregnancy and in younger patients)\n\nDIFFERENTIAL DIAGNOSIS:\n• Cholangitis or Cholecystitis\n• Chronic mesenteric ischemia\n• Constipation\n• Enterovesical fistula\n• Inflammatory bowel disease\n• Intestinal perforation\n• Irritable bowel syndrome (IBS)\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/a13diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Amoxycillin-Clavulanate • Ceftriaxone\n• Metronidazole • Piperacillin-Tazobactam \n• Cefoperazone-Sulbactam • Meropenem \n• Imipenem Cilastatin ",
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
          "Likely Causative Organisms:\n• Gram-Negative Bacteria Anaerobes\n\nSeverity\nMild\n\nEmpirical/First Line:\n• Amoxycillin-Clavulanate 625mg TDS for 7 days\n\nAlternative/Second Line:\n• Ciprofloxacin + Metronidazole for 7 days\n\nComments:\nNone\n\nSeverity\nModerate\n\n• Ceftriaxone 2gm IV OD +metronidazole 500 mg IV TDS or Piperacillin-Tazobactam 4.5 gm IV 8 hourly empirically\n Or\n• Cefoperazoe-Sulbactam 3gm IV 8 hourly\n\nComments:\n• BL-BLI agents have very good anaerobic cover, so no need to add metronidazole.\n\nSeverity\nSevere\n\nEmpirical/First Line:\n• Meropenem 1gm IV 8hrly or Imipenem Cilastatin 500mg IV 6 hourly\n\nComments:\n• Duration based on improvement\n",
      img: '',
      //'assets/a13alt.png',
    ),
  ];
}
