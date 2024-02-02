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

class I3 extends StatefulWidget {
  @override
  _I3State createState() => _I3State();
}

class _I3State extends State<I3> {
  //late ScrollController _scrollController = ScrollController();
  //late ScrollController _scrollController1 = ScrollController();
  //late ScrollController _scrollController2 = ScrollController();
  //int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            'Mastoiditis',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
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
                      headerBuilder: (BuildContext context, bool isExpanded) {
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
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
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
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Definition & Etiology',
      discription:
          "Bacterial infection of the air cells within the mastoid bone, usually occurring as a sequel to acute otitis media. Due to their higher vulnerability to middle ear infections, children are at a greater risk of developing acute mastoiditis compared to adults.The predominant causative agent in mastoiditis is Streptococcus pneumoniae. Other frequently encountered pathogens include Group A beta-hemolytic streptococci, Staphylococcus aureus, Streptococcus pyogenes, and Haemophilus influenzae.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever \n• Otalgia\n• Purulent otorrhea\n• Redness, swelling and tenderness over the mastoid process\n• Pinna displaced laterally and inferiorly\n\nDIAGNOSIS:\n• Physical evaluation\n• CT Scan (If an intra-temporal or intra-cranial complication is suspected)\n\nDIFFERENTIAL DIAGNOSIS:\n• Cellulitis\n• Otitis externa\n• Tumor\n• Trauma",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/i3diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Cefotaxime • Ceftriaxone \n• Piperacillin- tazobacta • Meropenem\n• Amoxicillin-clavulanate",
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
          "ADULT:\n\nAcute\n\nLikely Causative Organisms:\n• S.pneumoniae\n• S.aureus\n• H.infiuenzae\n• P.aeruginosa\n\nEmpirical/First Line:\n• Cefotaxime 1-2 gm iv 4-8 hourly\n• Ceftriaxone 2 gm iv OD\n\nAlternative/Second Line:\nNone\n\nComments:\n• Modify as per culture Unusual causes-Nocardia, TB, Actinomyces.\n\n\nChronic\n\nLikely Causautive Organisms:\n• Polymicrobial\n\nEmpirical/First Line:\n• Piperacillin- tazobactam 4.5g IV 8h\n• Meropenem 1 gm iv 8h\n\nAlternativr/Second Line:\nNone\n\nComments:\nNone\n\nPEDIATRIC:\n\n• Inj. Amoxicillin-clavulanate OR 3rd Gen Cephalosporin (Ceftriaxone/ cefotaxime). ",
      img: '',
    ),
  ];
}
