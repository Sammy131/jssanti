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

class A9 extends StatefulWidget {
  @override
  _A9State createState() => _A9State();
}

class _A9State extends State<A9> {
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
            'Spontaneous bacterial peritonitis',
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
          "Infection of the ascites with no obvious source. About 75% of cases are caused by gramnegative aerobic organisms, of which 50% are due to Klebsiella pneumoniae. Remaining cases are caused by Gram-positive aerobic microorganisms. Most commonly due toStreptococcus pneumoniae or Viridans group streptococci.Usually, patients with SBP have chronic liver disease as co-morbidity.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\nApart from having ascites. Patient’s may present with:\n• Fever\n• Malaise\n• Encephalopathy\n• Worsening of underlying hepatic condition or unexplained clinical deterioration\n• Peritoneal signs (e.g., abdominal tenderness and rebound) are present\n\nDIAGNOSIS:\n• Paracentesis\n• Blood and urine cultures (Help in selection of antibiotic therapy)\n• CT Scan (if perforation suspected)\n• Rapid reagent strip\n\nDIFFERENTIAL DIAGNOSIS:\n• Perforated viscus\n• Perinephric abscess\n• Pyelonephritis\n• Diverticulitis\n• Appendicitis\n• Mesenteric ischemia\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a9diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Cefotaxime • Piperacillin-Tazobactam\n• Cefoperazone-Sulbactam • Imipenem \n• Meropenem • Ertapenem \n• Ampicillin\n",
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
          "ADULT\n\nLikely Causative Organisms:\n• Enterobacteriaceae (E.coli, Klebsiella sp.)\n\nEmpirical/First Line:\n• Cefotaxime 1-2 gm IV TDS\n Or\n• Piperacillin-Tazobactam 4.5gm IV 8 hourly\n Or\n• Cefoperazone-Sulbactam 3gm IV 12h\n\nAlternative/Second Line:\n• Imipenem 500 mg IV 6 hourly\n Or\n• Meropenem 1gm IV 8 hourly\n\nComments:\n• Descalate to Ertapenem 1 gm IV OD for 5-7 days once the patient improves\n\nPEDIATRIC\n\nFor primary peritonitis in nephrotic syndrome:\n• Inj. Ampicillin + Aminoglycoside\n Or\n• Inj. Cefotaxime\n\nFor primary peritonitis in a cirrhotic:\n• Inj. Cefotaxime",
      img: '',
      //'assets/a9alt.png',
    ),
  ];
}
