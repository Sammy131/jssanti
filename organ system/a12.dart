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

class A12 extends StatefulWidget {
  @override
  _A12State createState() => _A12State();
}

class _A12State extends State<A12> {
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
            'Post necrotizing pancreatitis: Infected pseudocyst; Pancreatic abscess',
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
          "Post necrotizing pancreatitis:\nNecrotizing pancreatitis is a serious condition characterized by gland necrosis and systemic inflammatory response.\nSome of the causes include:\n• Gallstones\n• Alcohol consumption\n• Trauma of the pancreas\n• Pancreatic tumor\n\nInfected pseudocyst:\nAn enclosed mass of homogeneous fluid near the pancreas that has little to no necrotic tissue.Pseudocysts are developed when the main pancreatic duct or one of its branches is disrupted due to an inflammatory reaction or a physical injury. This extravasation of pancreatic enzymes into the parenchyma leads to the formation of a unique collection\nSome of the causes include:\n• Pancreatitis\n• Choledocholithiasis\n• Trauma\n\nPancreatic abscess:\nAn intra-abdominal pus accumulation with a defined border that is generally seen close to the pancreas and has minimal pancreatic necrosis.Some of the causes can include:\n• Pancreatitis\n• Penetrating peptic ulcers\n• Gallstones\n• Excessive alcohol consumption\n• Blunt trauma\n• Extension of abscesses from nearby structures",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: "",
      //'assets/a12def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "Post necrotizing pancreatitis:\n\nSYMPTOMS AND SIGNS:• Gradual or sudden abdominal pain and radiating pain to back\n• Fever\n• Abdominal distention\n• Nausea and vomiting\n• Dehydration and hypotension\n\nDIAGNOSIS:\n• Pancreatic function tests\n• Complete blood count\n• Serum lipase, amylase and triglycerides\n• Imaging studies (CT and/or MRI)\n\nDIFFERENTIAL DIAGNOSIS:\n• Pancreatic malignancy\n• Mesenteric Ischemia\n• Intestinal obstruction\n\nInfected pseudocyst:\n\nSYMPTOMS AND SIGNS:\n• Abdominal pain\n• Abdominal mass with an history of pancreatitis\n• Anorexia\n• Jaundice\n\nDIAGNOSIS:\n• Serum lipase, amylase and triglycerides\n• Pancreatic function tests\n• Imaging studies (Transabdominal ultrasound, CT and/or MRI)\n\nDIFFERENTIAL DIAGNOSIS:\n• Pancreatic Pseudoaneurysm\n• Pancreatic cystic neoplasm\n• Pancreatic necrosis or abscess\n\nPancreatic abscess:\n\nSYMPTOMS AND SIGNS:\n• Persistent fever\n• Worsening abdominal pain\n• Dehydration\n• Hypotension and hypoxia indicate progression to shock\n\nDIAGNOSIS:\n• Complete blood count / C-reactive protein\n• Liver function test\n• Blood cultures\n• Abdominal CT and/or MRI\n\nDIFFERENTIAL DIAGNOSIS:\n• Pancreatic pseudocysts\n• Pancreatic necrosis without associated infection\n• Gastric ulcer\n• Ascending cholangitis\n• Acute cholecystitis\n• Mesenteric ischemia or Intestinal obstruction\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: "",
      //'assets/a12diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Piperacillin-Tazobactam • Cefoperazone-Sulbactam \n• Fluconazole • vancomycin /teicoplanin\n• Imipenem-Cilastatin • Meropenem \n• Doripenem",
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
          "Likely Causative Organisms:\n• Entrobacteriaceae\n• Enterococci\n• S. aureus\n• S. epidermidis\n• anaerobes\n• Candida sp\n\nEmpirical/First Line:\n• Piperacillin-Tazobactam 4.5 gm IV 8 hourly empirically\n Or\n• Cefoperazone-Sulbactam 3gm IV 8 hourly in severe infections\n• In very sick patients, if required, addition of cover for yeast\n(fluconazole iv 800 mg loading dose day 1, followed by 400 mg 2nd day onwards) & and for Enterococcus (vancomycin /teicoplanin) may be contemplated For 7-10 days\n\nAlternative/Second Line:\n• Imipenem-Cilastatin 500mg IV 6 hourly\n Or\n• Meropenem 1gm IV 8 hourly\n Or\n• Doripenem 500mg IV 8h\n\nComments:\n• Duration of treatment is based on source control and clinical improvement\n",
      img: '',
      //'assets/a12alt.png',
    ),
  ];
}
