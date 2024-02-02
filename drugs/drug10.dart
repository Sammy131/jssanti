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

class drug10 extends StatefulWidget {
  @override
  _drug10State createState() => _drug10State();
}

class _drug10State extends State<drug10> {
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
                    text: 'Tobramycin',
                  ),
                  Tab(
                    text: 'Gentamicin',
                  ),
                  Tab(
                    text: 'Amikacin',
                  ),
                ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Aminoglycosides'),
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
          ]),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Previous history of hypersensitivity to tobramycin or to any aminoglycoside.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• When administered to a pregnant woman aminoglycoside class of drugs can cause fetal harm.\n• They can cross the placenta and cause total irreversible bilateral congenital deafness.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Insufficient data about the presence of drug in human milk and the effects on the breastfed infant or milk production.\n",
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
          "• Safety and effectiveness in pediatric patients below the age of 2 months has not been established.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• No data available about use in hepatic impairment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Increased incidence of nephrotoxicity has been reported following concomitant administration of aminoglycoside antibiotics and cephalosporins. Hence, monitoring of renal function is advised.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Elderly patients are at a higher risk of developing nephrotoxicity and ototoxicity.\n• Monitoring of renal function is advised.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patients may experience Clostridium difficile associated diarrhea (CDAD), ototoxicity, neurotoxicity.\n• Prescribing prophylactically increases the risk of the development of drug-resistant bacteria.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• Ethacrynic acid\n• Furosemide\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 10 adv1.png',
    ),
  ];
  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription: " • Previous history of hypersensitivity to gentamicin.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• When administered to a pregnant woman aminoglycoside class of drugs can cause fetal harm.They can cross the placenta and cause total irreversible bilateral congenital deafness.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription: "• No data available about drug use in lactation.\n",
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
          "• Reports of total irreversible bilateral congenital deafness in children whose mothers received streptomycin during pregnancy.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No specific data available about use in patients with hepatic impairment.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• The risk of nephrotoxicity is greater in patients with impaired renal function.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• No data available about drug use in elderly.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• In the absence of a proven or strongly suspected bacterial infection or a prophylactic indication can increase the risk of the development of drug-resistant bacteria, neuromuscular disorders precipitation.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Ethacrynic acid\n• Furosemide\n• Concurrent and/or sequential systemic or topical use of cisplatin, cephaloridine, kanamycin, amikacin, neomycin, polymyxin B, colistin, paromomycin, streptomycin, tobramycin, vancomycin and viomycin, should be avoided\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 10 adv2.png',
    ),
  ];
  List<ItemModel> itemData3 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription: "• Previous history of hypersensitivity to amikacin.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• When administered to a pregnant woman aminoglycoside class of drugs can cause fetal harm. They can cross the placenta and cause total irreversible bilateral congenital deafness.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Insufficient data about the presence of drug in human milk and the effects on the breastfed infant or milk production.\n",
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
          "• Aminoglycosides should be used with caution in premature and neonatal infants because of the renal immaturity of these patients and the resulting prolongation of serum half-life of these drugs.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "No specific data available about use in patients with hepatic impairment. ",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Neurotoxicity, manifested as vestibular and permanent bilateral auditory ototoxicity, can occur in patients with preexisting renal damage and in patients with normal renal function treated at higher doses and/or for periods longer than those recommended.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• No data available about use in elderly.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No Specific Information\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Ethacrynic acid\n• Furosemide\n• Concurrent and/or sequential systemic or topical use of cisplatin, cephaloridine, kanamycin, neomycin, polymyxin B, colistin, paromomycin, streptomycin, tobramycin, vancomycin and viomycin, should be avoided.\n",
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
      img: 'assets/drug 10 adv3.png',
    ),
  ];
}
