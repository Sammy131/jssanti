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

class I2 extends StatefulWidget {
  @override
  _I2State createState() => _I2State();
}

class _I2State extends State<I2> {
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
            'Acute otitis media',
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
          "Middle ear infection, either bacterial or viral in nature, commonly occurs concurrently with an upper respiratory infection. While otitis media can manifest at any stage of life, it is particularly prevalent among pediatric patients aged 6 to 24 months.Otitis media is influenced by various factors such as infections, allergies, and environmental factors. Bacterial pathogens account for over 95% of cases. Commonly involved agents include Streptococcus pneumoniae, Haemophilus influenzae, and Moraxella (Branhamella) catarrhalis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Otalgia, often with hearing loss\n\nIn pediatric patients non-specific signs and symptoms can be observed:\n• Pulling or tugging at the ears\n• Irritability\n• Disturbed sleep\n• Poor feeding\n• Vomiting or diarrhea\n\nDIAGNOSIS:\n• Physical evaluation\n• Otoscopic examination\n\nDIFFERENTIAL DIAGNOSIS:\n• Otitis externa\n• Allergic rhinitis, bacterial meningitis or mastoiditis (In pediatric patients)",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/i2diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Amoxicillin+clavulanate • Cefpodoxime\n• Cefuroxime axetil • Ceftriaxone\n• Cefdinir",
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
          "ADULT\n\nLikely Causative Organisms:\n• S. pneumoniae\n• H. influenzae\n• Morexella\n• catarrahalis\n\nEmpirical/First Line:\n• Amoxicillin+clavulanate 90/6.4mg /kg/day bid or cefpodoxim /cefuroxime axetil 250mg BD\n\nAlternative/Second Line:\n• Ceftriaxone 50mg/kg I/M for 3 days\n\nComments:\n• Treat children <2 years If >2 years, afebrile and no ear pain- consider analgesics and defer antibiotics.\n• Duration of treatmentIf age <2 years: 10 daysIf age >2 years : 5-7 days\n\nPEDIATRIC:\n\n• Oral Amoxicillin (45mg/kg/day TDS/50-60mg/kg/day in two divided doses)\n• For severe cases:\nCo-Amoxycillin Clavulanate (45 mg/kg/day po BD) or Inj. Ceftriaxone 75 mg/kg/day OD.\n\n• In case of penicillin allergy:\nCefdinir (14 mg/kg/d in 2 divided doses)\n\n• Total duration of treatment is recommended for 7 to 10 days.",
      img: '',
    ),
  ];
}
