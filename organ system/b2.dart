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

class B2 extends StatefulWidget {
  @override
  _B2State createState() => _B2State();
}

class _B2State extends State<B2> {
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
            'Meningitis (Post-Neurosurgery or Penetrating Head Trauma)',
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
          "Meningitis (Post-neurosurgery):\n\nAn inflammation of the brain post-cranial procedures (e.g., craniotomy, stereotactic biopsy or craniotomy or ventriculoperitoneal shunt placement).\nSome of the risk factors associated are:\n• Concomitant incision infection\n• Cerebrospinal fluid leakage duration of surgery\n• Emergency surgery or early re-operation\nOrganisms commonly involved are staphylococci (e.g., staphylococcus aureus) and gram-negative bacilli.\n\nMeningitis (Penetrating head trauma):\n\nA meningeal infection that is causally connected to a cranio-cerebral trauma, regardless of temporal proximity.\nTraumatic brain injury can be caused due to:\n• Falls\n• Collisions \n• Violence\n• Sports injuries\n• Explosive blasts and other combat injuries\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/b2def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nMeningitis (Post-neurosurgery):\n• Nuchal rigidity\n• Fever\n• Headache\n• Vomiting\n\nMeningitis (Penetrating head trauma):\n• Fever\n• Nuchal rigidity\n• Altered mental status\n• Headache\n• Photophobia\n\nIn children, especially in neonates:\n• Lethargic and poor feeding\n• Respiratory distress\n• Hypo/hypertonia\n\nDIAGNOSIS:\n\nMeningitis (Post-neurosurgery) & Meningitis (Penetrating head trauma):\n• Cerebrospinal fluid analysis\n• CT Scan\n• Gram staining and bacterial culture\n• Procalcitonin or CRP test\n• Polymerase chain reaction\n\nDIFFERENTIAL DIAGNOSIS:\n• Aseptic meningitis\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/b2diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Meropenem • Vancomycin ",
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
          "Likely Causative Organisms:\n• Staphylococcus epidermidis\n• Staphylococcus aureus\n• Propionibacterium acnes\n• Pseudomonas aeruginosa\n• Acinetobacter baumanii\n\nEmpirical/First Line:\n• Meropenem 2gm IV 8 hourly\n• Vancomycin 15mg/kg IV 8 hourly\n\n(For 14 days)\n\nComments:\n• May need intra ventricular therapy in severe cases",
      img: '',
      //'assets/b2alt.png',
    ),
  ];
}
