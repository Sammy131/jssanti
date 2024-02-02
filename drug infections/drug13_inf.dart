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
              _launchURL("https://nhm.gov.in");
            },
            child: Text(
              'https://nhm.gov.in',
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

class druginf13 extends StatefulWidget {
  @override
  _druginf13State createState() => _druginf13State();
}

class _druginf13State extends State<druginf13> {
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
              'Syphillis',
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
          "Syphilis is a widespread infection caused by the bacterium Treponema pallidum, affecting the entire body. During pregnancy, this infection becomes a significant concern due to the potential transmission of the bacterium from the mother to the fetus through the placenta. Congenital infection, which occurs in the fetus, can lead to various unfavorable consequences, including perinatal mortality.",
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
      img: 'assets/drug13_inf1.png',
    ),
    ItemModel(
      headerItem: 'Preferred and Alternative Treatment',
      discription: "Kindly refer to STD program guidelines",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
  ];
}

/*class MyLinkWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL("https://nhm.gov.in");
      },
      child: Text(
        'Kindly refer to STD program guidelines',
        style: TextStyle(
          color: Colors.blue, // You can change the color to your preference
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}*/
