import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/filters/widgets/button_text.dart';
import 'package:freelancer_project/screens/details/widgets/icon_button.dart';

import 'widgets/country_container.dart';

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
        _expandableListTile(
          context,
        ),
        _spacer(context, size.height * 0.02),
        _expandableListTile1(context),
        _spacer(context, size.height * 0.02),
        _rowList(context),
        _spacer(context, size.height * 0.02),
        _radioList(context),
        _spacer(context, size.height * 0.02),
        _title("Awards Year"),
        _seekBar(context),
        _spacer(context, size.height * 0.02),
        _expandableListTile3(context),
        _spacer(context, size.height * 0.02),
        _title("By Genre"),
        _spacer(context, size.height * 0.01),
        _rowButtonsList(context),
        _spacer(context, size.height * 0.02),
        _title("By Company"),
        _spacer(context, size.height * 0.01),
        _rowButtonsList(context),
        _spacer(context, size.height * 0.02),
        _title("By Network"),
        _spacer(context, size.height * 0.01),
        _rowButtonsList(context),
        _spacer(context, size.height * 0.02),
        _expandableListTile2(context),
        _spacer(context, size.height * 0.02),
        _countryWidget(context),
        _spacer(context, size.height * 0.02),
        _lastItem(context),
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

  _rowList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _row("Emmy"),
          SizedBox(height: size.height * 0.01),
          _row("BAFTA"),
          SizedBox(height: size.height * 0.01),
          _row("Berlin International Film Awards"),
        ],
      ),
    );
  }

  _row(String title) {
    return Row(
      children: [
        Icon(
          Icons.arrow_drop_down,
          size: 20,
        ),
        new Text(
          title,
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  _radioList(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _radioTile(
            "All",
            1,
            _groupValue2,
            (newValue) {
              setState(() {
                _groupValue2 = newValue;
              });
            },
          ),
          _radioTile(
            "Winner",
            2,
            _groupValue2,
            (newValue) {
              setState(() {
                _groupValue2 = newValue;
              });
            },
          ),
          _radioTile(
            "Nominee",
            3,
            _groupValue2,
            (newValue) {
              setState(() {
                _groupValue2 = newValue;
              });
            },
          ),
        ],
      ),
    );
  }

  _seekBar(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: RangeSlider(
          values: _currentRangeValues,
          min: 1927,
          max: 2021,
          divisions: 5,
          activeColor: Colors.black,
          inactiveColor: Colors.black,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ),
    );
  }

  _expandableListTile(
    BuildContext context,
  ) {
    return SliverToBoxAdapter(
        child: Container(
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.all(0),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              title: new Text(
                "Filters",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: new Text(
                    "Show Me",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _radioTile(
                  "Show me something",
                  1,
                  _groupValue,
                  (newValue) {
                    setState(() {
                      _groupValue = newValue;
                    });
                  },
                ),
                _radioTile(
                  "I haven't seen",
                  2,
                  _groupValue,
                  (newValue) {
                    setState(() {
                      _groupValue = newValue;
                    });
                  },
                ),
                _radioTile(
                  "I have seen",
                  3,
                  _groupValue,
                  (newValue) {
                    setState(() {
                      _groupValue = newValue;
                    });
                  },
                ),
              ],
            )));
  }

  _expandableListTile1(
    BuildContext context,
  ) {
    return SliverToBoxAdapter(
        child: Container(
            decoration: BoxDecoration(
                // color: Colors.white,
                // borderRadius: BorderRadius.circular(10),
                ),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.all(0),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              title: new Text(
                "By Awards",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: new Text(
                    "Show Me",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _radioTile(
                  "Show me something",
                  1,
                  _groupValue1,
                  (newValue) {
                    setState(() {
                      _groupValue1 = newValue;
                    });
                  },
                ),
                _radioTile(
                  "I haven't seen",
                  2,
                  _groupValue1,
                  (newValue) {
                    setState(() {
                      _groupValue1 = newValue;
                    });
                  },
                ),
                _radioTile(
                  "I have seen",
                  3,
                  _groupValue1,
                  (newValue) {
                    setState(() {
                      _groupValue1 = newValue;
                    });
                  },
                ),
              ],
            )));
  }

  _expandableListTile2(
    BuildContext context,
  ) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(0),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: new Text(
            "By Known For",
            style: new TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            _radioTile(
              "Actor",
              1,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Directing",
              2,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Visual Effects",
              3,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Production",
              4,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Camera",
              5,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Art",
              6,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Lighting",
              7,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Costume & Make-up",
              8,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Sound",
              9,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Editing",
              10,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "Crew",
              11,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
            _radioTile(
              "writing",
              12,
              _groupValue2,
              (newValue) {
                setState(() {
                  _groupValue2 = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  _expandableListTile3(
    BuildContext context,
  ) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ExpansionTile(
              childrenPadding: const EdgeInsets.all(0),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              title: new Text(
                "By Country",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  padding: const EdgeInsets.all(6),
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icons/germany.png"))),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Germany",
                        style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }

  _radioTile(
      String tile, int value, int assignedValue, void Function(int) onChanged) {
    return Container(
      // height:35,
      child: RadioListTile(
        contentPadding: const EdgeInsets.all(0),
        activeColor: Colors.black,
        value: value,
        groupValue: assignedValue,
        onChanged: onChanged,
        title: Text(
          tile,
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _rowButtonsList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        height: size.height * 0.06,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(5),
                child: ButtonText(
                    height: 20,
                    text: "Button ${index + 1}",
                    fontSize: 15,
                    onPressed: () {}),
              );
            }),
      ),
    );
  }

  _countryWidget(BuildContext context) {
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _lastItem(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _box(),
          SizedBox(width: 8),
          _box(),
          SizedBox(width: 8),
          _box(),
        ],
      ),
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
