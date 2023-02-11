import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AppBarWidget.dart';
import 'CategriesWidget.dart';
import 'DrawerWidget.dart';
import 'NewestItemsWidget.dart';
import 'PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),


          Padding(
            padding: EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 14,
          ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),

              ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "What would You like to have? ",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          CategriesWidget(),

          Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          PopularItemsWidget(),

          Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          NewestItemsWidget(),
        ],
      ),

      drawer:DrawerWidget(),

      floatingActionButton: Container(
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),

        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context,"cartpage");
          },
          child: Icon(
            CupertinoIcons.cart,
              size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),

    );
  }
}
