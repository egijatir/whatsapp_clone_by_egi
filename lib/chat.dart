import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_egi/awal.dart';

class portofolio extends StatelessWidget {
  const portofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8C062F),
          title: Text("Portofolio"),
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
                                      "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"))),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset("asset/images/foto.jpg"),
                            Text(
                              "Egi Jati Ramadhan",
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                            Text(
                              "Universitas Muhammadiyah Kalimantan Timur",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "10 Desember 1999",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(
                                      flex: 5,
                                    ),
                                    Image.asset(
                                      "asset/images/fb.png",
                                      width: 30,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Image.asset(
                                      "asset/images/ig.png",
                                      width: 30,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Image.asset(
                                      "asset/images/wa.png",
                                      width: 40,
                                    ),
                                    Spacer(
                                      flex: 5,
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
