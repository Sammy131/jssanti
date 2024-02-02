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

class A14 extends StatefulWidget {
  @override
  _A14State createState() => _A14State();
}

class _A14State extends State<A14> {
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
            'Liver Abscess',
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
          "A pus-filled mass developed due to hepatic injury or an intra-abdominal infection that has spread from the portal circulation.\nThe general pattern of an abscess formation is via a leak from the bowel into the abdomen that enters the liver via the portal vein. In many cases, infected biliary tract leads to liver abscess.\nMost of the abscesses are categorized into either pyogenic or amoebic. However, parasites and fungi cause observed in some of the cases.\n• Amoebic origin - Entamoeba histolytica.\n • Pyogenic abscesses – Polymicrobial, Commonly - E.coli, Klebsiella, Streptococcus, Staphylococcus, and anaerobes.\n\nCauses of liver abscess include:\n• Biliary tract disease (e.g., biliary stone, strictures, malignancy, and congenital anomalies)\n• Diverticulitis\n• Penetrating trauma\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a14def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever\n• Right shoulder pain (due to phrenic nerve irritation)\n• Right upper quadrant pain\n• Cough\n• Dyspnea\n• Night sweats\n• Malaise\n• Nausea or vomiting\n• Unexplained weight loss\n• Hepatomegaly and jaundice\n\nDIAGNOSIS:\n• Complete blood count\n• Blood cultures (To rule out bacteremia)\n• Liver function tests \n• C-reactive protein\n• Abdominal USG and CT\n\nDIFFERENTIAL DIAGNOSIS:\n• Hepatitis (Viral)\n• Cholecystitis or Cholangitis\n• Right lower lobe pneumonia\n• Appendicitis\n• Necrotic liver masses\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a14diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Amoxycillin-clavulanate\n• Metronidazole",
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
          "ADULT\n\nLikely Causative Organisms:\n• Polymicrobial\n\nEmpirical/First Line:\n• Amoxycillin-clavulanate/ 3rd generation cephalosporin\n +\n• Metronidazole 500mg I.V.TID / 800mg oral TID for 2 weeks\n\nAlternative/Second Line:\n• Piperacillin-Tazobactam IV\n\nComments:\n• Ultrasound guided drainage indicated inlarge abscesses, signsof imminent rupture and no response to medicaltreatment.\n\nPEDIATRIC\n\nEmpirical/First Line:\n• Amoxycillin-clavulanate/ 3rd generation cephalosporin +/- Aminoglycoside\n• Metronidazole (30-50 mg/kg/d in 3 divided doses for 10-14 days) is added if Amoebic abcess suspected\n\nAlternative/Second Line:\n• Piperacillin-Tazobactam IV\n\nComments:\n• Ultrasound guided drainage indicated in large abscesses signs of imminent rupture and no response to medical treatment\n\nTotal duration of therapy is 4-6 weeks",
      img: '',
      //'assets/a14alt.png',
    ),
  ];
}
