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

class E1 extends StatefulWidget {
  @override
  _E1State createState() => _E1State();
}

class _E1State extends State<E1> {
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
          "A lung infection that appears in patients who are not hospitalized and typically seen in healthy population or those who are immunocompromised.Community-acquired pneumonia can be caused by variety of microorganisms, including bacteria, viruses, fungi, and parasites.\nBACTERIA\n\n• Streptococcus pneumoniae\n• Mycoplasma pneumoniae\n• Chlamydophila pneumoniae\n• Haemophilus influenzae\n\nVIRUSES\n\n• SARS-CoV-2\n• Adenoviruses\n• Respiratory syncytial virus (RSV)\n• Influenza viruses\n• Parainfluenza viruses\n• Metapneumovirus\n\nFUNGI\n\n• Histoplasmosis\n• Coccidioidomycosis\n\nPARASITES\n\n• Toxocara canis or T. catis\n• Dirofilaria immitis \n• Paragonimus westermani",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/e1def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Productive Cough\n• Dyspnea\n• Fever & Chills\n• Chest pain\n• Malaise\n• Weight loss\n\nDIAGNOSIS:\n• Complete blood count\n• Renal and liver function tests\n• Chest X-ray or CT\n• Blood and sputum culture\n\nDIFFERENTIAL DIAGNOSIS:\n• Acute bronchitis or exacerbation of chronic bronchitis\n• Aspiration pneumonitis\n• Pulmonary fibrosis\n• Sarcoidosis\n• Pulmonary embolus or infarction\n• Bronchogenic carcinomas",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Amoxycillin-clavulanate • Ampicillin\n• Piperacillin-Tazobactam • Cefoperazone-Sulbactam\n• Ceftriaxone • Cefotaxime\n• Cefpodoxime • Imipenem \n• Gentamicin • Vancomycin",
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
          "ADULT\n\nLikely Causative Organisms:\n• S. pneumoniae\n• H.influenzae\n• Legionella\n• E.coli\n• Klebsiella sp\n• S.aureus\n\nEmpirical/First Line:\nMild to moderate cases:\n• Amoxycillin-500mg-1 g TDS oral\n• If IV indicated, amoxycillin-clavulanate 1.2 g IV TDS\n Or\n• Ceftriaxone 2g IV OD\n\nSevere cases:\n• Amoxycillin-clavulanate 1.2 g IV TDS\n Or\n• Ceftriaxone 2g IV OD \nDuration 5-8 days\n\nAlternative/Second Line:\n• Piperacillin-Tazobactam 4.5gm IV 6 hourly\n Or\n• Imipenem 1g IV 6 hourly\n Or\n• efoperazone-Sulbactam 3gm IV12 hourly\n\nComments:\n• If MRSA is a concern, add Linezolid 600mg IV/Oral BD\n• If atypical pneumonia suspected, Doxycycline 100mg bd\n Or\n• Azithromycin 500 mg oral/IV OD         PEDIATRIC\n\nSevere Pneumonia:\n\nUnder 2 months of age:\n• Inj. Cefotaxime / Ceftriaxone and Gentamicin for 10 days\nOver 2 months of age:\n• Inj. Ampicillin (50mg/kg/dose 6h) + Gentamicin (7.5mg/kg/day OD I.M or I.V). \n• Inj. Ampicillin can be switched to Oral Amoxycillin (45mg/kg/day TDS) once child is stable and able to take oral feeds. \n• Total treatment duration is 7-10 days.\nIn case of no response in 2 days the patient is assessed for complications like empyema, or infection at any other site. In the absence of any complication, a 3rd generation Cephalosporin is used \n• Cefotaxime 50mg/kg/dose 6h or Ceftriaxone 75- 100mg/kg/day in two divided doses, IV \nDrug can be switched to:\n• Oral Cefpodoxime (10mg/kg/day BD) once the child is able to take orally. \nTotal treatment duration is 7-10 days.\nIn case the patient has severe sepsis/ septic shock:\n• Inj. Piperacillin + Tazobactam (90mg/kg/dose 6h) + MRSA cover with IV Vancomycin (15mg/kg/dose 6h) is recommended.\n\nPneumonia (OPD)\n\n• Oral Amoxicillin (45mg/kg/day TDS) for 5 days \nOr\n• Oral Co-trimoxazole (8mg/kg/day of TMP component BD)",
      img: '',
      //'assets/e1alt.png',
    ),
  ];
}
