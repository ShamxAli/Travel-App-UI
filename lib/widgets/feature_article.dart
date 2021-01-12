import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {

  final name;
  final image;
  final coverImage;
  FeatureCard({this.name , this.image , this.coverImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: Image.asset(
                        coverImage,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, bottom: 14.0, left: 14.0, right: 40.0),
                    child: Text(
                      'Explore new places and meet new people',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 2.0, bottom: 14.0, left: 14.0,),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            radius: 18.0,
                            backgroundImage: AssetImage(image),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(name , style: TextStyle(fontSize: 13.0 , color: Colors.deepOrange[400] , fontWeight: FontWeight.w600),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text('Today - 10m read' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.bookmark_outline_rounded, color: Colors.grey , size: 28.0,),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }


}
