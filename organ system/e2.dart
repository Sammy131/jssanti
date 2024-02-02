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

class E2 extends StatefulWidget {
  @override
  _E2State createState() => _E2State();
}

class _E2State extends State<E2> {
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
            'Community acquired Pneumonia (CAP)',
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
          "Lung abscess\n\nA bacterial infection of the lung that leads to lung parenchyma necrosis. It can be caused due to aspiration of oral secretions, endobronchial obstruction and hematogenous seeding of the lungs. Anaerobic bacteria are the most common cause of lung abscesses from aspiration, but in around half of the cases, both anaerobic and aerobic organisms are present.\n\nAnaerobic:\n• Fusobacterium\n• Peptostreptococcus\n• Bacteroides\n• Prevotella\n\nAerobic:\n• Streptococci\n• Staphylococci\n\nEmpyema\n\nCollection of pus in the body cavity, especially in the pleural cavity. It is normally associated with pneumonia but may also occur after thoracic trauma or surgery.\nGram-positive bacteria are more prevalent in community-acquired empyema, particularly Streptococcus species. Whereas, Staphylococcus aureus, including methicillin-resistant S. aureus (MRSA), and Pseudomonas are more prevalent in hospital-acquired empyema.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/e2def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "Lung abscess\n\nSYMPTOMS AND SIGNS:\n• Cough\n• Fever \n• Night sweats\n• Weight loss\n• Hemoptysis and pleuritic chest pain\n• Purulent or blood sputum\n• Foul breath\n\nDIAGNOSIS:\n• Chest x-ray or chest CT \n• Sputum or pleural fluid culture\n• Bronchoscopy with bronchoalveolar lavage\n\nDIFFERENTIAL DIAGNOSIS:\n• Excavating bronchial carcinoma or tuberculosis\n• Hiatal hernia\n• Hydatid cyst of the lung\n• Septic pulmonary emboli\n• Cavitary pneumoconiosis\n• Pulmonary hematoma\n• Foreign body aspiration\n\nEmpyema\n\nSYMPTOMS AND SIGNS:\n• Productive cough\n• Fever\n• Pleuritic-type chest pain\n\nDIAGNOSIS:\n• Chest x-ray and ultrasound\n• CT Scan\n• Pleural fluid culture and analysis\n\nDIFFERENTIAL DIAGNOSIS:\n• Pneumonia\n• Pulmonary infarction\n• Heart failure",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e2diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Cefoperazone-Sulbactam\n• Clindamycin • Cloxacillin \n• Ceftriaxone • Amoxycillin-clavulanate\n• Vancomycin",
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
          "ADULT\n\nLikely Causative Organisms:\n• S. pneumoniae\n• E.coli\n• Klebsiella sp\n• Pseudomonas\n• aeruginosa\n• S.aureus\n• anaerobes\n\nEmpirical/First Line:\n• Piperacillin-Tazobactam 4.5gm IV 6 hourly\n Or\n• Cefoperazone-Sulbactam 3gm IV 12 hourly\n\nAlternative/Second Line:\n• ADD Clindamycin 600-900mg IV 8 hourly\n\nComments:\n• 3-4 weeks treatment required\n\nPEDIATRIC (Empyema)\n\n• Cloxacillin 100-200 mg/kg/day along with Ceftriaxone.\n• Co-Amoxyclav is alternative first line therapy.\n• Vancomycin is recommended in seriously ill patients with disseminated staphylococcal disease and septic shock to cover for MRSA",
      img: '',
      //'assets/e2alt.png',
    ),
  ];
}
