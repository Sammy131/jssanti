import 'package:flutter/material.dart';
//DRUG 15 INFECTIONS

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

class druginf8 extends StatefulWidget {
  @override
  _druginf8State createState() => _druginf8State();
}

class _druginf8State extends State<druginf8> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  //late ScrollController _scrollController2 = ScrollController();
  //int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
              'Tetanus',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
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
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
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
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
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
                            itemData[index].expanded =
                                !itemData[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Definition & Etiology',
      discription:
          "Tetanus is a condition characterized by acute intoxication caused by a neurotoxin produced by the bacterium Clostridium tetani. The condition is most frequently observed in individuals who have not received vaccination or in elderly individuals with declining immunity.The incubation period ranges from 2 to 50 days (average, 5 to 10 days).There are four forms of tetanus based on clinical findings: generalized, neonatal, localized, and cerebral tetanus.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription: "",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/drug8_inf1.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Crystalline Penicillin\n• Metronidazole\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Preferred and Alternative Treatment Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Inj. Crystalline Penicillin (2 lac IU /kg/ d /12 hourly) \nOr \n• Inj. Metronidazole\n",
      img: '',
    ),
  ];
}
