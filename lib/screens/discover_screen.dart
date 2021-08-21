import 'package:ebook_library/style/style.dart';
import 'package:flutter/material.dart';

class DivscoverScreen extends StatelessWidget {
  const DivscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 10),
                Text("NEWS AND INTERVIEWS", style: texstyleBoldBlack),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1514894780887-121968d00567?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJvb2tzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            height: 250,
                            fit: BoxFit.cover,
                            width: double.infinity),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                  "Meet the Atuhors of Summer`s Biggest Mysteries"),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text("26 likes", style: textsyleGreyNormal),
                                  SizedBox(width: 10),
                                  Text("4 comments", style: textsyleGreyNormal),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("SEE MORE POSTS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen[900])),
                SizedBox(height: 10),
                Container(
                  height: .5,
                  color: Colors.black.withOpacity(0.5),
                ),
                SizedBox(height: 20),
                Text(
                  "FEATURED LISTS",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 20),
                Container(
                  height: 210,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 10,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 230,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1598664977841-9e0f003548c0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZWJvb2tzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Best Books Ever",
                                style: texstyleBoldBlack16,
                              ),
                              Text(
                                "56,863 books",
                                style: textsyleGreyNormal,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
