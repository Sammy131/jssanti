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

class drug3 extends StatefulWidget {
  @override
  _drug3State createState() => _drug3State();
}

class _drug3State extends State<drug3> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  late ScrollController _scrollController2 = ScrollController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: 'Azithromycin',
              ),
              Tab(
                text: 'Clindamycin',
              ),
              Tab(
                text: 'Erythromycin',
              ),
              Tab(
                text: 'Clarithromycin',
              ),
              Tab(
                text: 'Spiramycin',
              ),
              Tab(
                text: 'Daptomycin',
              ),
            ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Macrolides'),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //height: 87,
                                    //width: 87,
                                    //padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      itemData2[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //height: 87,
                                    //width: 87,
                                    //padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      itemData3[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //height: 87,
                                    //width: 87,
                                    //padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      itemData4[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //height: 87,
                                    //width: 87,
                                    //padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      itemData5[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
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
                      expandedHeaderPadding: const EdgeInsets.only(bottom: 0.0),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
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
          ]),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Hypersensitivity to any macrolide or ketolide drug.\n• In patients with a history of azithromycin use associated hepatic dysfunction.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Use in pregnancy did not identify any drug-associated risks (e.g., birth defects, miscarriage, or adverse reactions).\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "Drug can be excreted in breast milk. Lactating mothers receiving azithromycin observed non-serious adverse reactions in infants (e.g., diarrhea, vomiting, or rash) .\n",
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
      discription: "No special precaution is required.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No significant information observed. ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No significant information observed.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "May be more susceptible to development of torsade’s de pointes arrhythmias.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Caution is advised as patients may experience hypersensitivity reactions, hepatotoxicity, infantile hypertrophic pyloric stenosis, QT prolongation, Clostridioides difficile-associated diarrhea, and exacerbation of myasthenia gravis.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/interactions1.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/ad_arith.png',
    ),
  ];
  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "Hypersensitivity to preparations containing clindamycin or lincomycin.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Use only during the first trimester of pregnancy, if needed.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription: "May cause adverse effects on the breast-fed infants.\n",
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
          "Administration to individuals less than 16 years requires appropriate monitoring of organ functions.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "The elimination half-life is increased slightly in patients with markedly reduced hepatic function. ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "The elimination half-life is increased slightly in patients with markedly reduced renal function",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Caution advised if patient’s have a history of gastrointestinal disease or renal disease.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Patient may experience Clostridioides Difficile-Associated Diarrhea (CDAD),anaphylactic shock and anaphylactic reactions.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Rifampicin",
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
      img: 'assets/images/ad_clind.png',
    ),
  ];
  List<ItemModel> itemData3 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "Known hypersensitivity to erythromycin.Concomitant use of HMG CoA reductase inhibitors, terfenadine, astemizole, cisapride, pimozide, ergotamine, or dihydroergotamine.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Cardiovascular malformations may be observed after exposure to drug during early pregnancy.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "May excrete in human milk. Hence, caution advised when administered to a nursing woman.\n",
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
          "Use in infants may cause infantile hypertrophic pyloric stenosis (IHPS).",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Caution advised when erythromycin is administered to patients with impaired hepatic function. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "In patients receiving erythromycin concomitantly with lovastatin, rhabdomyolysis with or without renal impairment can be observed. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Elderly patients with reduced renal or hepatic function have increased risk for erythromycin induced hearing loss.\n• Also, more susceptible to develop of torsade’s de pointes.\n• Increased effects of oral anticoagulant therapy can be observed while undergoing treatment with erythromycin.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Caution is advised due to risk of hepatotoxicity, QT prolongation, syphilis in pregnancy,Clostridium difficile Associated Diarrhea, development of drug-resistant bacteria, exacerbation of symptoms of myasthenia gravis and new onset of symptoms of myasthenic syndrome.Prolonged or repeated use can result in superinfection.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Theophylline     • Ergotamine/dihydroergotamine \n• Triazolobenzodiazepines and related benzodiazepines     • HMG-CoA Reductase Inhibitors \n• Sildenafil     • Colchicine",
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
      img: 'assets/images/ad_ery.png',
    ),
  ];
  List<ItemModel> itemData4 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Hypersensitivity to clarithromycin, erythromycin, or any of the macrolide antibiotics.\n• In patients with a history of cholestatic jaundice or hepatic dysfunction associated with prior use of clarithromycin.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Not recommended for use in pregnant women unless no alternative available.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription: "Clarithromycin can be excreted in human milk.\n",
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
          "Safety and effectiveness of clarithromycin in pediatric patients under 6 months of age have not been established.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No dosage adjustment required in patients with hepatic impairment. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No dosage adjustment required in patients with hepatic impairment.\n• However, in the presence of severe renal impairment with or without coexisting hepatic impairment, decreased dosage or prolonged dosing intervals may be appropriate.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No special precaution required. However, reports of colchicine toxicity with concomitant use of clarithromycin and colchicine have been reported. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patients may experience severe acute hypersensitivity reactions- severe acute hypersensitivity reactions, such as anaphylaxis, Stevens-Johnson Syndrome, toxic epidermal necrolysis, drug rash with eosinophilia and systemic symptoms (DRESS), Henoch-Schonlein Purpura, and acute generalized exanthematous pustulosis.\n• Prolongation of the QT interval and infrequent cases of arrhythmia have also been reported. Hence, advise to avoid clarithromycin in patients with history to arrhythmias\n• Hepatic dysfunction, including increased liver enzymes, and hepatocellular and/or cholestatic hepatitis, with or without jaundice, has been reported with clarithromycin.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/inter_clar.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "Reactions",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/ad_clar.png',
    ),
    /**/
  ];
  List<ItemModel> itemData5 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "Hypersensitivity to spiramycin or any of the macrolide antibiotics\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Safety and effectiveness of this product for use during pregnancy has not been established\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription: "No information available for use in lactating women\n",
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
      discription: "No information available for use in lactating women.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No information available for use in patients with hepatic impairment ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No information available for use in patients with renal impairment",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No information available for use in elderly.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Possibility of superinfection.Development of Drug Resistant Bacteria",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• Carbidopa  • Levodopa",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/ad_spir.png',
    ),
    /**/
  ];
  List<ItemModel> itemData6 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription: "Hypersensitivity to daptomycin.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "Limited data available on use of daptomycin in pregnant women. Data is insufficient to confirm a drug-associated risk for major birth defects and miscarriage.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "Limited data available on use of daptomycin in lactating women. However, the drug can be excreted in human milk.\n",
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
          "• Safety and effectiveness in pediatric patients below the age of 1 year have not been established.\n• Also caution advised in pediatric patients with renal impairment and dosage regimen has not been established in these patients.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No data available on use of daptomycin in patients with hepatic impairment. ",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Dose adjustments may be required in patients receiving hemodialysis or continuous ambulatory peritoneal dialysis (CAPD).",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No dose adjustments required for elderly patients.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patient may experience anaphylaxis/hypersensitivity reactions, myopathy and rhabdomyolysis, eosinophilic pneumonia, Drug Reaction with Eosinophilia and Systemic Symptoms (DRESS), tubulointerstitial nephritis (TIN) and peripheral neuropathy\n• Potential nervous system and/or muscular system effects in pediatric patients younger than 12 months\n• Clostridioides difficile-Associated Diarrhea, Increased International Normalized Ratio (INR)/prolonged prothrombin time, development of drug-resistant bacteria.",
      img: 'assets/space.png',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• HMG-CoA Reductase Inhibitors\n• Drug-Laboratory Test Interactions",
      img: 'assets/images/fees struc.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/ad_dop.png',
    ),
    /**/
  ];
}
