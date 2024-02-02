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

class A3 extends StatefulWidget {
  @override
  _A3State createState() => _A3State();
}

class _A3State extends State<A3> {
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
            'Bacterial Dysentery',
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
          "An acute intestinal infection caused by the gram-negative Shigella species. The worldwide distribution of the genus Shigella makes it the usual source of inflammatory dysentery, accounting for 5–10% of diarrheal disease in many regions. \nThere are four main subgroups of Shigella:\n• S. dysenteriae \n• S. boydii\n• S. flexneri \n• S. sonnei \nHumans are the only known natural reservoir for Shigella, and the infection is spread through contact with the feces of infected or convalescent carriers. Flies serve as the vectors.Fecal-oral contact is the route of direct spread and indirect spread is caused by contaminated food. Incubation period is 1 to 4 days.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTONS AND SIGNS:\n\nIN ADULT:\n• Severe abdominal pain\n• Tenesmus\n• Rarely, rice-water or serous (occasionally bloody) stools, vomiting and dehydration. Also, may experience delirium, seizures, and coma.\n\nIN CHILDREN:\n• Fever\n• Irritability or drowsiness\n• Anorexia\n• Nausea or vomiting\n• Diarrhea\n• Abdominal pain, distention, and tenesmus.\n• Blood, pus, and mucus may appear in the stools in 3 days.\n\nDIAGNOSIS:\n• Stool culture\n• Polymerase Chain Reaction (PCR)\n\nDIFFERENTIAL DIAGNOSIS:\n• Viral or protozoan infections\n• Inflammatory bowel disease, irritable bowel disease, malabsorption and lactose intolerance.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a3diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Ceftriaxone • Cefixime\n• Azithromycin\n",
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
          "ADULT\n\nLikely Causative Organisms:\n• Shigella sp\n• Campylobacter\n• Non- typhoidal\n• Salmonellosis\n• Shiga toxin\n\nEmpirical/First Line:\n• Ceftriaxone 2gm IV\n• OD for 5 days or oral Cefixime 10-15mg/kg/day x 5 days\n• Antibiotic Treatment\n\nAlternative/Second Line:\n• Azithromycin 1g OD x 3 days\n\nComments:\n• For Campylobacter the drug of choice is azithromycin.\n• Antibiotic\n\nPEDIATRIC\n\nFOR INPATIENTS:\n• Inj. Ceftriaxone (100mg/kg) for 5-7 days.\n\nFOR OPD CASES:\n• Cefixime (8mg/kg/day BD)\n  Or\n• Azithromycin 10-20 mg/ kg (ceiling dose of 1 gm) for 5 days.\n\n* Non-responsive cases after 2 antibiotics, investigate for appropriate therapy.\n* Fluoroquinolones are not preferred due to high level of resistance",
      img: '',
      //'assets/a3alt.png',
    ),
  ];
}
