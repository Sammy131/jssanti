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

class I4 extends StatefulWidget {
  @override
  _I4State createState() => _I4State();
}

class _I4State extends State<I4> {
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
            'Pharyngitis & Tonsillitis',
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
          "Pharyngitis:\n\nInflammation of the mucous membranes of the oropharynx. It is primarily caused by an infection, typically either bacterial or viral in nature. However, there are also fewer common factors that can contribute to pharyngitis, such as allergies, physical injury, certain types of cancer, acid reflux, and exposure to specific toxins.\nApproximately 50% to 80% of cases of pharyngitis are caused by viral infections. Such as:\n\nCommon:\n• Rhinovirus\n• Influenza and parainfluenza virus\n• Adenovirus\n• Coronavirus\n\nRare:\n• Herpes virus\n• Epstein-Barr virus\n• Human immunodeficiency virus (HIV)\n• Coxsackievirus\n\nThe leading bacterial cause of acute pharyngitis is Group A beta-hemolytic streptococci,responsible for approximately 5% to 36% of cases. Other bacterial agents contributing to pharyngitis include:\n\nCommon:\n• Group B and C streptococci \n• Chlamydia pneumoniae \n• Mycoplasma pneumoniae\n• Haemophilus influenzae\n• Candida \n\nRare:\n• Neisseria meningitidis\n• Neisseria gonorrhoeae\n• Arcanobacterium haemolyticum\n• Fusobacterium necrophorum\n• Corynebacterium diphtheriae\n\nTonsillitis:\n\nInflammation of the tonsils as a result of viral or bacterial infection. In most of the cases origin of infection is viral.\n\nCommon:\n• Rhinovirus\n• Respiratory syncytial virus\n• Adenovirus\n• Coronavirus\n\nRare:\n• Cytomegalovirus\n• Epstein-Barr virus\n• Human immunodeficiency virus (HIV)\n• Rubella\n\nBacterial infections are usually due to group A beta-hemolytic Streptococcus. But following pathogens also have been cultured.\n\nCommon:\n• Staphylococcus aureus\n• Streptococcus pneumoniae\n\nRare:\n• Haemophilus influenza",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/i4def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "Pharyngitis:\n\nSYMPTOMS AND SIGNS:\n• Fever\n• Tonsillar exudates\n• Painful cervical adenopathy\n• Pharyngeal erythema\n• Ear pain\n\nDIAGNOSIS:\n• Blood counts\n• Rapid antigen detection test\n• Throat culture\n\nDIFFERENTIAL DIAGNOSIS:\n• Allergic rhinitis\n• Peritonsillar abscess\n• Epiglottitis\n\nTonsillitis:\n\nSYMPTOMS AND SIGNS:\n• Fever\n• Tonsillar exudates\n• Sore throat\n• Tender anterior cervical chain lymphadenopathy\n\nDIAGNOSIS:\n• Physical evaluation• Rapid antigen detection test\n• Throat culture\n\nDIFFERENTIAL DIAGNOSIS:• Pharyngitis\n• Epiglottitis\n• Retropharyngeal abscess\n• Ludwig angina",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/i4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Penicillin V • Benzathine Penicillin \n• Cefdinir • Cefpodoxime \n• Clindamycin • Azithromycin \n• Clarithromycin • Erythromycin \n• Penicillin G • Cefaclor \n• Cephalexin",
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
          "ADULT:\n\nExudative/Diffuse Erythema\n\nLikely Causative Organisms:\n• Mostly viral Group A, C, G Streptococcus\n• Infectious mononucleosis\n\nEmpirical/First Line:\n• Penicillin V oral x10 days \n Or\n• Benzathine Penicillin 1.2 MU IM x 1 dose \n Or\n• Cefdinir or cefpodoxime x 5 days\n\nAlternative/Second Line:\nNone\n\nComments:\n• Penicillin allergic, Clindamycin 300-450 mg orally 6-8 hourly x 5 days.\n• Azithromycin clarithromycin are alternatives.\n\n\nMembranous pharyngitis\n\nLikely Casuative Organisms:\n• C.diptheriae\n\nEmpirical/First Line:\n• Erythromycin 500 mg IV QID or Penicillin G 50,000 units/kg IV 12 hourly.\n• Diptheria antitoxin: Horse serum.\n• <48 hrs:20,000-40,000 units, Nasopharyngeal membranes:40,000-60,000 units\n• >3 days & bull neck : 80,000-1,20,000 units\n\nAlternative/Second Line:\nNone\n\nComments:\nNone\n\nPEDIATRIC:\n\nBacterial Pharyngotonsillitis (Group A Streptococcus)\n\nAny of the following Antibiotic (route):\n\nPenicillin V (Oral)\n\nChildren (<30kg) (days):\n• 250 mg BID x 10 days\n\nChildren (>30kg) (days):\n\n• 500 mg BID x 10 days\n\nAmoxycillin (Oral)\n\nChildren (<30kg) (days):\n• 40 mg/kg/day x 10 days\n\nChildren (>30kg) (days):\n• 250 mg TID, can be given BID\n\nBenzathine Penicillin G (IM)\n\nChildren (<30kg) (days):\n• 6 Lakh units (Single Dose)\n\nChildren (>30kg) (days):\n\n• 12 Lakh units (Single Dose)\n\n\n• While Penicillin is the drug of choice Amoxycillin is good alternative and used widely.\n\nIf the patient is Penicillin allergic, the alternative drugs are Antibiotic (route)\n\nErythromycin (oral)\n\nDose and duration:\n• 40-50 mg/kg/day BID or TID x 10 days\n\nAzithromycin (oral)\n\nDose and duration:\n• 12 mg/kg OD x 5 days\n\nFirst Generation Cephalosporin (oral) (10 days) (if only, it is non-Type 1 allergy to penicillin)\n\nDose and duration:\n• Cefaclor (20-40 mg/kg/d in 3 divided doses) / Cephalexin (50 mg/kg/d in 3 divided doses)",
      img: '',
    ),
  ];
}
