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

class A7 extends StatefulWidget {
  @override
  _A7State createState() => _A7State();
}

class _A7State extends State<A7> {
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
            'Biliary tract infections (Cholangitis & Cholecystitis)',
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
          "Cholangitis:\nOccurs as a result of bile duct bacterial infection. There must be biliary flow obstruction for acute cholangitis to develop. Full obstruction could result in higher biliary pressure, which frequently results in bacteremia.\n\nCause of biliary obstruction include:\n• Choledocholithiasis (most frequent)\n• Benign or malignant tumours\n• Parasites (Clonorchis sinensis, Fasciola hepatica)\n• Roundworms (Ascaris lumbricoides) and Tapeworms (Taenia saginata)\n• Biliary sludge deposits because of biliary stent obstruction \n• Gallstone impaction in the neck of the gallbladder or the cystic duct\n• Peri-ampullary diverticulum of the duodenum leading to biliary obstruction\n• Acquired immunodeficiency syndrome (AIDS)\n\nGram-negative and anaerobic organisms have been identified as the pathogens responsible for acute ascending cholangitis, with the most prevalent ones being Escherichia coli, Klebsiella, Enterobacter, Pseudomonas, and Citrobacter.\n\nCholecystitis:\nInflammation of the gallbladder usually develops due to a gallstone obstruction in the cysticduct. Gallstones are present in about 95% of patients with acute cholecystitis. Cholecystitis without stones is referred to as acalculous cholecystitis. It makes up 5 to 10% of cholecystectomies performed for acute cholecystitis.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'asstes/a7def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "CHOLANGITIS:\n\nSYMPTOMS AND SIGNS:\n• Charcot triad: fever and chills, generalized abdominal pain, jaundice\n• Malaise\n• Rigors\n• Pruritus\n• Pale stools\n\nDIAGNOSIS:\n• Complete blood count and blood cultures\n• Liver function tests\n• Ultrasonography\n• MRCP / ERCP\n\nDIFFERENTIAL DIAGNOSIS:\n• Acute cholecystitis\n• Hepatitis\n• Liver cirrhosis or Liver failure\n• Hepatic abscess\n• Pancreatitis\n• Perforated peptic ulcer\n• Acute appendicitis\n• Diverticulitis\n• Pyelonephritis\n\nCHOLECYSTITIS:\n\nSYMPTOMS AND SIGNS:\n• Biliary colic / right upper quadrant abdominal pain\n• Nausea and vomiting\n• Fever\n• Murphy sign\n\nDIAGNOSIS:\n• Transabdominal ultrasonography\n• Cholescintigraphy\n• Abdominal CT (detect complications e.g., gallbladder perforation or pancreatitis)\n• Complete blood count\n• Liver Function Test\n\nDIFFERENTIAL DIAGNOSIS:\n• Appendicitis\n• Cholangitis\n• Mesenteric ischemia\n• Gastritis\n• Peptic ulcer disease",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a7diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Ceftriaxone\n• Cefoperazone-Sulbactam • Imipenem\n• Meropenem",
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
          "Likely Causative Organisms:\n• Enterobacteriaceae (E.coli, Klebsiella sp.)\n\nEmpirical/First Line:\n• Ceftriaxone 2gm IV OD or Piperacillin-Tazobactam 4.5gm IV 8 hourly\n Or\n• Cefoperazoe-Sulbactam 3gm IV 12 hourly For 7-10 days\n\nAlternative/Second Line:\n• Imipenem 500mg IV 6 hourly\n Or\n• Meropenem 1gm IV 8 hourly For 7-10 days\n\nComments:\n• Surgical or endoscopic intervention to be considered if there is biliary obstruction.\n• High prevalence of ESBL producing E.coli, Klebsiella sp.strains. Deescalate therapy once antibiotic susceptibility is known.",
      img: '',
      //'assets/a7alt.png',
    ),
  ];
}
