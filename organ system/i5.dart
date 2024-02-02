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

class I5 extends StatefulWidget {
  @override
  _I5State createState() => _I5State();
}

class _I5State extends State<I5> {
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
            'Epiglottitis',
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
          "Progressive bacterial infection that primarily affects the epiglottis and adjacent tissues.Epiglottitis, which was previously more common in children and primarily caused by Haemophilus influenzae type B, has significantly declined in pediatric cases due to widespread vaccination. However, it is now more frequently observed in adults. The causative organisms of epiglottitis in both children and adults include:\n• Streptococcus pneumoniae • Beta hemolytic streptococci\n• Staphylococcus aureus • Branhamella catarrhalis\n• Non-typeable H. influenzae • Klebsiella pneumoniae\n• Haemophilus parainfluenza\n\nH. influenzae type B remains a cause in unvaccinated children and adults.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/i5def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nCHILDREN:\n• Sore throat\n• Odynophagia\n• Dysphagia\n• Asphyxia (may occur within a few hours of onset) which can be fatal\n• Drooling\n• Signs of toxicity: Eye contact (Poor or absent), Cyanosis or Irritability\n• Febrile and anxious\n• Dyspnea, tachypnea, and inspiratory stridor may be present and tripod position can be observed\n• Suprasternal, supraclavicular, and subcostal inspiratory retractions may be present\n\nADULTS:\n\n• Sore throat\n• Fever\n• Dysphagia\n• Drooling\n\nDIAGNOSIS:\n• Physical evaluation\n• X-ray (lateral neck)\n• Direct inspection (only in operation room)\n\nDIFFERENTIAL DIAGNOSIS:\n• Croup (Laryngotracheobronchitis) \n• Foreign body obstruction\n• Peritonsillar and retropharyngeal abscesses",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/i5diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Cefotaxime • Ceftriaxone \n• Levofloxacin • Clindamycin",
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
          "Likely Causative Organisms:\n\nChildren:\n• H.influenzae\n• S.pyogenes\n• S.pneumoniae\n• S.aureus\n\nAdult:\n• Group A Streptococcus\n• H.influenzae\n\nEmpirical/First Line:\n• Cefotaxime 50 mg/kg IV 8 hourly or ceftriaxone 50 mg/kg IV 24 hourly\n\nAlternative/Second Line:\n• Levofloxacin 10 mg/kg IV 24 hourly + clindamycin 7.5 mg/kg IV 6 hourly\n\nComments:\nNone",
      img: '',
    ),
  ];
}
