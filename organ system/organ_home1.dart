//import 'package:exam_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/organ%20system/a_home.dart';
import 'package:flutter_complete_guide/organ%20system/b_home.dart';
import 'package:flutter_complete_guide/organ%20system/c_home.dart';
import 'package:flutter_complete_guide/organ%20system/d_home.dart';
import 'package:flutter_complete_guide/organ%20system/e_home.dart';
import 'package:flutter_complete_guide/organ%20system/f_home.dart';
import 'package:flutter_complete_guide/organ%20system/g_home.dart';
import 'package:flutter_complete_guide/organ%20system/h_home.dart';
import 'package:flutter_complete_guide/organ%20system/i_home.dart';
import 'package:flutter_complete_guide/organ%20system/j_home.dart';
//import 'package:flutter_complete_guide/screens/gridinfo.dart';

class organHome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Organ System & Infections",
          style: TextStyle(
            color: Colors.black, // Set text color to match the background
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          /*const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              "Organ System & Infections",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontFamily: AutofillHints.organizationName),
            ),
          ),*/
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
                      title: Text(
                          "A. Gastrointestinal & Intra-Abdominal Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20220218_145658_351119_tetracyclin-500mg-9.max-1800x1800.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => a()));
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
                      title: Text("B. Central Nervous System Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.emra.org/siteassets/emresident/images/articles/2019/06/46-3-fluoroquinolones.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => b()));
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
                      title: Text("C. Cardiovascular Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://jodasexpoim.in/wp-content/uploads/2022/05/Cephalosporin-2.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => c()));
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
                      title: Text("D. Skin & Soft Tissue Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20200427_081020_244546_Azithromycin_500.max-1800x1800.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => d()));
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
                      title: Text("E. Respiratory Tract Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => e()));
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
                      title: Text("F. Urinary Tract Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLDosPri3Zda01MdPeQVTLV_AEWY0rW7bHQg&usqp=CAU",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => f()));
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
                      title: Text("G. Bones and Joint Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://thumbs.dreamstime.com/z/metronidazole-antiprotozoal-medication-molecule-antibiotic-belonging-to-nitroimidazole-class-antibiotics-molecular-207669000.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => g()));
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
                      title: Text("H. Eye Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Canesten.jpg/1200px-Canesten.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => h()));
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
                      title: Text("I. Ear Infections"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://d3i71xaburhd42.cloudfront.net/a14a24651929540323fda454ad8c25f1f0d5ca6d/7-Figure3-1.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => i()));
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
                      title: Text("J. Obstetrics and Gynaecology"),
                      subtitle: Text(""),
                      /*eading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.idstewardship.com/wp-content/uploads/2016/03/IMG_8849.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => j()));
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
