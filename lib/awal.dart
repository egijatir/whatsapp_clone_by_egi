import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_egi/chat.dart';

class awal extends StatelessWidget {
  const awal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Egi JR"),
          backgroundColor: Color(0xFF8C062F),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.find_in_page)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter))),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: (550),
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                              )),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              20,
                              50 + MediaQuery.of(context).size.height * 0.30,
                              20,
                              20),
                          child: Column(
                            children: [
                              Text(
                                "Beautiful Sunset at Paddy And Grass Field",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color(0xFFFE5788), fontSize: 25),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Di posting",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 9),
                                    ),
                                    Text(
                                      " pada 10 desember 1999",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Color(0xFFFE5788),
                                          fontSize: 9),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 16,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text("90", style: TextStyle(fontSize: 10)),
                                    Spacer(
                                      flex: 5,
                                    ),
                                    Icon(
                                      Icons.comment,
                                      size: 16,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text(
                                      "922",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Spacer(
                                      flex: 10,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color(0xFFFE5788)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return portofolio();
                                        }));
                                      },
                                      child: Icon(Icons.navigate_next),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
