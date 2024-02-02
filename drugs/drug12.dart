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

class drug12 extends StatefulWidget {
  @override
  _drug12State createState() => _drug12State();
}

class _drug12State extends State<drug12> {
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
                    text: 'Oseltamivir',
                  ),
                  Tab(
                    text: 'Zanamivir',
                  ),
                ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: Text('Anti-Influenza'),
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
          ]),
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Contraindicated in patients with known serious hypersensitivity to oseltamivir or any component of the product.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• No adequate and well-controlled studies with oseltamivir in pregnant women to inform a drug‐associated risk of adverse developmental outcomes.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• Based on limited published data, oseltamivir has been shown to be present in human milk at low levels considered unlikely to lead to toxicity in the breastfed infant\n",
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
          "• The safety and efficacy of oseltamivir for the treatment of influenza in pediatric patients 2 weeks old to 17 years of age has been established.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No dosage adjustment is required in patients with mild to moderate hepatic impairment.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Dosage adjustment is recommended as patients with renal impairment had higher blood levels of oseltamivir compared to patients with normal renal function.\n• Oseltamivir is not recommended for patients with ESRD not undergoing dialysis.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No overall differences in safety or effectiveness were observed between elderly subjects and younger subjects.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patient may experience serious skin/hypersensitivity reactions, neuropsychiatric events and risk of bacterial infections.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Influenza Vaccines- Live Attenuated Influenza Vaccine.\n• No dose adjustments are needed for either oseltamivir or the concomitant drug when coadministering oseltamivir with amoxicillin, acetaminophen, aspirin, cimetidine, antacids (magnesium and aluminum hydroxides and calcium carbonates), rimantadine, amantadine, or warfarin\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 12 adv1.png',
    ),
  ];
  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          "• Contraindicated in patients with history of allergic reaction to any ingredient of Zanamivir formulation, including milk proteins.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• Available data from published studies suggest that use of Zanamivir during pregnancy is not associated with an increased risk of birth defects or adverse maternal or fetal outcome\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "• There are no data on the presence of Zanamivir in human milk or the effects on milk production. \n• Limited data from post-marketing case reports have not suggested a safety concern in infants exposed to breast milk of mothers using Zanamivir.\n",
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
          "• Safety and effectiveness of Zanamivir for treatment of influenza have not been assessed in pediatric patients younger than 7 years.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Safety and efficacy have not been documented in patients with hepatic impairment.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Safety and efficacy have not been documented in the presence of severe renal insufficiency. \n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No overall differences in safety or effectiveness were observed between elderly subjects and younger subjects.\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• Patient may experience bronchospasm, allergic reactions, neuropsychiatric events and bacterial infections\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• Influenza Vaccines- Live Attenuated Influenza Vaccine\n",
      img: '',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/drug 12 adv2.png',
    ),
  ];
}
