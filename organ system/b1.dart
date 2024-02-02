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

class B1 extends StatefulWidget {
  @override
  _B1State createState() => _B1State();
}

class _B1State extends State<B1> {
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
            'Acute Bacterial Meningitis',
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
          "A bacterial infection of the meninges and subarachnoid space that progresses quickly.Causes depend on the following:\n\nA. Age\nIn neonates and young infants:\n• Group B streptococci (Common - S.agalactiae)\n• E. coli and other gram-negative bacteria\n• Listeria monocytogenes\n\nIn older infants, children, and young adults:\n• Neisseria meningitidis\n• Streptococcus pneumoniae\n• N. meningitidis meningitis\n\nIn middle-aged and in older adults\n• S. pneumoniae\n• N. meningitidis (Less Common)\n\nIn people of all ages:\n• Staphylococcus aureus (Occasionally)\n\nB. Route of entry\n• Hematogenous (Most common)\n• From infected structures (e.g., sinuses, mastoid process), sometimes with a CSF leak\n• Through a penetrating head injury\n• Post neurosurgical procedure \n• From congenital or acquired defects of skull or spine\n\nC. Immune status \nCommon causes in immunocompromised patients include:\n\nAIDS, Hodgkin lymphoma:\n• L. monocytogenes\n• Mycobacterium tuberculosis\n\nDefects in humoral immunity or splenectomy:\n• S. pneumoniae\n• N. meningitidis \n\nNeutropenia:\n• Pseudomonas aeruginosa\n• Gram-negative bacteria\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/b1def.png',
    ),
    ItemModel(
      headerItem: 'Diagnostic Approach',
      discription:
          "SYMPTOMS AND SIGNS:\n• Fever\n• Tachycardia\n• Headache\n• Photophobia\n• Changes in mental status \n• Nuchal rigidity\n• Back pain \n• Seizures (Seen up to 40% of children)\n• Severe meningitis can increase intracranial pressure and lead to papilledema\n\nDIAGNOSIS:\n• Cerebrospinal fluid analysis\n• Complete blood count \n• Metabolic panel\n• Blood cultures \n• Polymerase chain reaction\n• CT Scan (To identify contraindications to lumbar puncture)\n\nDIFFERENTIAL DIAGNOSIS:\n• Brain Abscess or Neoplasms\n• CNS vasculitis\n• Delirium Tremens \n• Subarachnoid Hemorrhage\n• Encephalitis\n• Stroke\n• Subdural empyema\n",
      colorsItem: Colors.red,
      Bgcolor: Colors.white,
      panelcol: Colors.white,
      colorsbody: Colors.black,
      img: '',
      //'assets/b1diag.png',
    ),
    ItemModel(
      headerItem: 'Special Considerations / Remarks',
      discription:
          "• Ceftriaxone • Cefotaxime\n• Chloramphenicol • Ampicillin\n• Gentamicin",
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
          "ADULT\n\nLikely Causative Organisms:\n• S. pneumoniae\n• H.influenzae\n• Neisseria\n• Meningititidis\n\nEmpirical/First Line:\n• Ceftriaxone\n• 2 g IV 12hourly/ Cefotaxime\n• 2 g IV 4-6hourly\n(10-14 days treatment)\n\nAlternative/Second Line:\n• Chloramphenicol if patient is allergic to penicillin\n\nComments:\n• Antibiotics should be started as soon as the possibility of bacterial meningitis becomes evident, ideally within 30 minutes. Do not wait for CT scan or LP results.\n• No need to add vancomycin as primary agent, as ceftriaxone resistant\n• Pneumococcus is not common in India.Listeria is also rare in India and so ampicillin is also not indicated Adjust therapy once pathogen and susceptibilities are known.\n\nPEDIATRIC\n\nFirst Line:\n\nAntibiotic:\n• Inj. Ampicillin\n• Inj. Gentamicin\n\nDose:\n• 100 mg/kg/dose\n• 5-7.5 mg/kg/d\n\nFrequency(< 7 days):\n• 12 hrly\n• 5 mg/kg/d 24 hrly\n\nFrequency(> 7 days):\n• 8 hrly\n• 7.5 mg/kg/d 24 hrly\n\nRoute:\n• IV\n\nDuration(Weeks):\n• 3\n\nSecond Line:\n\nAntibiotic:\n• Inj. Cefotaxime\n• Inj. Gentamicin\n\nDose:\n• 50 mg/kg/dose\n• 5-7.5 mg/kg/d\n\nFrequency(< 7 days):\n• 12 hrly\n• 5 mg/kg/d 24 hrly\n\nFrequency (> 7 days):\n• 8 hrly\n• 7.5 mg/kg/d 24 hrly\n\nRoute:\n• IV\n\nDuration (Weeks):\n• 3",
      img: '',
      //'assets/b1alt.png',
    ),
  ];
}
