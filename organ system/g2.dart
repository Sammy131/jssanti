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

class G2 extends StatefulWidget {
  @override
  _G2State createState() => _G2State();
}

class _G2State extends State<G2> {
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
            'Septic arthritis',
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
          "Joint inflammation caused by an infectious source, which can include bacteria, fungi, mycobacteria or viruses. Typically, septic arthritis affects a single joint (monoarticular); however, it is possible for the infection to involve multiple joints (polyarticular), including smaller ones.Infectious organisms can reach the joints by following ways:\n1. Direct penetration, which can occur as a result of trauma or surgery.\n2. Extension from a nearby infection, such as osteomyelitis, a soft-tissue abscess, or an infected wound.\n3. Hematogenous spread from a distant site of infection.\n\nThe majority of acute joint infections are caused by bacteria and can be categorized as either gonococcal or nongonococcal. It is crucial to differentiate between these two types since gonococcal infections tend to be less damaging to the joint compared to nongonococcal infections.Among adults, Staphylococcus aureus is commonly responsible for infectious arthritis. Neisseria gonorrhoeae, on the other hand, has become less frequent as a cause of septic arthritis, accounting for just over 1% of cases. However, it should still be considered as a potential cause in sexually active young adults. Special situations to consider involve Salmonella infections in individuals with sickle cell disease and Pseudomonas infections in cases of trauma or puncture wounds ",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Joint pain\n• Warmth and tenderness\n• Restricted active and passive motion\n• Signs of sepsis in patients with bacteremia\n\nDIAGNOSIS:\n• Complete blood count\n• Erythrocyte sedimentation rate or C-reactive protein\n• Blood culture\n• Arthrocentesis with synovial fluid examination and culture\n• Imaging (X-ray or MRI)\n\nDIFFERENTIAL DIAGNOSIS:\n• Osteoarthritis\n• Inflammatory arthritis\n• Intra-articular injury\n• Tumor",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/g2diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ceftriaxone • Cloxacillin \n• Cephalexin • Piperacillin-tazobactam \n• Cefoperazone-sulbactam • Clindamycin\n• Amoxicillin-Clavulanic acid • Gentamicin\n• Cefotaxime • Vancomycin",
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
          "ADULT\n\nLikely Causative Organisms:\n• S.aureus \n• Streptococcus pyogenes \n• Enterobacteriaceae\n\nEmpirical/First Line:\n• Ceftriaxone 2g IV OD\n\nFollowed by Oral therapy by\n• Cloxacillin 500mg q 8h \n Or\n• Cephalexin 500mg q 6h\n\nAlternative/Second Line:\n\n• Piperacillin-tazobactam 4.5gm IV q 6h\n Or\n• Cefoperazone sulbactam 3gm IV q 12h\n AND\n• Clindamycin 600-900mg IV TDS\n\nComments:\n• Treat based on culture of blood/synovial fluid/bone biopsy\n• Orthopedic Consultation is essential for surgical debridement\n• Duration: 4-6 weeks\n(From initiation or last major debridement)\n\nPEDIATRIC\n\n• 1st line\nInj. Amoxicillin-Clavulanic acid + Gentamicin \n• 2nd line\nInj. Ceftriaxone /cefotaxime +/- Vancomycin\n\n",
    ),
  ];
}
