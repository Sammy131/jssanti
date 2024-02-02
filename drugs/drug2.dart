/*import 'package:flutter/material.dart';

class ExamReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 214, 84, 67),
          centerTitle: true,
          title: Text('REGISTER FOR YOUR UPCOMING EXAM!!'),
        ),
        //backgroundColor: Color.fromARGB(255, 97, 242, 223),
        backgroundColor: Color.fromARGB(248, 8, 38, 34),
      );
}*/

/*import 'package:flutter/material.dart';

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

class drug2 extends StatefulWidget {
  @override
  _drug2State createState() => _drug2State();
}

class _drug2State extends State<drug2> {
  late ScrollController _scrollController = ScrollController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: 'Ciprofloxacin',
              ),
              Tab(
                text: 'Moxifloxacin',
              ),
              Tab(
                text: 'Gatifloxacin ',
              ),
              Tab(
                text: 'Levofloxacin',
              ),
              Tab(
                text: 'Norfloxacin ',
              ),
              Tab(
                text: 'Ofloxacin',
              )
            ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Quinolone & Fluoroquinolones'),
          ),
          body: TabBarView(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: NeverScrollableScrollPhysics(),
                child: ListView.builder(
                  //key: Key('builder ${selected.toString()}'),
                  shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  itemCount: itemData.length,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      //color: itemData[index].panelcol,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        //physics: ,
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
                                  scrollbarOrientation:
                                      ScrollbarOrientation.top,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                //key: Key('builder ${selected.toString()}'),
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                itemCount: itemData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    //color: itemData[index].panelcol,
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //height: 87,
                                    //width: 87,
                                    //padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      itemData[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
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
          ]),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription: "Hypersensitivity to the tetracyclines class of drugs.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "It is contraindicated in pregnancy as it can affect teeth and skeletal development of the fetus.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "Tetracyclines can be excreted via breast milk. Hence, contraindicated in lactating mothers.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Use of tetracycline class drugs (especially long term) during tooth development may cause permanent discoloration of the teeth (yellow-grey-brown). Hence, use of doxycycline should be justified.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Abnormal hepatic function has been reported rarely. Hence, should be administered with caution. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Percentage of drug excretion may fall in individuals with severe renal insufficiency (creatinine clearance below 10ml/min). However, as per studies no significant difference in the serum half-life was observed in normal and impaired renal function patients (severe condition).",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No special precaution required.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Caution is advised as patients may experience serious skin reactions, photosensitivity, benign intracranial hypertension, esophagitis, porphyria, venereal disease, myasthenia gravis, systemic lupus erythematosus and Jarisch-Herxheimer reaction",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Reactions",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/dox_inter.png',
    ),
    /*ItemModel(
      headerItem: 'FEES STRUCTURE\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/images/fees struc.png',
    ),*/
  ];
}*/
/*import 'package:flutter/material.dart';

class ExamReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 214, 84, 67),
          centerTitle: true,
          title: Text('REGISTER FOR YOUR UPCOMING EXAM!!'),
        ),
        //backgroundColor: Color.fromARGB(255, 97, 242, 223),
        backgroundColor: Color.fromARGB(248, 8, 38, 34),
      );
}*/

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

class drug2 extends StatefulWidget {
  @override
  _drug2State createState() => _drug2State();
}

class _drug2State extends State<drug2> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  late ScrollController _scrollController2 = ScrollController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 11,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white30,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'Ciprofloxacin',
                  ),
                  Tab(
                    text: 'Moxifloxacin',
                  ),
                  Tab(
                    text: 'Gatifloxacin ',
                  ),
                  Tab(
                    text: 'Levofloxacin',
                  ),
                  Tab(
                    text: 'Norfloxacin ',
                  ),
                  Tab(
                    text: 'Ofloxacin',
                  )
                ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Quinolone & Fluoroquinolones'),
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
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController2,
                  itemCount: itemData2.length,
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
                            backgroundColor: itemData2[index].panelcol,
                            canTapOnHeader: true,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              //itemData[index].expanded = selected;
                              isExpanded = itemData2[index].expanded;
                              //expanded[index]==selected,
                              return Container(
                                color: itemData2[index].Bgcolor,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  itemData2[index].headerItem,
                                  style: TextStyle(
                                      color: itemData2[index].colorsItem,
                                      //backgroundColor: itemData[index].Bgcolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                            body: Container(
                              color: itemData2[index].Bgcolor,
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Scrollbar(
                                thumbVisibility: true,
                                scrollbarOrientation:
                                    ScrollbarOrientation.bottom,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    itemData2[index].img != ''
                                        ? Container(
                                            //height: 87,
                                            //width: 87,
                                            //padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              itemData2[index].img,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : SizedBox(height: 2),
                                    Text(
                                      itemData2[index].discription,
                                      style: TextStyle(
                                        color: itemData2[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: itemData2[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData2[index].expanded =
                                !itemData2[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController2,
                  itemCount: itemData3.length,
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
                            backgroundColor: itemData3[index].panelcol,
                            canTapOnHeader: true,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              //itemData[index].expanded = selected;
                              isExpanded = itemData3[index].expanded;
                              //expanded[index]==selected,
                              return Container(
                                color: itemData3[index].Bgcolor,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  itemData3[index].headerItem,
                                  style: TextStyle(
                                      color: itemData3[index].colorsItem,
                                      //backgroundColor: itemData[index].Bgcolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                            body: Container(
                              color: itemData3[index].Bgcolor,
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Scrollbar(
                                thumbVisibility: true,
                                scrollbarOrientation:
                                    ScrollbarOrientation.bottom,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    itemData3[index].img != ''
                                        ? Container(
                                            //height: 87,
                                            //width: 87,
                                            //padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              itemData3[index].img,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : SizedBox(height: 2),
                                    Text(
                                      itemData3[index].discription,
                                      style: TextStyle(
                                        color: itemData3[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: itemData3[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData3[index].expanded =
                                !itemData3[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController2,
                  itemCount: itemData4.length,
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
                            backgroundColor: itemData4[index].panelcol,
                            canTapOnHeader: true,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              //itemData[index].expanded = selected;
                              isExpanded = itemData4[index].expanded;
                              //expanded[index]==selected,
                              return Container(
                                color: itemData4[index].Bgcolor,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  itemData4[index].headerItem,
                                  style: TextStyle(
                                      color: itemData4[index].colorsItem,
                                      //backgroundColor: itemData[index].Bgcolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                            body: Container(
                              color: itemData4[index].Bgcolor,
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Scrollbar(
                                thumbVisibility: true,
                                scrollbarOrientation:
                                    ScrollbarOrientation.bottom,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    itemData4[index].img != ''
                                        ? Container(
                                            //height: 87,
                                            //width: 87,
                                            //padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              itemData4[index].img,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : SizedBox(height: 2),
                                    Text(
                                      itemData4[index].discription,
                                      style: TextStyle(
                                        color: itemData4[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: itemData4[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData4[index].expanded =
                                !itemData4[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController2,
                  itemCount: itemData5.length,
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
                            backgroundColor: itemData5[index].panelcol,
                            canTapOnHeader: true,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              //itemData[index].expanded = selected;
                              isExpanded = itemData5[index].expanded;
                              //expanded[index]==selected,
                              return Container(
                                color: itemData5[index].Bgcolor,
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  itemData5[index].headerItem,
                                  style: TextStyle(
                                      color: itemData5[index].colorsItem,
                                      //backgroundColor: itemData[index].Bgcolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                            body: Container(
                              color: itemData5[index].Bgcolor,
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Scrollbar(
                                thumbVisibility: true,
                                scrollbarOrientation:
                                    ScrollbarOrientation.bottom,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    itemData5[index].img != ''
                                        ? Container(
                                            //height: 87,
                                            //width: 87,
                                            //padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              itemData5[index].img,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : SizedBox(height: 2),
                                    Text(
                                      itemData5[index].discription,
                                      style: TextStyle(
                                        color: itemData5[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: itemData5[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData5[index].expanded =
                                !itemData5[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController2,
                  itemCount: itemData6.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: ExpansionPanelList(
                        animationDuration: const Duration(milliseconds: 500),
                        dividerColor: Colors.red,
                        expandedHeaderPadding:
                            const EdgeInsets.only(bottom: 0.0),
                        key: Key(index.toString()),
                        elevation: 1,
                        children: [
                          //PANEL
                          ExpansionPanel(
                            backgroundColor: itemData6[index].panelcol,
                            canTapOnHeader: true,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              //itemData[index].expanded = selected;
                              isExpanded = itemData6[index].expanded;
                              //expanded[index]==selected,
                              return Container(
                                color: itemData6[index].Bgcolor,
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  itemData6[index].headerItem,
                                  style: TextStyle(
                                      color: itemData6[index].colorsItem,
                                      //backgroundColor: itemData[index].Bgcolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                            body: Container(
                              color: itemData6[index].Bgcolor,
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Scrollbar(
                                thumbVisibility: true,
                                scrollbarOrientation:
                                    ScrollbarOrientation.bottom,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      //height: 87,
                                      //width: 87,
                                      //padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        itemData6[index].img,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      itemData6[index].discription,
                                      style: TextStyle(
                                        color: itemData6[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: itemData6[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData6[index].expanded =
                                !itemData6[index].expanded;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Hypersensitivity to any drug of the quinolone class.\n• Previous hypersensitivity reactions to penicillin and other beta lactam antibacterial agents\n• Concomitant administration with tizanidine.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Use in pregnancy did not identify any drug-associated risks (e.g., birth defects,miscarriage, or adverse reactions) \n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Ciprofloxacin can be excreted in breast milk as per published literatures.\n• Due to the potential risk of serious adverse reactions in infants, breast feeding is not recommended during treatment with ciprofloxacin. \n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Ciprofloxacin not considered as first drug of choice in the pediatric population due to incidence of adverse reactions. \n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No significant changes in pharmacokinetics of ciprofloxacin have been observed in patients with stable chronic liver cirrhosis.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• In patients with severe renal dysfunction, modification of dosage is recommended.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Increased risk for severe tendon disorders. \n• Caution advised when prescribing ciprofloxacin to geriatric patients especially those on corticosteroids. \n• May be more susceptible to development of QT interval prolongation.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Caution is advised as patients may experience tendinitis and tendon rupture, peripheral neuropathy, central nervous system effects (e.g., seizures (convulsions) risks increase,intracranial pressure increase, dizziness, and tremors etc.) exacerbation of myasthenia gravis, hypersensitivity reactions, hepatotoxicity and Clostridioides difficile-associated diarrhea. \n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 int.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2adv.png',
    ),
  ];

  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "Hypersensitivity to moxifloxacin or any member of the quinolone class of anti-bacterial.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "No available human data but pregnant women should be informed about the potential risk to the fetus.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral and Parenteral \n • May be excreted in human milk. Hence, caution advised while prescribing.\n\n Ophthalmic \n • Low levels of drug may be present in maternal milk following topical ocular administration.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Pediatric ',
      discription:
          "Oral and Parenteral\n • Limited safety data available.\n\nOphthalmic\n • Safe and effective in all ages.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral and Parenteral\n • Caution advised when used in hepatic insufficiency patient due to risk of potential QT prolongation.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Oral and Parenteral\n • No risk observed. \n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral and Parenteral\n • When treated with fluoroquinolones, especially those on corticosteroids there is an increased risk of developing severe tendon disorders \n • Increased rate of aortic aneurysm and dissection within two months.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral and Parenteral\n • Can cause serious adverse reactions, such as tendinitis, tendon rupture, arthralgia, myalgia, peripheral neuropathy, and central nervous system effects.\nOphthalmic\n • Severe hypersensitivity reactions to quinolones can be observed and may require immediate treatment. \n • Severe hypersensitivity reactions to quinolones can be observed and may require immediate treatment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 itr2.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 adv2.png',
    ),
  ];

  List<ItemModel> itemData3 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Hypersensitivity to gatifloxacin, to other quinolones, or to any of the components in the medication\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/drug3.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription: "There are no available data on the use in pregnant women.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          " There are no available data on the use in lactating women\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "In Infants: Safety and effectiveness not establishe\nIn one year or elder: Safe and effective for the treatment of bacterial conjunctivitis\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "There are no available data on the use in patients with hepatic impairment",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "There are no available data on the use in patients with renal impairment",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No special precaution is required",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Patient may experience hypersensitivity, growth of resistant organisms with prolonged use, corneal endothelial cell injury",
      img: '',
    ),
    ItemModel(
      headerItem: 'Instructions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "There is no available data on the interactions.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/drug2adv3.png',
    ),
  ];

  List<ItemModel> itemData4 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "Oral & Ophthalmic\n • Hypersensitivity to levofloxacin, or other quinolone anti-bacterial.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Oral\n • Drug-associated risk of major birth defects, miscarriage or adverse maternal or fetal outcomes were not identified.\n\nOphthalmic\n • No adequate and well-controlled studies in pregnant women.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "Oral\n • Levofloxacin can be excreted in human milk following oral administration. However, no information about effects of levofloxacin on the breastfed infant. \n\nOphthalmic \n • Caution advised while administering levofloxacin to a nursing mother",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral\n • Safety and effectiveness below the age of 6 months have not been established.\n\nOphthalmic\n • No information available about the use in pediatric population.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No special precaution required.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Requires dosage adjustment in patients to avoid accumulation\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Oral\n • Increased risk of developing severe tendon disorders including tendon rupture while on treatment with levofloxacin\n • This risk is increased in patients receiving concomitant corticosteroid therapy.\n\nOphthalmic:\n • No special precaution required",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2warn.png',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2itr3.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Reactions",
      img: 'assets/drug2adv4.png',
    ),
  ];

  List<ItemModel> itemData5 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "History of hypersensitivity or tendon disorders with the use of norfloxacin or any member of the quinolone group of antimicrobial agents.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "No adequate and well-controlled studies in pregnant women.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription: "Not known if norfloxacin is excreted in human milk.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          " The safety and effectiveness of norfloxacin in patients below the age of 18 years have not been established\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: " No special precaution required.\n ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Dose adjustments required as per patient’s renal function.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Elderly patients with impaired renal function may require dose adjustments.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Use of norfloxacin increases the risk of tendinitis and tendon rupture in all ages.\n• Patient’s may also experience exacerbation of myasthenia gravis",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 itr5.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 adv5.png',
    ),
  ];

  //item 6
  List<ItemModel> itemData6 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "History of hypersensitivity associated with the use of ofloxacin or any member of the quinolone group of antimicrobial agents.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "No adequate and well-controlled studies in pregnant women.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "The drug can be excreted in human milk. However, no information about effects of levofloxacin on the breastfed infant.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pediatric\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Safety and effectiveness in pediatric patients below the age of 18 years have not been established.\n• Ofloxacin causes arthropathy (arthrosis) and osteochondrosis in juvenile animals of several species.\n• Ofloxacin causes arthropathy (arthrosis) and osteochondrosis in juvenile animals of several species.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Dose adjustments may be required in patients with hepatic insufficiency/impairment.\n",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Dose adjustments may be required in patients with renal insufficiency/impairment.\n",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Elderly patients are at increased risk for developing tendon disorders including tendon rupture when being treated with ofloxacin.\• This risk is increased in patients receiving concomitant corticosteroid therapy.\n• Elderly patients may be more sensitive to drug-associated effects on the QT interval",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2warn5.png',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 itr6.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug2 adv6.png',
    ),
  ];
}
