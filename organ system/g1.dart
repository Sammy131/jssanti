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

class G1 extends StatefulWidget {
  @override
  _G1State createState() => _G1State();
}

class _G1State extends State<G1> {
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
            'Osteomyelitis (Acute & Chronic)',
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
          "Bone infection can manifest as either an acute or chronic condition. It is an inflammatory response affecting the bone and its associated structures, initiated by pyogenic organisms that disseminate via the bloodstream, fractures, or surgical procedures.When a significant number of bacteria is introduced, whether due to trauma, ischemia, or by the foreign objects, the bone becomes vulnerable to infection. Bactria commonly involved in osteomyelitis are Staphylococcus aureus, Pseudomonas aeruginosa and Salmonella species. ",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nAcute:\n• Fever and fatigue\n• Localized warmth and swelling\n• Erythema\n• Tenderness\n\nChronic (Symptoms typically manifest over an extended period, often exceeding two weeks in duration):\n• Intermittent bone pain\n• Tenderness\n• Draining sinuses.\n\nDIAGNOSIS:\n• Erythrocyte sedimentation rate or C-reactive protein\n• Culture of bone, abscess, or both\n• X-rays, MRI, or radio-isotopic bone scanning\n\nDIFFERENTIAL DIAGNOSIS:\n• Gout\n• Arthritis including rheumatoid arthritis\n• Fracture, including pathological and stress fractures.\n• Bursitis\n• Metastatic bone disease",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/g1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ceftriaxone • Cloxacillin \n• Cephalexin • Piperacillin-tazobactam \n• Cefoperazone-sulbactam • Clindamycin\n• Amoxicillin-Clavulanic acid • Gentamicin",
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
          "ADULT\n\nAcute Osteomyelitis\n\nLikely Causative Organisms:\n• S.aureus \n• Streptococcus pyogenes \n• Enterobacteriaceae\n\nEmpirical/First Line:\n• Ceftriaxone 2g IV OD\n\nFollowed by Oral therapy by Cloxacillin 500mg q 8h \n Or\n• Cephalexin 500mg q 6h\n\nAlternative/Second Line:\n• Piperacillin-tazobactam 4.5gm IV q 6h \n Or\n • Cefoperazone sulbactam 3gm IV q 12h \n AND\n• Clindamycin 600-900mg IV TDS\n\nComments:\n• Treat based on culture of blood/synovial fluid/bone biopsy\n• Orthopedic Consultation is essential for surgical debridement\n• Duration: 4-6 weeks\n(From initiation or last major debridement)\n\nChronic Osteomyelitis\n\nLikely Causative Organisms:\nNone\n\nEmpirical/First Line:\nNo empiric therapy\n\nAlternative/Second Line:\nNone\n\nComments:\n• Definitive treatmentguided by bone/synovial biopsy culture. \n• Treat for 6 weeks minimum\n• Investigate for TB,Nocardia, fungi.Extensive surgical debridement.\n• Total duration of treatment depends on the joint and the organism.\n• Choose antibiotic based on sensitivity.\n\nPEDIATRIC\n\n• Amoxicillin-Clavulanic acid + Gentamicin",
      img: '',
    ),
  ];
}
