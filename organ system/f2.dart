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

class F2 extends StatefulWidget {
  @override
  _F2State createState() => _F2State();
}

class _F2State extends State<F2> {
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
            'Acute Pyelonephritis (Uncomplicated & Complicated)',
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
          "Bacterial infection affecting either one or both the kidneys.Gram-negative bacteria, particularly Escherichia coli, is the primary cause of acute pyelonephritis in most of the cases. Additionally, Proteus, Klebsiella, and Enterobacter can also contribute to the occurrence of the condition.Genitourinary system deformities, pregnancy, urolithiasis and prostatomegaly increases the occurrence of pyelonephritis.Individuals with diabetes or a compromised immune system have higher chances of experiencing the condition.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever\n• Pain in the lower part of the back on either side\n• Nausea and vomiting.\n• Dysuria\n• Hematuria\n\nDIAGNOSIS:\n• Urinalysis and complete blood count\n• Urine culture\n• Imaging (if required, CT contrast for patients with a renal transplant, septic shock, or poorly controlled diabetic patients)\n\nDIFFERENTIAL DIAGNOSIS:\n• Nephrolithiasis or urinary tract obstruction\n• Appendicitis\n• Cholecystitis\n• Pancreatitis\n• Pelvic inflammatory disease\n• Ectopic pregnancy",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/f2diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Amikacin • Gentamicin\n• Piperacillin-Tazobactam • Cefoperazone-Sulbactam\n• Ertapenem • Imipenem \n• Meropenem • Cefotaxime\n• Ceftriaxone",
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
          "ADULT\n\nLikely Causative Organisms:\n• E.coli, \n• Staphylococcus saphrophyticus (in sexually active young women) \n• Klebsiella pneumoniae,\n• Proteus mirabilis\n\nEmpirical/First Line:\n• Amikacin 1 g OD IM/IV \n Or\n• Gentamicin 7 mg/kg/day OD\n\n(Monitor renal function closely and rationalise according to culture report)\nComplete total duration of 14 days \n\nAlternative/Second Line:\n• Piperacillin Tazobactam 4.5g IV 6 hourly \n Or\n• Cefoperazone Sulbactam 3g IV 12 hourly \n Or\n• Ertapenem 1 g IV OD\n\nComments:\n• Urine culture and susceptibilities need to be collected before starting antimicrobial treatment to guide treatment.\n\nPEDIATRIC\n\nComplicated / Severe UTI (Febrile UTI, Systemic toxicity, renal angle tenderness or with any urinary structural abnormality) and all UTI in children less than 2 months should be treated with parenteral antibiotics.\n\nTo be given for 10-14 days \n• Inj. Cefotaxime (150-200mg/kg/day 8h\n Or\n• Inj. Ceftriaxone (100mg/kg/day OD \n Or\n• Inj. Amikacin 15mg/kg OD \n\nIn Immunocompromised host/ severe systemic sepsis or as second line for complicated UTI\nTo be given for 10-14 days\n\n• Inj. Piperacillin Tazobactam 90mg/kg/dose IV 6h) \n Or\n• Inj. Meropenem (20-40mg/kg/dose 8h) ",
      img: '',
    ),
  ];
}
