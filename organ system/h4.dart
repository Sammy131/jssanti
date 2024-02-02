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

class H4 extends StatefulWidget {
  @override
  _H4State createState() => _H4State();
}

class _H4State extends State<H4> {
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
            'Herpes Simplex Keratitis',
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
          "Corneal infection caused by herpes simplex virus, which may also affect corneal stroma,anterior chamber and iris.Herpes Simplex Keratitis is categorized into two subtypes, namely HSV-1 and HSV-2, which target different areas of the body. The following factors contribute to the transmission of the disease:\n• HSV-1: Primarily infects the face, lips, and eyes. Corneal involvement is a result of direct infection in these areas.\n• HSV-2: Infects the genitalia, transmission to the eye can occur through infected secretions, either through sexual contact or during birth (causing neonatal conjunctivitis).\n• Environmental conditions: Transmission of HSV is more likely in crowded environments with poor hygiene practices",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nPrimary Infection:\nUsually non-specific and self-limiting. If the cornea is involved then\n• Foreign body sensation\n• Lacrimation\n• Photophobia\n• Conjunctival hyperemia\n\nIn certain cases, vesicular blepharitis may develop, leading to worsening symptoms, blurry vision, and eventual breakdown and ulceration of the blisters. However, these ulcers typically resolve within approximately one week without leaving any permanent scars.\n\nRecurrent infection: Affects the cornea and classified as three types of herpes simplex keratitis\n1. Epithelial keratitis (dendritic keratitis)\n2. Disciform keratitis (localized endotheliitis)\n3. Stromal keratitis\n• Pain and tearing\n• Foreign-body sensation\n• Photophobia\n• Redness and blurred vision\n\nDIAGNOSIS:\n• Physical evaluation\n• Slit-lamp examination:\n• Viral culture or nucleic acid amplification tests\nDIFFERENTIAL DIAGNOSIS:\n• Varicella Zoster ophthalmicus\n• Recurrent corneal erosion\n• Acanthamoeba keratitis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/h4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Trifluridine • Ganciclovir",
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
          'Likely Causative Organisms:\n• sH.simplex type 1&2\n\nEmpirical/First Line:\n• Trifluridine ophthalmic soln 1 drop 2 hourly, up to 9 times/day until re-epithilised.then 1 drop 4 hourly upto 5 times/day for total duration of 21days\n\nAlternative/Second Line:\n• Ganciclovir 0.15% ophthalmic gel for acute herpitic keratitis\n\nComments:\n• Flurescine staining shows topical dendritic figures.30-50% recur within 2years.',
      img: '',
    ),
  ];
}
