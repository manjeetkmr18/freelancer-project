import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/filters/widgets/button_text.dart';
import 'package:freelancer_project/screens/details/widgets/icon_button.dart';

import 'widgets/country_container.dart';
import 'widgets/filters_widget.dart';

class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: _ItemsList(),
    );
  }
}

class _ItemsList extends StatefulWidget {
  @override
  __ItemsListState createState() => __ItemsListState();
}

class __ItemsListState extends State<_ItemsList> {
  int _groupValue = -1;
  int _groupValue1 = -1;
  int _groupValue2 = -1;
  RangeValues _currentRangeValues =
      RangeValues(1927, DateTime.now().year.toDouble());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: CustomScrollView(slivers: [
        _rowButton(context),
        _spacer(context, size.height * 0.02),
        _rowTitleIcon(
            context: context, title: "Sort By", icon: Icons.arrow_drop_down),
        _spacer(context, size.height * 0.02),
        //2nd
        _filters_Section(),
        _spacer(context, size.height * 0.02),
        //3rd widget
        _countryWidget(context),

        _spacer(context, size.height * 0.02),
      ]),
    );
  }

  _spacer(BuildContext context, double height) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }

  _title(String title) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.centerLeft,
        width: size.width,
        child: Text(title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }

  _rowTitleIcon({BuildContext context, String title, IconData icon}) {
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Icon(icon, size: 20, color: Colors.black)
        ],
      ),
    ));
  }

  _rowButton(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonIcon(
              height: size.height * 0.04,
              icon: Icons.visibility,
              label: "Apply Filters",
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.cancel,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
    );
  }

  _filters_Section() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: FiltersWidget(),
      ),
    );
  }

  _countryWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(0),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: new Text(
            "Where to Watch",
            style: new TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            ExpansionTile(
              childrenPadding: const EdgeInsets.all(0),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              leading: Image.asset('assets/flags/Germany.png'),
              title: new Text(
                "Germany",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: CountryContainer(),
                ),
                _lastItem(context),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _lastItem(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _box(),
        SizedBox(width: 8),
        _box(),
        SizedBox(width: 8),
        _box(),
      ],
    );
  }

  _box() {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.13,
      width: size.width * 0.22,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
    );
  }
}
