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

class druginf15 extends StatefulWidget {
  @override
  _druginf15State createState() => _druginf15State();
}

class _druginf15State extends State<druginf15> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  //late ScrollController _scrollController2 = ScrollController();
  int selected = 0;
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
              'Varicella',
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
          "A communicable illness caused by the varicella-zoster virus (VZV). The mode of transmission is through inhalation of infected aerosolized droplets. The primary infection begins in the mucosal lining of the upper respiratory tract. Subsequently, after a period of 2-6 days, the virus enters the bloodstream, leading to another episode of viremia around 10-12 days later.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription: "",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/drug15_inf.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "Aciclovir\n",
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
          "• No antibiotics to be given\n• In pregnancy following approach recommended\n",
      img: 'assets/drug15_inf2.png',
    ),
  ];
}
