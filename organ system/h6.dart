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

class H6 extends StatefulWidget {
  @override
  _H6State createState() => _H6State();
}

class _H6State extends State<H6> {
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
            'Acute Bacterial Keratitis',
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
          "Infection of the corneal tissue caused by different types of bacteria. The most common species involved are:\n• Staphylococcus aureus\n• Staphylococcus epidermidis\n• Streptococcus pneumoniae\n• Pseudomonas aeruginosa\n• Species of the Enterobacteriaceae family\n\nUse of contact lenses play a significant role in acquiring bacterial keratitis. Factors such as wearing contact lenses overnight, excessive wear, and inadequate lens cleaning can lead to bacterial keratitis. Other external factors that can contribute to this condition include trauma, injuries caused by foreign bodies, exposure to chemicals, mechanical and thermal injuries, contact with insects, previous ocular and eyelid surgeries, compromised immune system, use of corticosteroids and NSAIDs, and substance abuse.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h6def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Eye pain and redness\n• Photophobia\n• Blurred vision\n• Eye discharge (yellowish or greenish discharge, often accompanied by crusting around the eyelids)\n• Foreign body sensation\n• Tearing\n• Corneal infiltrates\n\nDIAGNOSIS:\n• Slit-lamp examination\n• Culture and Gram staining\n• PCR or antigen detection (additional tests to confirm the specific bacterial pathogens)\n\nDIFFERENTIAL DIAGNOSIS:\n• Viral or fungal keratitis\n• Interstitial keratitis\n• Chemical Injury",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h6diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Moxifloxacin • Gatifloxacin\n• Tobramycin • Gentamicin\n• Piperacillin • Ticarcillin\n• Ciprofloxacin • Levofloxacin",
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
          "Acute bacterial keratitis (No comorbidities)\n\nLikely Causative Organisms:\n• S.aureus\n• S.pyogenes\n• Haemophilus spp\n\nEmpirical/First Line:\n• Moxifloxacin topical(0.5%):1 drop 1 hourly for first 48hr,then reduce as per response\n\nAlternative/Second Line:\n• Gatifloxacin 0.3% ophthalmic Solution 1drop 1 hourly for 1st 48 hrs then reduce as per response\n\nComments:\n• Moxifloxacin. Preferable. Treatment may fail against MRSA.\n\n\nAcute Bacterial (Contact lens users)\n\nLikely Causative Organisms:\n• P.aeruginosa\n\nEmpirical/First Line:\n• Tobramycin or Gentamicin 14mg/ml + Piperacilin or Ticarcillin eye drops (6-12mg/mL) q15-60 min around the clock 24-72hr,then slowly reduce frequency\n\nAlternative/Second Line:\n• Ciprofloxacin ophthalmic 0.3% or Levofloxacin\m• Ophthalmic 0.5%\n\nComments:\nNone",
      img: '',
      //'assets/h6alt.png',
    ),
  ];
}
