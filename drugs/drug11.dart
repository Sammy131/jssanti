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

class drug11 extends StatefulWidget {
  @override
  _drug11State createState() => _drug11State();
}

class _drug11State extends State<drug11> {
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
                    text: 'Acyclovir',
                  ),
                  Tab(
                    text: 'Famciclovir',
                  ),
                  Tab(
                    text: 'Valacyclovir',
                  ),
                  Tab(
                    text: 'Ganciclovir',
                  ),
                  Tab(
                    text: 'Trifluridine',
                  ),
                ]),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Anti-viral'),
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
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
                              scrollbarOrientation: ScrollbarOrientation.bottom,
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
          ]),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Previous history of hypersensitivity to acyclovir or valacyclovir.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "No adequate and well-controlled studies in pregnant women hence should be used during pregnancy only if clearly needed.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Acyclovir should be administered to a nursing mother with caution and only when indicated.\n",
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
          "• Safety and effectiveness of acyclovir in pediatric patients less than 2 years of age have not been established.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• No data available about use in hepatic impairment\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dosage adjustment is recommended when administering acyclovir to patients with renal impairment\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Elderly patients are more likely to have reduced renal function and CNS adverse events thus require dose reduction.\n ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patient may experience Renal failure, Thrombotic thrombocytopenic purpura/hemolytic uremic syndrome (TTP/HUS).\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• Probenecid\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 11 adv1.png',
    ),
  ];
  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription: "• Previous history of hypersensitivity to famciclovir.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• Use in pregnant women have not identified a drug-associated risk of major birth defects, miscarriage or adverse maternal or fetal outcomes.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Famciclovir should be administered to a nursing mother with caution and only when indicated.\n",
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
          "• The efficacy of famciclovir has not been established in pediatric patients\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No dosage adjustment is recommended for patients with mild or moderate hepatic impairment. ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dosage adjustment required in patients with renal impairment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No dosage adjustment is recommended unless renal function is impaired.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patient may experience acute renal failure with inappropriate high doses of famciclovir.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• Digoxin \n• Probenecid\n• Raloxifene\n• Penciclovir",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 11 adv2.png',
    ),
  ];
  List<ItemModel> itemData3 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Previous history of hypersensitivity reaction (e.g., anaphylaxis) to valacyclovir\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• No adequate and well-controlled studies of valacyclovir in pregnant women\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Valacyclovir should be administered to a nursing mother with caution and only when indicated.\n",
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
          "• Valacyclovir is indicated for treatment of cold sores in pediatric patients ≥12 years of age and for treatment of chickenpox in pediatric patients 2 to <18 years of age.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No special precaution needed. However, central nervous system adverse reactions have been reported both adult and pediatric patients with or without reduced renal function.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dosage reduction is recommended when administering valacyclovir to patients with renal impairment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dose reduction required as elderly patients are more likely to have reduced renal function and are more likely to have renal or CNS adverse events.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Patients as they may experience thrombotic thrombocytopenic purpura/hemolytic uremic syndrome (TTP/HUS), acute renal failure, central nervous system effects.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No clinically significant drug-drug or drug-food interactions with valacyclovir are known.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 11 adv3.png',
    ),
  ];
  List<ItemModel> itemData4 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Previous history of hypersensitivity reaction (e.g., anaphylaxis) to ganciclovir, valganciclovir or acyclovir.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• No adequate human data are available to confirm the pregnancy outcomes.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• No data are available regarding the presence of ganciclovir in human milk, the effects on the breastfed infant, or the effects on milk production.\n",
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
          "• Safety and efficacy of ganciclovir have not been established in pediatric patients.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• The safety and efficacy of ganciclovir have not been studied in patients with hepatic impairment.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dose reduction is recommended when administering ganciclovir to patients with renal impairment\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Elderly patients are more likely to have decreased renal function. Hence, care should be taken in dose selection.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patients as they may experience hematologic toxicity, impairment of renal function, impairment of fertility, fetal toxicity, mutagenesis and carcinogenesis.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: '',
      img: 'assets/drug 11 int4.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: '',
      img: 'assets/drug 11 adv4.png',
    ),
    /**/
  ];
  List<ItemModel> itemData5 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Contraindicated for patients who develop hypersensitivity reactions or chemical intolerance to trifluridine.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• No adequate and well-controlled studies in pregnant women.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• It is unlikely that trifluridine is excreted in human milk.\n",
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
          "• Safety and effectiveness in pediatric patients below six years of age have not been established.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No data available about use in patients with hepatic impairment. ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No data available about trifluridine use in renal impairment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No overall differences in safety or effectiveness have been observed between elderly and younger patients\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• The drug can cause mild local irritation of the conjunctiva and cornea when instilled but these effects are usually transient.\n• Recommended dosage and frequency of administration should not be exceeded.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• No data available about interactions.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 11 adv5.png',
    ),
    /**/
  ];
}
