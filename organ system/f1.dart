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

class F1 extends StatefulWidget {
  @override
  _F1State createState() => _F1State();
}

class _F1State extends State<F1> {
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
            'Acute Cystitis (Uncomplicated)',
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
          "Bladder infection usually occurring as a result of bacterial presence. It is more prevalent in females than men. 80% of nosocomial urinary tract infections are due to urethral catheterization and 5% to 10% are due to genitourinary manipulation.In most of the female patients, acute cystitis is uncomplicated and caused by:\n• Escherichia coli \n• Klebsiella species\n• Staphylococcus saprophyticus  \n• Proteus species\n• Enterobacter species  \n• Citrobacter or Enterococcus species\n\nRisk factors in females include:\n1. Genitourinary system deformities\n2. Lack of vaginal estrogen effect in post-menopausal women\n3. Unsafe sexual intercourse\n4. Urolithiasis\n\nRisk factors in males include:\n1. Prostatitis or Prostatomegaly\n2. Urethritis\n3. Urolithiasis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/f1def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Increased frequency and urgency to urinate\n• Dysuria\n• Suprapubic pain\n• Cloudy urine\n• Hematuria\n\nDIAGNOSIS:\n• Urine dipstick test\n• Urinalysis\n• Urine culture\n\nDIFFERENTIAL DIAGNOSIS:\n• Cervicitis\n• Vulvovaginitis\n• Atrophic vaginitis\n• Syphilis\n• Urethritis\n• Interstitial cystitis\n• Epididymitis\n• Prostatitis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/f1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Nitrofurantoin  • Cotrimoxazole \n• Ciprofloxacin  • Cefuroxime\n• Cefixime  • Amoxycillin + Clavulanic Acid",
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
          "ADULT\n\nLikely Causative Organisms:\n•E. coli\n•Staphylococcus saphrophyticus(in sexually active young women)\n•Klebsiella Pnuemoniae\n\nEmpirical/First Line:\n• Nitrofurantoin 100 mg BD for 7 days or Cotrimoxazole 960mg BD for 3-5 days\n Or\n• Ciprofloxacin 500 mg BD for 3-5 days\n\nAlternative/Second Line:\n• Cefuroxime 250 mg BD for 3-5 days\n\nComments:\n• Get urine cultures before antibiotics and modify therapy based on sensitivities\n\nPEDIATRIC\n\nUncomplicated UTI (age> 2 months with lower UTI, without any urinary tract obstruction)\n\n• Oral Co-trimoxazole (8-10mg of TMP component) /kg/day oral BD \n Or\n• Cefixime (8-10 mg/kg/day BD) to be given for 7-10 days \n Or\n• Amoxycillin + Clavulanic Acid (30-50 mg of Amoxicillin) for 7-10 days",
      img: '',
    ),
  ];
}
