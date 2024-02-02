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

class J15 extends StatefulWidget {
  @override
  _J15State createState() => _J15State();
}

class _J15State extends State<J15> {
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
            'Mastitis ',
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
          "A painful inflammation of the breast, often associated with an infection. It can be classified as lactational and non-lactational mastitis. Lactational mastitis is the more prevalent form and is typically caused by bacteria that naturally exist on the skin, with Staphylococcus aureus being the most common pathogen. Other causative organisms include:\n• Streptococcus pyogenes \n• Escherichia coli\n• Bacteroides species \n• Coagulase Negative staphylococci\n\nNon-lactational mastitis can be classified as periductal mastitis and idiopathic granulomatous mastitis (IGM). The causative organisms of these conditions can include:\n• S aureus \n• Pseudomonas aeruginosa\n• Enterococcus\n• Bacteroides species\n• Proteus species \n• Corynebacterium",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/j15def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nLactational mastitis:\n• Swollen and painful breast\n• Fever and malaise \n• Myalgia\n\nNon-lactational mastitis:\n• Breast mass with pain and erythema\n• Nipple inversion or retraction\n• Nipple discharge\n• Breast abscess or ulceration\n• Axillary adenopathy\n\nDIAGNOSIS:\n• Physical evaluation\n• Breast milk or nipple discharge culture\n• Ultrasound or mammography\n\nDIFFERENTIAL DIAGNOSIS:\n• Breast engorgement\n• Galactocele\n• Duct ectasia\n• Breast carcinoma",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: const Color.fromRGBO(0, 0, 0, 1),
      img: '',
      //'assets/j15diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "Drug Sheet",
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
          "Mastitis without abscess\n\nLikely Causative Organisms:\n• S. aureus \n\nEmpirical/First Line:\n• Amoxycillin clavulunate/Cephalexin 500 mg QID\n Or\n• Ceftriaxone 2 gm OD \n Or\n• MRSA- based on sensitivities \n Add\n• Clindamycin 300 QID \n Or\n• Vancomycin I gm IV 12 hourly /teicoplanin 12mg/kg IV 12 hourly x 3 doses followed by 6 once daily IV\n\nAlternative/Second Line:\nNone\n\nComments:\nNone\n\n\nMastitis with abscess\n\nEmpirical/First line:\nDrainage with antibiotic cover for:\n• MRSA\n• Clindamycin 300 QID \n Or\n• Vancomycin 15mg/kg IV 12 hourly (maximum 1gm 12 hourly)/teicoplanin 12mg/kg IV 12 hourly x 3 doses followed by 6 mg once daily IV\n\nAlternative/Second Line:\nNone\n\nComments:\nNone",
      img: '',
    ),
  ];
}
