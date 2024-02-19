import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Post",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "TheWeddingSignature",
            fontSize: 40,
          ),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFEA80FE), Color(0xFFFE91E63)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("url"))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("assets/mie.jpeg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "My Monday at Kost",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFFF56050),
                                  fontFamily: "TheWeddingSignature",
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Post on ",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "feb, 19 2024",
                                    style: TextStyle(
                                        color: Color(0xFFF56050), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(
                                  flex: 10,
                                ),
                                //icon
                                Icon(
                                  Icons.thumb_up,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                //text
                                Text(
                                  "99",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                // icon
                                Icon(
                                  Icons.comment,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                //text
                                Text(
                                  "88",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(Icons.share, size: 20, color: Colors.grey,),
                                Spacer(flex: 10,),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
