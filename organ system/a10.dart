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

class A10 extends StatefulWidget {
  @override
  _A10State createState() => _A10State();
}

class _A10State extends State<A10> {
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
            'Secondary peritonitis, Intra-abdominal abscess / GI perforation',
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
          "Secondary peritonitis:\nPeritoneal infections secondary to intra-abdominal lesions.\nCauses of secondary peritonitis include:\n•	Non-bacterial peritonitis\n•	Bowel necrosis\n•	Penetrating infectious processes\n•	Perforation of the hollow viscus\n\nIntra-abdominal abscess:\nAn abdominal abscess is a collection of enzymes, liquid remnants, and cellular waste from either an infectious or non-infectious source. Intra-abdominal abscesses can be classified as intraperitoneal, retroperitoneal, or visceral.\n\nLOCATION\n• Intraperitoneal\n\nETIOLOGY\n• Postoperative\n• Appendicitis\n• Diverticulitis\n• Tumor\n• Crohn disease\n• Pelvic inflammatory disease\n\nORGANISMS\n• Polymicrobial\n\n\nLOCATION\n• Retroperitoneal\n\nETIOLOGY\n• Trauma\n• Pancreatitis\n\nORGANISMS\n• Polymicrobial\n\n\nLOCATION\n• Perinephric\n\nETIOLOGY\n• Spread of renal parenchymal abscess \n\nORGANISMS\n• Aerobic gram-negative bacilli\n\n\nLOCATION\n• Visceral\n\nETIOLOGY\n• Trauma\n• Ascending cholangitis\n• Portal bacteremia\n• Trauma \n• Hematogenous, infarction\n\nORGANISMS\n• Aerobic gram-negative bacilli (if origin is biliary)\n• Polymicrobial bowel flora\n• Amebic infection via the portal venous system\n• Staphylococci\n• Streptococci\n• Anaerobes\n• Aerobic gram-negative bacilli\n\nGI perforation:\nInjury or loss of continuity of the gastrointestinal wall leading to formation of a pit along the esophagus, stomach or intestine\n\nPERFORATION SITE\n• All sites \n\nCAUSE\n• Trauma\n• Foreign bodies\n• Forceful vomiting\n\nPERFORATION SITE\n• Esophagus\n\nCAUSE\n• Iatrogenic causes\n• Ingestion of corrosive material\n\nPERFORATION SITE\n• Stomach or duodenum \n\nCAUSE\n• Peptic ulcer disease\n• Ingestion of corrosive material\n• Strangulating obstruction\n\nPERFORATION SITE\n• Intestine \n\nCAUSE\n• Possibly acute appendicitis\n• Meckel diverticulitis\n\nPERFORATION SITE\n• Colon\n\nCAUSE\n• Obstruction\n• Diverticulitis\n• Inflammatory bowel disease\n• Toxic megacolon\n\nPERFORATION SITE\n• Gallbladder\n\nCAUSE\n• Iatrogenic injury during cholecystectomy or liver biopsy\n• Rarely, acute cholecystitis\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a10def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "Secondary peritonitis:\nSYMPTOMS AND SIGNS:\n• Abdominal pain and tenderness\n• Nausea and vomiting\n• Diminished intestine sounds\n• Decreased appetite\n• Fever\n• Patient may also show signs of shock\n\nDIAGNOSIS:\n• Complete blood analysis (Including pancreatic enzymes) and culture\n• Urinalysis\n• Liver and kidney function tests\n• X-ray or CT scan\n• Peritoneal fluid culture\n\nDIFFERENTIAL DIAGNOSIS:\n• Spontaneous bacterial peritonitis\n• Tuberculous peritonitis\n• Biliary colic\n• Acute ischemic colitis\n\nIntra-abdominal abscess:\nSYMPTOMS AND SIGNS:\n• Abdominal pain\n• Fever\n• Anorexia\n• Tachycardia\n• Prolonged ileus\n• Weight loss\n\nRetroperitoneal or deep pelvis abscess patients may present with no clinical signs except fever,mild liver dysfunction, or prolonged ileus. Shoulder tip pain and hiccups are possible symptoms of a subphrenic abscess.\n\nDIAGNOSIS:\n• Complete blood count and blood cultures\n• Liver function test\n• CT scan\n\nDIFFERENTIAL DIAGNOSIS:\n• Prolonged ileus\n• Crohn disease\n• Ulcerative colitis\n• Complicated perianal infection\n• Perforated colon cance\n\nGI perforation:\nSYMPTOMS AND SIGNS:\n• Abdominal pain and tenderness\n• Radiation pain to the shoulder\n• Nausea, vomiting and anorexia\n• Bowel sounds are quiet to absent\n\nDIAGNOSIS:\n• Abdominal series (supine, upright abdominal and chest x-rays)\n• If non-diagnostic, abdominal CT\n\nDIFFERENTIAL DIAGNOSIS:\n• Biliary disease\n• Peptic or Duodenal Ulcer\n• Splenic infarction\n• Embolic mesenteric insufficiency\n• Abdominal aortic aneurysm rupture\n• Malignancy\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a10diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Cefoperazone-Sulbactam\n• Fluconazole • Vancomycin / Teicoplanin\n• Imipenem • Meropenem\n• Doripenem • Ertapenem",
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
          "Likely Causative Organisms:\n• Enterobacteriaceae (E.coli, Klebsiella sp.)\n• Bacteroides (colonic perforation)\n• Anaerobes\n\nEmpirical/First Line:\n• Piperacillin-Tazobactam 4.5gm IV 8 hourly\n Or\n• Cefoperazone-Sulbactam 3gm IV 12 hourly in severe infections\n• In very sickpatients, if required, addition of cover for yeast (fluconazole iv 800 mg loading dose day 1, followed by 400 mg 2nd day onwards) & and for Enterococcus (vancomycin /teicoplanin) may be contemplated\n\nAlternative/Second Line:\n• Imipenem 1g IV 8 hourly\n Or\n• Meropenem 1gm IV 8 hourly\n Or\n• Doripenem 500 mg TDS\n Or\n• Ertapenem 1 gm IV OD\n\nComments:\n• Source control is important to reduce bacterial load.\n• If excellent source control – for 5-7 days; other wise 2-3 weeks suggested.",
      img: '',
      //'assets/a10alt.png',
    ),
  ];
}
