
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/utils/data_lists.dart';
import 'package:flutter_ui_design/widgets/custom_divider.dart';
import 'package:flutter_ui_design/widgets/feature_article.dart';
import 'package:flutter_ui_design/widgets/header_text.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 30.0, bottom: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Articles',
                    style: TextStyle(
                        fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.search,
                    size: 28.0,
                  )
                ],
              ),
              Text(
                'Discover things of this world',
                style: TextStyle(color: Colors.grey),
              ),
              CustomDivider(),
              HeaderText('TOP AUTHORS'),
              Container(
                height: 100.0,
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: authorList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(authorList[index].image),
                            ),
                            Text(authorList[index].name)
                          ],
                        ),
                      );
                    }),
              ),
              CustomDivider(),
              HeaderText('FEATURED ARTICLES'),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: authorList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FeatureCard(
                        name: authorList[index].name,
                        image: authorList[index].image,
                        coverImage: authorList[index].coverImage,
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
