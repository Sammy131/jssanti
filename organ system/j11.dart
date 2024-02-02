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

class J11 extends StatefulWidget {
  @override
  _J11State createState() => _J11State();
}

class _J11State extends State<J11> {
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
            'Trichomoniasis',
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
          "Trichomoniasis is a sexually transmitted infection transmitted through direct sexual contact. It frequently causes noticeable vaginal inflammation in women, while infected men often show no symptoms. Trichomoniasis increases the risk of HIV transmission in both genders and can lead to complications during pregnancy.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
        headerItem: 'Diagnostic Approach',
        discription:
            "SYMPTOMS AND SIGNS:\n• Vaginal discharge (yellow-green) with a fishy odor\n• Soreness of the vulva and perineum\n• Dyspareunia\n• Dysuria\n• Red color spots (strawberry spots) on the vaginal walls and surface of the cervix\n\nDIAGNOSIS:\n• Physical evaluation and vaginal pH\n• Wet-mount microscopic examination\n• Nucleic acid amplification tests (NAATs)\n• Rapid-antigen dipstick tests\n• Culture or cervical cytology\n\nDIFFERENTIAL DIAGNOSIS:\n• Pelvic inflammatory disease\n• Bacterial Vaginosis\n• Other sexually transmitted diseases (e.g., Syphilis, Gonorrhea etc.)",
        colorsItem: Colors.red,
        Bgcolor: Colors.white,
        panelcol: Colors.white,
        colorsbody: const Color.fromRGBO(0, 0, 0, 1),
        img: ''
        //'assets/j11diag.png',
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
          "Likely Causative Organisms:\n• Trichomonas vaginalis\n\nEmpirical/First Line:\n• Metronidazole 2 gm single dose or 500 mg Oral BD X 7 days \n Or\n• Tinidazole 2 gm Oral single doseFor treatment failure-retreat with Metronidazole 500 mg Oral BD X 7 Days, if 2nd failure Metronidazole 2 gm Oral OD X 3-5 days\n\nAlternative/Second Line:\n• Treat sexual partner with metronidazole 2 gm single dose \n\nComments:\nNone",
      img: '',
    ),
  ];
}
