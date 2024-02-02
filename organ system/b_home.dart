//import 'package:exam_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/organ%20system/b1.dart';
import 'package:flutter_complete_guide/organ%20system/b2.dart';
import 'package:flutter_complete_guide/organ%20system/b3.dart';
import 'package:flutter_complete_guide/organ%20system/b4.dart';
import 'package:flutter_complete_guide/organ%20system/b5.dart';

class b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "B. Central Nervous System Infections",
          style: TextStyle(
            color: Colors.black, // Set text color to match the background
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //backgroundColor: Colors.deepOrangeAccent),
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(3.0),
            /*child: Text(
              "B. Central Nervous System Infections",
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
                      title: Text("1. Acute Bacterial Meningitis"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20220218_145658_351119_tetracyclin-500mg-9.max-1800x1800.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => B1()));
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
                      title: Text(
                          "2. Meningitis (Post-Neurosurgery or Penetrating Head Trauma)"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.emra.org/siteassets/emresident/images/articles/2019/06/46-3-fluoroquinolones.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => B2()));
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
                      title: Text("3. Meningitis with basilar skull fractures"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://jodasexpoim.in/wp-content/uploads/2022/05/Cephalosporin-2.jpg",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => B3()));
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
                      title: Text("4. Brain abscess"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://vinmec-prod.s3.amazonaws.com/images/20200427_081020_244546_Azithromycin_500.max-1800x1800.png",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => B4()));
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
                      title: Text("5. Subdural empyema"),
                      subtitle: Text(""),
                      /*leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "",
                        ),
                      ),*/
                      trailing: Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => B5()));
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
