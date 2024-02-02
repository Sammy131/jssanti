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

class H9 extends StatefulWidget {
  @override
  _H9State createState() => _H9State();
}

class _H9State extends State<H9> {
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
            'Orbital cellulitis',
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
          "Infection that occurs in the tissues located behind the orbital septum. This condition can arise from various sources, including external infections (such as wounds), infections spreading from the nasal sinuses or teeth, or the dissemination of infection from other areas of the body.\nThe pathogens involved in orbital cellulitis can vary depending on the underlying cause and the age of the patient. For example:\n• Sinus infection\n• Streptococcus pneumoniae\n• Local trauma\n• Staphylococcus aureus and Streptococcus pyogenes\n\nHaemophilus influenzae type B, which used to be a common cause, is now less frequently seen due to widespread vaccination.\nIn children under the age of 9, orbital cellulitis is typically caused by a single aerobic organism.\nIn older individuals, particularly those over the age of 15, the infection is more likely to be polymicrobial, involving a mixture of aerobic and anaerobic bacteria such as Bacteroides and Peptostreptococcus",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h9def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Swelling and redness (eyelid and surrounding soft tissues)\n• Conjunctival hyperemia and chemosis\n• Limited movement and pain when moving the eye\n• Decreased visual acuity\n• Proptosis caused by orbital swelling\n\nDIAGNOSIS:\n• Physical evaluation\n• Blood culture\n• Imaging (CT or MRI)\n\nDIFFERENTIAL DIAGNOSIS:\n• Adenoviral conjunctivitis\n• Retrobulbar hemorrhage\n• Retinoblastoma\n• Pediatric Mucormycosis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h9diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Cloxacillin • Ceftriaxone \n• Metronidazole • Vancomycin\n• Levofloxacin",
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
          "Likely Causative Organisms:\n• S.pneumoniae\n• H.influenzae\n• M.catarrhalis\n• S.aureus\n• Anaerobes\n• Group A Streptococcus\n• Occasionally Gram Negative bacilli post trauma.\n\nEmpirical/First Line:\n• Cloxacillin 2 gm IV q4h+ Ceftriaxone 2 gm IV q24 hourly+ Metronidazole 1gm IV 12h\n\nAlternative/Second Line:\n• If Pencillin/Cephalosporin allergy: Vancomycin 1gm iv q12h + levofloxacin 750 mg IV once daily + Metronidazole iv 1gm 24h\n\nComments:\n• If MRSA is suspected substitute cloxacillin with Vancomycin",
      img: '',
    ),
  ];
}
