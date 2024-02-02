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

class C1 extends StatefulWidget {
  @override
  _C1State createState() => _C1State();
}

class _C1State extends State<C1> {
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
            'Infective Endocarditis',
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
          "Infection of the endocardium, typically caused by bacteria (commonly, streptococci or staphylococci) or fungi. Endocarditis normally requires 2 factors.\n• Endocardial abnormality\n• Microorganisms in the bloodstream (bacteremia)\n\nThe cardiac valves are usually affected by endocarditis. Congenital heart defects, bicuspid aortic valves, rheumatic valvular disease, mitral valve prolapse, hypertrophic cardiomyopathy, calcific aortic valves and previous endocarditis are the main risk factors for this condition.\n\nThe microorganisms that cause endocardial infection can originate from nearby contaminated locations (e.g., inflamed or infected gums, urinary tract infection) or can enter the body through open portals like a central venous catheter or a drug injection site.Any implanted foreign material, such as a ventricular or peritoneal shunt or prosthetic device, is susceptible to bacterial colonization.\n\nStreptococci and Staphylococcus aureus account for 80 to 90% of the cases. Enterococci, gramnegative bacilli, HACEK organisms (Haemophilus species, Actinobacillus, Actinomycetemcomitans, Cardiobacterium hominis, Eikenella corrodens, and Kingella kingae), and fungi are responsible for the remaining cases.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/c1def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fevers and chills\n• Malaise or fatigue\n• Petechiae\n• Valvular insufficiency and heart murmur\n• Roth spots and osler nodes\n• Central nervous system effects, including transient ischemic attacks, stroke, toxic encephalopathy\n\nDIAGNOSIS:\n• Blood Culture\n• Transthoracic echocardiography\n• CT (To define paravalvular abscesses and for detection of mycotic aneurysms)\n\nFor establishing a diagnosis either modified Duke Criteria or the European Society of Cardiology (ESC) 2015 modified criteria can be referred\n\nDIFFERENTIAL DIAGNOSIS:\n• Myopericarditis\n• Acute coronary syndrome\n• Pulmonary embolism\n• Pneumonia\n• Empyema\n• Perivalvular thrombosis or suture dehiscence.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/c1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Penicillin G • Ampicillin  \n• Gentamicin • Vancomycin\n• Teicoplanin • Gentamicin  \n• Daptomycin • Meropenem ",
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
          "ADULT\n\nNative valve (awaiting cultures) Indolent\n\nLikely Causative Organisms:\n• Viridans Streptococci\n• other Streptococci\n• Enterococci\n\nEmpirical/First Line:\n• Penicillin G 20MU IV divided doses, 4 hourly\n Or\n• Ampicillin 2gm iv 4h\n AND\n• Gentamicin 1mg/kg im or iv 8h\n\nDuration: 4-6 weeks\n\nAlternative/Second Line:\n• Vancomycin 15mg/kg IV 12 hourly (maximum 1g 12 hourly)/teicplanin 12mg/kg IV 12 hourly x 3 doses followed by 6-12 mg once daily IV depending upon severity + Gentamicin 1mg/kg IM or IV 8 hourly\n\nDuration: 4-6 weeks\n Or\n• Daptomycin 6mg/kg IV once a day\n\nDuration: 4-6 weeks\n\nComments:\n• If patient is stable, ideally waitblood cultures.\n• Antibiotic choice as per sensitivity results. Guidance from Infectious disease specialist or clinical microbiologist is recommended\n\nNative valve (awaiting cultures)In Severe Sepsis\n\nLikely Causative Organisms:\n• S.aureus (MSSA or MRSA)Risk for gram-negative bacill\n\nEmpirical/First Line:\n• Vancomycin 25-30 mg/kg loading followed by 15-20 mg/kg IV 12 hourly\n(maximum 1gm 12 hourly))/teicoplan in 12mg/kg IV 12 hourly x 3 doses followed by 6 -12 mg once daily IV depending upon severity\n AND\n• Meropenem 1gm IV 8h\n\nDuration: 4-6 weeks\n\nAlternative/Second Line:\n• Daptomycin 6mg/kg IV once a day\n AND\n• Meropenem 1gm IV q8h\n\nDuration: 4-6 weeks\n\nComments:\n• Modify antibiotics based on culture results and complete 4-6 weeks of antibiotics\n\nProsthetic Valve awaiting Cultures\n\nEmpirical/First Line:\n• Vancomycin 15mg/kg IV 12 hourly (maximum 1gm 12 hourly)/teicoplan in 12mg/kg IV 12 hourly x 3 doses followed by 6 -12 mg once daily IV depending upon severity + Gentamicin 1mg/kg q12h IV\n\nAlternative/Second Line:\n• Daptomycin can be used in place of Vancomycin/Teicoplanin for patients unresponsive to or intolerant of Vancomycin/Tei coplanin or with Vancomycin/Gly copeptide-resistant isolates\n\nComments:\n• Antibiotic choice as per sensitivity. Guidance from Infectious disease specialist or microbiologist is recommended. \n\nPEDIATRIC\n\nAcute Endocarditis:\n• Inj. Crystalline Penicillin/ampicillin + Gentamicin for 3-4 weeks is given (Depending upon culture & sensitivity report)\n",
      img: '',
      //'assets/c1alt.png',
    ),
  ];
}
