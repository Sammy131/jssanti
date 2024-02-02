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

class A1 extends StatefulWidget {
  @override
  _A1State createState() => _A1State();
}

class _A1State extends State<A1> {
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
            'Acute Gastroenteritis / Food poisoning',
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
          "Inflammation of the stomach, small, and large intestines' linings. The majority of cases are infectious, however chemical toxins and medicines may also cause gastroenteritis. Infection can occur through contact with contaminated food, water, persons, or zoonotic transmission.\n\nVIRAL(50%-70%):\n• Norovirus\n• Rotavirus\n• Enteric adenovirus types 40 and 41\n• Astrovirus\n• Some picornavirus\n\nBACTERIAL(15%-20%):\n• Campylobacter\n• Clostridia difficile\n• Escherichia coli (especially serotype O157:H7)\n• Salmonella\n• Shigella\n• Staphylococci, causing staphylococcal food poisoning\n\nPARASITIC(10%-15%):\n• Giardia\n• Cryptosporidium\n• Amebiasis\n• Isospora\n• Cyclospora\n• Microsporidium\n\nMEDICATIONS:\n• Antibiotics\n• Laxatives abuse\n• Chemotherapeutics\n• Antacids\n• Cardiac antidysrhythmic\n• NSAIDS\n\nTOXIC INGESTIONS:\n• Organophosphates\n• Poisonous mushrooms\n• Arsenic\n\nCHRONIC GASTROENTERITIS CAUSES INCLUDE:\n• Inflammatory bowel diseases\n• Irritable bowel syndrome\n• Celiac disease\n• Colorectal cancer\n• Ischemic bowel\n• Eosinophilic gastroenteritis\n• Lactose intolerance\n• Bowel obstruction\n• Malabsorption\n• Parasitic infections & medications",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/a1def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Anorexia, nausea, vomiting, abdominal cramps, and diarrhoea (with or without blood and mucus).\n• Malaise and myalgias. \n• The abdomen might be distended and tender; in serious cases, muscle guarding might be observed.\n• Palpable gas-distended intestinal loops.\n• On auscultation hyperactive bowel sounds without diarrhea.\n• Intravascular fluid depletion with hypotension and tachycardia due to persistent vomiting and diarrhea.\n• In severe cases, hypovolemic shock with vascular collapse and oliguric renal failure may occur.\n\nDIAGNOSIS:\n• Physical evaluation\n• Stool testing\n• Fecal leukocytes and occult blood\n• Fecal lactoferrin\n• Stool cultures\n• Stool ova and parasites\n\nDIFFERENTIAL DIAGNOSIS:\n• Viral or parasitic gastroenteritis.\n• Crohn disease, pseudomembranous colitis, microscopic colitis, HIV infection, irritable bowel disease, and lactose intolerance. \n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/a1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "NA",
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
          "Likely Causative Organisms:\n• Viral Entero-toxigenic & Entero-pathogenic\n• E. coli\n• S. aureus,\n• B. cereus,\n• C. botulinum\n\nEmpirical/First Line:\n• None\n\nAlternative/Second Line:\n• None\n\nComments:\n• Rehydration (Oral/IV) essential\n",
      img: '',
      //'assets/a1alt.png',
    ),
  ];
}
