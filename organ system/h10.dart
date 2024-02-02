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

class H10 extends StatefulWidget {
  @override
  _H10State createState() => _H10State();
}

class _H10State extends State<H10> {
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
            'Endophthalmitis',
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
          "Inflammation of the inner layers of the eye, caused by the presence and spread of infectious agents within the intraocular fluids, leading to the release of exudate. Endophthalmitis is categorized into two types based on the mode of entry of the organism: exogenous and endogenous. Exogenous endophthalmitis can further be classified as post-traumatic or postoperative, depending on the causative event.\nThere are two primary categories of endophthalmitis based on the infectious agent involved: \nbacterial and fungal endophthalmitis.\n\nBACTERIAL:\n• Staphylococcus epidermidis / Viridans / aureus\n• Pseudomonas aeruginosa\n• Enterobacteriaceae\n\nFUNGAL\n• Aspergillus species\n• Candida species",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/h10def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n\nPostoperative endophthalmitis\n• Eye pain and redness\n• Eyelid edema or corneal edema\n• Photophobia\n• Ocular discharge (white or yellow)\n• Loss of the red reflex\n• Poor visual acuity\n• Vitreous inflammation and poor fundus visualization\n• Hypopyon\n\nEndogenous endophthalmitis\n• Pain and redness\n• Blurred vision\n• Subretinal abscess\n\nInitially, endogenous fungal endophthalmitis can manifest as focal choroiditis or chorioretinitis and subsequently spread to the vitreous cavity.\nIn certain conditions, there may be accompanying retinal vascular sheathing, vascular occlusion, and satellite lesions.\n\nDIAGNOSIS:\n• Slit lamp examination\n• Blood and urine cultures\n• Vitreous culture and stain\n• Ultrasound B scan\n\nDIFFERENTIAL DIAGNOSIS:\n\nPost-surgical Endophthalmitis\n• Toxic anterior segment syndrome (TASS) \n• Phacoanaphylaxis \n• Posteriorly dislocated lens matter\n• Fibrinous reaction post vitrectomy\n\nNon-surgical Endophthalmitis\n• Chronic uveitis \n• Panuveitis\n• Old vitreous hemorrhage\n• Retained intraocular foreign body\n• Acute retinal necrosis\n• Toxoplasma retinochoroiditis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      // 'assets/h10diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Amphotericin B • Flucytosine \n• Vancomycin • Ceftazidime \n• Meropenem • Ceftriaxone \n• Voriconazole",
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
          "Endophthalmits Bacterial\n\nLikely Causative Organisms:\n• Post-ocular surgery\n\nEmpirical/First Line:\n• S.epidermidis\n• S. aureus\n• Streptococci\n• enterococci\n• Gram- negative bacilli\n\nAlternative/Second Line:\n• Immediate ophthalmological consultation. Immediate vitrectomy+ intravitreal antibiotics (Inj Vancomycin + Inj ceftazidime).\n\nComments:\n• Adjuvant systemic antibiotics ( doubtful value in post cataract surgery endophthalmitis)Inj Vancomycin+ Inj Meropenem\n\nHematogenous\n\nEmpirical/First Line:\n• S.pneumoniae\n• N.meningitidis\n• S. aureus\n• Group B streptococcus\n• K. pneumoniae\n\nAlternative/Second Line:\n• Intravitreal antibiotics Inj Vancomycin + Inj ceftazidime + Systemic antibiotics Inj Meropenem 1gm iv q8h /Inj Ceftriaxone 2gm iv q24h + Inj Vancomycin 1g iv q12h\n\nComments:\nNone\n\nEndophthalmitis Mycotic (Fungal)\n\nLikely Causative Organisms:\n• Candida sp\n• Aspergillus sp.\n\nEmpirical/First Line:\n• Intavitreal amphotericin B 0.005-0.01 mg in 0.1 ml Systemic therapy:\nAmphotericin B 0.7-1mg/kg + Flucytosine 25mg/kg qid\n\nAlternative/Second Line:• \nLiposomal Amphotericin B 3-5mg/kg \n Or\n• Voriconazole \n\nComments:\nDuration of treatment 4-6 weeks or longer depending upon clinical response.Patients with chorioretinitis and ocular involvement other than endophthalmitis often respond to systemically administered antifungals",
      img: '',
      // 'assets/h10alt.png',
    ),
  ];
}
