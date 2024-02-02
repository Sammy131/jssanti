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

class B4 extends StatefulWidget {
  @override
  _B4State createState() => _B4State();
}

class _B4State extends State<B4> {
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
            'Brain abscess',
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
          "An intracerebral pus collection which can result from:\n• Direct extension of cranial infections (e.g., osteomyelitis, mastoiditis, sinusitis)\n• Penetrating head wounds (e.g., neurosurgical procedures)\n• Hematogenous spread (e.g., bacterial endocarditis or IV drug abuse)\n• Unknown causes\nThe associated bacteria are often anaerobic and occasionally mixed, frequently comprising anaerobes, such as bacteroides and anaerobic and microaerophilic streptococci.Staphylococci are frequently involved with endocarditis, neurosurgery, and brain trauma.Chronic ear infections may isolate Enterobacteriaceae. Anaerobic bacteria, streptococci, and gram-negative bacteria are frequent causes of chronic suppurative otitis media.Abscesses can be caused by fungi (like Aspergillus) and protozoa (like Toxoplasma gondii, especially in HIV-positive people).",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Headache\n• Nausea and vomiting\n• Lethargy\n• Seizures\n• Personality changes\n• Papilledema\n• Focal neurologic deficits\n\nLeukocytosis, fever, and chills can appear prior to the encapsulation of the infection, but they might also be absent at presentation\n\nDIAGNOSIS:\n• Contrast-enhanced MRI or contrast-enhanced CT\n• Complete blood count with differential and platelet count\n• Erythrocyte sedimentation rate\n• Serum C-reactive protein\n• Blood cultures\n\nDIFFERENTIAL DIAGNOSIS:\n• Bacterial meningitis\n• Demyelination\n• Encephalitis\n• Brain tumors\n• Epidural/subdural abscess\n• Fungal or parasitic infestations: Cryptococcosis/Cysticercosis",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/b4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ceftriaxone • Cefotaxime\n• Metronidazole • Meropenem\n• Vancomycin • Teicoplanin ",
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
          "ADULT\n\nLikely Causative Organisms:\n• Streptococci\n• Bacteroides\n• Enterobacteria-ceae\n• S.aureus\n\nEmpirical/First Line:\n• Ceftriaxone 2 gm IV 12 hourly\n Or\n• Cefotaxime 2 gm IV 4-6 hourly\n AND\n• Metronidazole 1 gm IV 12 hourly\n\nDuration of treatment to be decided by clinical & radiological response, minimum two months required.\n\nAlternative/Second Line:\n• Meropenem 2gm IV 8 hourly\n\nComments:\nExclude\n• TB\n• , Nocardia\n• Aspergillus\n• Mucor\n\n• If abscess <2.5cm & patient neurologically stable, await response to antibiotics. Otherwise, consider aspiration/surgical drainageand modify antibiotics as per sensitivity of aspirated/drained secretions\n\nPEDIATRIC:\n• Inj. Ceftriaxone + Vancomycin \n Or\n• Inj. Teicoplanin + Metronidazole\n\nDrain pus, rationalize antibiotics according to culture and sensitivity and continue for 3 to 4 weeks.",
      img: '',
      //'assets/b4alt.png',
    ),
  ];
}
