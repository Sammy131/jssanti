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

class A4 extends StatefulWidget {
  @override
  _A4State createState() => _A4State();
}

class _A4State extends State<A4> {
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
            'Amoebic Dysentery',
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
          "It is a common parasitic gastrointestinal infection. Although four species of Entamoeba cannot be distinguished morphologically, molecular methods reveal that they belong to different species.\n• E. histolytica (pathogenic)\n• E. dispar (harmless, common)\n• E. moshkovskii (uncertain pathogenicity, less common)\n• E. bangladeshi (uncertain pathogenicity, less common)\nThese pathogens are spread through the oral-fecal route. Infected cysts are frequently discovered in contaminated food and water. Sexual transmission has been reported rarely.Although most amebiasis cases are asymptomatic, a wide range of diseases are frequently present in E. histolytica patients. The incubation period lasts for 2 to 4 weeks",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Infrequent diarrhea and constipation\n• Flatulence\n• Abdominal pain\n• Liver or ascending colon tenderness\n• Fever\• Mucus and blood may be present in feces\n\nDIAGNOSIS:\n\nIntestinal infection: \n• Microscopic examination\n• Enzyme immunoassay of stool\n• Molecular tests for parasite DNA in stool\n• Serologic testing\n\nExtraintestinal infection:\n• Imaging\n• Serologic testing \n\nAmebiasis affect the heart, brain, kidneys, spleen, and skin rarely. Patient may develop pericarditis, brain abscess, toxic megacolon, peritonitis and proctocolitis.\n\nDIFFERENTIAL DIAGNOSIS:\n• Colitis caused by E. coli, Yersinia, or Campylobacter\n• Perforated bowel\n• Diverticulitis\n• Hepatitis A\n• Cholecystitis\n• Shigellosis/salmonellosis\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Metronidazole • Tinidazole",
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
          "Likely Causative Organisms:\n• E. histolytica\n\nEmpirical/First Line:\n• Metronidazole 400mg Oral TDS for 7-10 days\n\nAlternative/Second Line:\n• Tinidazole 2gm Oral OD for 3 days\n\nComments:\n• Add diloxanide furoate 500 mg TDS for 10d\n",
      img: '',
      //'assets/a4alt.png',
    ),
  ];
}
