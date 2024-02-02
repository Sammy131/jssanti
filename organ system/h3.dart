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

class H3 extends StatefulWidget {
  @override
  _H3State createState() => _H3State();
}

class _H3State extends State<H3> {
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
            ' Conjunctivitis',
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
          "Inflammation of the conjunctiva as a result of infection, allergy, or irritation.Conjunctivitis can be caused by various infectious agents, including bacteria, viruses, fungi, and parasites. However, the majority of acute conjunctivitis cases are of viral origin. For example:\n\nAdenovirus (Most Prevalent)\n• Herpes Simplex\n\n• Enterovirus\n• Herpes Zoster\n\nBacterial conjunctivitis is more frequently observed in children compared to adults, and the specific pathogens responsible for bacterial conjunctivitis differ depending on the age group.\n\nAdult (Staphylococcus species are most common)\n• Staphylococcus aureus\n• Streptococcus pneumoniae\n• Haemophilus influenza\n\nChildren\n• H. influenza\n• S. pneumoniae\n• Moraxella catarrhalis\n\nOther bacterial agents include N gonorrhoeae, Chlamydia trachomatis, and Corynebacterium diphtheriae. N gonorrhoeae is the prevailing cause of bacterial conjunctivitis in neonates and sexually active adults.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nBACTERIAL:\n• Redness and foreign body sensation\n• Matted eyes in the morning\n• White-yellow purulent or mucopurulent discharge\n• Conjunctival papillae\n• Preauricular lymphadenopathy (Infrequent)\n\nVIRAL:\n• Itching and tearing \n• Watery discharge\n• Inferior palpebral conjunctival follicles\n• Tender preauricular lymphadenopathy\n• History of recent upper respiratory tract infection\n\nALLERGIC:\n• Itching or burning\n• Watery discharge\n• Edematous eyelids\n• Conjunctival papillae\n• History of allergies/atopy\n\nDIAGNOSIS:• Physical evaluation \n• Rapid antigen testing (for adenoviruses)\n• Eyelid cultures and cytology (recurrent conjunctivitis, suspected gonococcal or chlamydial infection and adults presenting with severe purulent discharge)\n\nDIFFERENTIAL DIAGNOSIS:\n• Iritis, Keratitis, Episcleritis or Scleritis\n• Corneal ulcer, abrasion or foreign body\n• Hordeolum\n• Chalazion\n• Blepharitis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h3diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Gatifloxacin • Levofloxacin\n• Moxifloxacin",
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
          "Viral Conjunctivitis(pink eye)\n\nLikely Causative Organisms:\n• S.aureus\n• S.pneumoniae\n• H.influenzae\n\nEmpirical/First Line:\n• No antibiotics required treat for symptoms\n\nAlternative/Second Line:\nNone\n\nComments:\n• Highly contagious.\n• If pain & photophobia the suggestive of keratitis.\n\n\nBacterial Conjunctivitis\n\nLikely Causative Organisms:\n• S.aureus\n• S.pneumoniae\n• H.influenzae\n\nEmpirical/First Line:\nOphthalmologic solution:\n• Gatifloxacin 0.3%\n• levofloxacin 0.5%\n• Moxifloxacin 0.5%\n1-2 drops q2h while awake during 1st 2 days, then q4-8h upto 7 days\n\nAlternative/Second Line:\nNone\n\nComments:\nUncommon causes:\n• Chlamydia\n• trachomatis\n• N.gonorrhoeae",
      img: '',
    ),
  ];
}
