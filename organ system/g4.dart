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

class G4 extends StatefulWidget {
  @override
  _G4State createState() => _G4State();
}

class _G4State extends State<G4> {
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
            'Prosthetic joint infection',
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
          "Infection that affects both the joint prosthesis and the surrounding tissue. The pathogens involved in prosthetic joint infection can be classified into three groups based on the timing of their isolation from culture materials in relation to the duration of the implant.\n\n1. Early infection:\nRefers to the occurrence of infection within the initial four weeks following the primary procedure. This type of infection is commonly attributed to highly virulent organisms such as:\n• Staphylococcus aureus\n• Aerobic gram-negative bacilli\n• Beta-hemolytic Streptococcus\n• Enterococci\n\n2. Delayed infection:\nOccurring between 3 months and 1 year after the procedure, is typically associated with low-virulence organisms such as:\n• Coagulase-negative Staphylococcus\n• Enterococci\n• Propionibacterium acnes\n\nIn some cases, Staphylococcus aureus may also be involved, albeit to a lesser extent.\n\n3. Late infection:\nOccurring beyond one year, is commonly associated with hematogenous spread of infection. The pathogens involved in late prosthetic joint infection often include:\n• Staphylococcus aureus \n• Gram-negative bacilli\n• Coagulase-negative Staphylococcus\n• Enterococci or streptococcus viridans",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/g4def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Early infections: Swelling, redness, and hardened tissue (induration) at the incision site, along with drainage from the wound.\n• Late infections: Joint swelling or persistent pain that gradually worsens over time.\n\nAdditional typical clinical manifestations may include:\n• Wound dehiscence \n• Pus around the prosthesis\n• Joint instability\n• Movement difficulties.\n\nDIAGNOSIS:\n• Physical evaluation\n• Erythrocyte sedimentation rate and C-reactive protein\n• Synovial fluid cell counts and culture\n• Imaging Studies (X-rays, CT or MRI)\n• Technetium bone scans or Positron Emission Tomography (to identify areas of increased metabolic activity and pinpoint sites of infection in the joint)\n\nDIFFERENTIAL DIAGNOSIS:\n• Aseptic loosening of the prosthesis\n• Bone and joint infections due to tuberculosis\n• Osteoarthritis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/g4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Ceftriaxone • Vancomycin\n• Teicoplanin",
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
          "Likely Causative Organisms:\n• Coagulase negative staphylococci \n• Staphylococcus aureus\n• Streptococci\n• Gram-negative bacilli \n• Enterococcus \n• Anaerobes\n\nEmpirical/First Line:\n• Ceftriaxone 2g IV OD.\n• Add Vancomycin1gm IV BD or Teicoplanin 800mg x 3 doses followed by 400mg Once daily\n\nAlternative/Second Line:\nNone\n\nComments:\n• 4 weeks",
      img: '',
    ),
  ];
}
