
import 'package:flutter/material.dart';
import 'package:ui/list.dart';
import 'package:ui/widget.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(backgroundColor: Colors.blue[700],
          title: Text('Catalogue'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            ),
          ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Container(
                child: ListView.separated(
                  shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return productScreen(
                          context: context,
                          text: gadjet[index],
                          rate: '₹${index*32+399}',
                          image: images[index]);
                    },
                    separatorBuilder: (ctx, intex) {
                      return Divider(
                        height: 0,color: Color.fromARGB(255, 231, 231, 231),
                      );
                    },
                    itemCount: 10),

                //
              ),
            ),
          ),
          Center(child: Text('soon...')),
        ]),
      ),
    );
  }
}
