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

class E5 extends StatefulWidget {
  @override
  _E5State createState() => _E5State();
}

class _E5State extends State<E5> {
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
            'Acute bacterial rhinosinusitis',
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
          "The inflammation of the paranasal sinuses caused by viral, bacterial, fungal infections orallergic reactions that can last up to 4 weeks.\nTo recognize that the inflammation in sinusitis affects both the sinuses and the nasal cavity, the term rhinosinusitis is commonly preferred.Sinusitis can be categorized into different types based on its duration.\n• Acute sinusitis: Resolves completely within less than 30 days\n• Subacute sinusitis: Complete resolution within a period of 30 to 90 days.\n• Recurrent sinusitis: At least four separate acute episodes per year, with each episode resolving within 30 days but recurring in cycles, with a minimum of 10 days between the resolution of symptoms and the start of a new episode.\n• Chronic sinusitis: Persists for more than 90 days.\n\nEtiology in healthy patients is mostly of viral origin (e.g., rhinovirus, influenza, parainfluenza). A small percentage of patients may develop secondary bacterial infection due to Streptococci, Staphylococci, Pneumococci, Haemophilus influenzae, Catarrhalis or Moraxella.\nHospital-acquired acute infections are usually of bacterial origin, involving Staphylococcus aureus, Pseudomonas aeruginosa, Klebsiella pneumoniae, Enterobacter and Proteus mirabilis.",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e5def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Purulent rhinorrhea\n• Facial pain\n• Nasal congestion and blockage\n• Halitosis\n• Productive cough (especially at night).\n• The area over the affected sinus may be tender, swollen, and erythematous.\n\n• Maxillary sinusitis: Pain in the maxillary area, frontal headache and toothache\n• Frontal sinusitis: Pain in the frontal area and frontal headache\n• Ethmoid sinusitis: Pain behind and between the eyes, a frontal headache\n• Sphenoid sinusitis: Localized pain referred to the frontal or occipital area\n\nDIAGNOSIS:\n• Physical evaluation\n• Imaging (CT scan or X-ray), if required.\n• Cultures (preferred in immunocompromised patients and if empiric treatment fails)\n\nDIFFERENTIAL DIAGNOSIS:\n• Common cold\n• Temporomandibular joint disorders\n• Neuralgias",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e5diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription: "• Amoxicillin-clavulanate • Moxifloxacin\n• Ceftriaxone",
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
          "ADULT\n\nLikely Causative Organisms:\n• Viral\n• S. pneumoniae\n• H.influenzae\n• M. catarrhalis\n\nEmpirical/First Line:\n• Amoxicillin-clavulanate 1gm oral BD for 7 days\n\nAlternative/Second Line:\n• Moxifloxacin 400mg OD for 5-7 days\n\nPEDIATRIC\n\nAcute Sinusitis with URI\n• Oral Amoxycillin (45 mg/kg/day TDS), for 7-10 days.\n• Severe cases\nAmoxycillin Clavulanate (45 mg/kg/day oral BD) or Inj. Ceftriaxone 75 mg/kg/day OD.",
      img: '',
      // 'assets/e5alt.png',
    ),
  ];
}
