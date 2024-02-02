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

class J7 extends StatefulWidget {
  @override
  _J7State createState() => _J7State();
}

class _J7State extends State<J7> {
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
            'Obstetric Sepsis',
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
          "A critical medical condition characterized by organ dysfunction resulting from an infection occurring during pregnancy, postpartum period or following an abortion. Apart from uterine-related sources, pregnant women are susceptible to infections in common sites similar to those observed in non-pregnant adults with sepsis, including the urinary tract, respiratory tract, and abdomen.\nOrganisms commonly involved in obstetric sepsis include:\n• Group A beta-haemolytic Streptococcus\n• E. coli C\n• Septicum\n• S. pyogenes \n• S. aureus \n• S. pneumoniae\n• Morganella morganii • Methicillin-resistant S. aureus (MRSA)",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/j7def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever or hypothermia \n• Hypotension\n• Tachycardia\n• Tachypnea\n• Altered mental status\n• Oliguria\n• Edema\n\nDIAGNOSIS:\n• Physical evaluation\n• Complete blood counts\n• Blood culture\n• Imaging (Ultrasound or CT scan, as required)",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: const Color.fromRGBO(0, 0, 0, 1),
      img: '',
      //'assets/j7diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Cefoperazone-sulbactam\n• Amoxicillin clavulanate • Ceftriaxone \n• Metronidazole • Gentamicin\n• Vancomycin • Teicoplanin",
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
          "Likely Causative Organisms:\n• Group A beta-haemolytic Streptococcus\n• E.coli\n• S. pyogenes\n• S. aureus\n• S. pneumoniae\n• Methicillin-resistant S. aureus (MRSA)\n• C. septicum\n• Morganella morganii.\n\nEmpirical/First Line:\nIf patient is in shock and blood culture reports are pending, then start:\n\n• Piperacillin-Tazobactam \n Or\n• Cefoperazone-sulbactam \n(till the sensitivity report is available and modify as per the report)\n\nIf patient has only fever, with no features of severe sepsis start:\n\n• Amoxicillin clavulanate oral 625TDS/IV 1.2 gm TDS \n Or\n• Ceftriaxone 2gm IV OD+ Metronidazole 500mg IV TDS +/-gentamicin 7mg/kg/day OD\n(if admission needed)\n• MRSA cover may be required if suspected or colonized (Vancomycin/ Teicoplanin)\n\nAlternative antibiotics/Second Line\nNone\n\nComments:\nNone",
      img: '',
    ),
  ];
}
