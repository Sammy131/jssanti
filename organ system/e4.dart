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

class E4 extends StatefulWidget {
  @override
  _E4State createState() => _E4State();
}

class _E4State extends State<E4> {
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
            'Ludwig’s angina & Vincent’s angina',
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
          "Ludwig's Angina:\nBacterial infection that occurs in the area beneath the jaw, specifically affecting the lower part of the mouth.\nIn the majority of cases, Ludwig's angina typically begins as a result of dental infections that specifically affect the molars in the lower jaw, primarily the second and third molars. These are responsible for more than 90% of the cases.\nAdditional, less frequent causes include:\n• Injury or laceration to the bottom part of the mouth\n• Fractures of the mandible\n• Injuries to the tongue or oral piercings \n• Osteomyelitis\n• Traumatic intubation\n• Peritonsillar abscess\n• Submandibular sialadenitis or sialolithiasis\n• Otitis media or infected thyroglossal cysts\n\nVincent’s angina:\nInfection of the gums accompanied with pain and ulcers. Mostly seen in:\n• Smokers \n• Patients with poor oral hygiene\n• Nutritional deficiencies, immunocompromised and sleep deprived patients",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e4def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "Ludwig's Angina:\n\nSYMPTOMS AND SIGNS:\n• Pain and tenderness under the jaw\n• Opening the mouth or swallowing aggravates the pain\n• Fever and chills \n• Swelling\n• Drooling and blockage of the airway due to swelling\n\nDIAGNOSIS:\n• Physical evaluation\n• Imaging (CT, MRI) in comfortable breathing patient or after securing airway.\n• Blood cultures (To confirm hematogenous spread)\n\nDIFFERENTIAL DIAGNOSIS:\nNil\n\nVincent's angina:\n\nSYMPTOMS AND SIGNS:\n• Painful and bleeding gingivae\n• Profuse salivation\n• Bad breath\n• Ulcerations present on the dental papillae and marginal gingiva.\n• Painful while swallowing and talking \n• Regional lymphadenopathy\n\nDIAGNOSIS:\n• Physical evaluation\n\nDIFFERENTIAL DIAGNOSIS:\nNil",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/e4diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Clindamycin • Amoxicillin-Clavulanate\n• Piperacillin-Tazobactam",
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
          "ADULT\n\nLikely Causative Organisms:\n• Polymicrobial\n(Cover oral anaerobes)\n\nEmpirical/First Line:\n• Clindamycin 600 mg IV 8 hourly\n Or\n• Amoxicillin-Clavulanate 1.2gm IV\n\nAlternative/Second Line:\n• Piperacillin-Tazobactam 4.5gm IV 6 hourly\n\nComments:\n• Duration based on improvement\n\nPEDIATRIC(Ludwig's Angina)\n\n• 1st line: Clindamycin IV 8 hourly or Amoxicillin-Clavulanate IV\n• 2nd line: Piperacillin-Tazobactam IV 6 hourly",
      img: '',
      // 'assets/e4alt.png',
    ),
  ];
}
