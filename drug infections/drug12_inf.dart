import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  Widget createDescriptionWidget() {
    if (headerItem == 'Preferred and Alternative Treatment') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            discription,
            style: TextStyle(
              color: colorsbody,
              fontSize: 18,
              height: 1.3,
            ),
          ),
          GestureDetector(
            onTap: () {
              _launchURL("https://tbcindia.gov.in/index.php");
            },
            child: Text(
              'https://tbcindia.gov.in/index.php',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      );
    } else {
      return Text(
        discription,
        style: TextStyle(
          color: colorsbody,
          fontSize: 18,
          height: 1.3,
        ),
      );
    }
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class druginf12 extends StatefulWidget {
  @override
  _druginf12State createState() => _druginf12State();
}

class _druginf12State extends State<druginf12> {
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
              'Tuberculosis ',
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
                                    /*Text(
                                      itemData[index].discription,
                                      style: TextStyle(
                                        color: itemData[index].colorsbody,
                                        fontSize: 18,
                                        height: 1.3,
                                      ),
                                    ),*/
                                    itemData[index].createDescriptionWidget(),
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
          "A persistent, gradually advancing infection caused by Mycobacterium tuberculosis that frequently exhibits an initial period of latent infection without noticeable symptoms.M.tuberculosis is resistant to alcohol and acid. It belongs to a group of organisms known as the M. tuberculosis complex, which includes Mycobacterium africanum, Mycobacterium bovis, and Mycobacterium microti.The primary site of infection is typically the lungs. However, it can also affect various other organ systems including the respiratory system, gastrointestinal (GI) system, lymphoreticular system, skin, central nervous system, musculoskeletal system, reproductive system, and liver.\n",
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
      img: 'assets/drug12_inf1.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ofloxacin\n• Levofloxacin\n• Ciprofloxacin \n• Moxifloxacin\n• Amikacin\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Preferred and Alternative Treatment',
      discription: "Kindly refer to RNTCP guidelines",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
  ];
}
