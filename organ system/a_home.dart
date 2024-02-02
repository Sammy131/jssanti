//import 'package:exam_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/organ%20system/a1.dart';
import 'package:flutter_complete_guide/organ%20system/a10.dart';
import 'package:flutter_complete_guide/organ%20system/a11.dart';
import 'package:flutter_complete_guide/organ%20system/a12.dart';
import 'package:flutter_complete_guide/organ%20system/a13.dart';
import 'package:flutter_complete_guide/organ%20system/a14.dart';
import 'package:flutter_complete_guide/organ%20system/a2.dart';
import 'package:flutter_complete_guide/organ%20system/a3.dart';
import 'package:flutter_complete_guide/organ%20system/a4.dart';
import 'package:flutter_complete_guide/organ%20system/a5.dart';
import 'package:flutter_complete_guide/organ%20system/a6.dart';
import 'package:flutter_complete_guide/organ%20system/a7.dart';
import 'package:flutter_complete_guide/organ%20system/a8.dart';
import 'package:flutter_complete_guide/organ%20system/a9.dart';
//import 'package:flutter_complete_guide/screens/a1.dart';
//import 'package:flutter_complete_guide/screens/gridinfo.dart';

class a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "A. Gastrointestinal & Intra-Abdominal Infections",
          style: TextStyle(
            color: Colors.black, // Set text color to match the background
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        //centerTitle: true
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(3.0),
            /*child: Text(
              "A. Gastrointestinal & Intra-Abdominal Infections",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontFamily: AutofillHints.organizationName),
            ),*/
          ),
          /*const SizedBox(
            height: 40,
          ),*/
          Expanded(
            child: Container(
              width: double.infinity, // Set the desired width here
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                children: <Widget>[
                  Card(
                    child: ListTile(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(12),
                      //         bottomRight: Radius.circular(12))),
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("1. Acute Gastroenteritis / Food poisoning:"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20220218_145658_351119_tetracyclin-500mg-9.max-1800x1800.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A1()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(12),
                      //         bottomRight: Radius.circular(12))),
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("2. Cholera"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.emra.org/siteassets/emresident/images/articles/2019/06/46-3-fluoroquinolones.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A2()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("3. Bacterial dysentery"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://jodasexpoim.in/wp-content/uploads/2022/05/Cephalosporin-2.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A3()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("4. Amoebic dysentery"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20200427_081020_244546_Azithromycin_500.max-1800x1800.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A4()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("5. Giardiasis"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A5()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("6. Enteric fever"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLDosPri3Zda01MdPeQVTLV_AEWY0rW7bHQg&usqp=CAU",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A6()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text(
                          "7. Biliary tract infections (Cholangitis & Cholecystitis)"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://thumbs.dreamstime.com/z/metronidazole-antiprotozoal-medication-molecule-antibiotic-belonging-to-nitroimidazole-class-antibiotics-molecular-207669000.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A7()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("8. Hospital acquired diarrhea"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Canesten.jpg/1200px-Canesten.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A8()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("9. Spontaneous bacterial peritonitis (SBP)"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A9()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text(
                          "10. Secondary peritonitis, Intra-abdominal abscess / GI perforation"),
                      subtitle: Text(""),
                      /*eading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.idstewardship.com/wp-content/uploads/2016/03/IMG_8849.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A10()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("11.Pancreatitis"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A11()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text(
                          "12. Post necrotizing pancreatitis: Infected pseudocyst; Pancreatic abscess"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A12()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("13.Diverticulitis"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A13()));
                      },
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: ListTile(
                      //tileColor: Color.fromARGB(255, 217, 148, 64),
                      title: Text("14. Liver Abscess"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => A14()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
