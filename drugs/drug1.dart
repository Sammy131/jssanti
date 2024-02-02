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

class drug1 extends StatefulWidget {
  @override
  _drug1State createState() => _drug1State();
}

class _drug1State extends State<drug1> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  late ScrollController _scrollController2 = ScrollController();
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
                text: 'Doxycycline',
              ),
              Tab(
                text: 'Tigecycline',
              )
            ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Tetracyclines'),
          ),
          body: TabBarView(children: [
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
                          itemData[index].expanded = !itemData[index].expanded;
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
}
