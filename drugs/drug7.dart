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

class drug7 extends StatefulWidget {
  @override
  _drug7State createState() => _drug7State();
}

class _drug7State extends State<drug7> {
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
            bottom: const TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white30,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'Metronidazole',
                  ),
                  Tab(
                    text: 'Tinidazole ',
                  ),
                ]),
            //backgroundColor: Color.fromARGB(255, 214, 84, 67),
            backgroundColor: Color.fromARGB(255, 241, 71, 9),
            centerTitle: true,
            title: const Text('Nitroimidazoles'),
          ),
          body: TabBarView(children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: itemData.length,
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
                          backgroundColor: itemData[index].panelcol,
                          canTapOnHeader: true,
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            //itemData[index].expanded = selected;
                            isExpanded = itemData[index].expanded;
                            //expanded[index]==selected,
                            return Container(
                              color: itemData[index].Bgcolor,
                              padding: const EdgeInsets.all(10),
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
          "Hypersensitivity to metronidazole or other nitroimidazole derivatives.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Pregnancy',
      discription:
          "• No adequate and well-controlled studies in pregnant women.\n• Use of metronidazole for trichomoniasis during pregnancy should be avoided if alternative treatment is available.\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Lactation ',
      discription:
          "Metronidazole is secreted in human milk in concentrations similar to those found in plasma.\n",
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
          " Safety and effectiveness in pediatric patients have not been established, except for the treatment of amebiasis",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Plasma clearance of metronidazole is decreased in patients with decreased liver function.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Decreased renal function does not alter the single-dose pharmacokinetics of metronidazole",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "In elderly patients, monitoring of serum levels may be necessary to adjust the metronidazole dosage.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Patients may experience convulsive seizures and peripheral neuropathy. ",
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
      img: 'assets/inter_drug7.1.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/ad_drug7.1.png',
    ),
  ];
  List<ItemModel> itemData2 = <ItemModel>[
    ItemModel(
      headerItem: 'Contraindication',
      discription:
          " • Hypersensitivity to tinidazole or other nitroimidazole derivatives.\n• In patients with Cockayne syndrome.\n",
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
      discription:
          "No reports of adverse effects on the breastfed infant and no information on the effects of tinidazole on milk production.\n",
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
          "Safety and effectiveness of tinidazole in pediatric patients have not been established. Other than for use in the treatment of giardiasis and amebiasis in pediatric patients older than three years of age.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with hepatic impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "Usual recommended doses of tinidazole should be administered cautiously in patients with hepatic dysfunction",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in patients with renal impairment\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription:
          "• No dose adjustments are necessary in these patients.\n• Patients undergoing hemodialysis: If tinidazole is administered on the same day as and prior to hemodialysis, it is recommended that an additional dose of tinidazole equivalent to one half of the recommended dose be administered after the end of the hemodialysis.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Use in elderly\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "No confirmed data available about use in elderly.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Warnings & Precautions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "• There is potential for genotoxicity and carcinogenicity.",
      img: '',
    ),
    ItemModel(
      headerItem: 'Interactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      img: 'assets/inter_drug7.2.png',
    ),
    ItemModel(
      headerItem: 'Adverse Reactions\n',
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      discription: "",
      //"NOTE: The KOS is not receiving any financial grant from Central Government or State Government.",
      img: 'assets/ad_drug7.2.png',
    ),
  ];
}
