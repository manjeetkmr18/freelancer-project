import 'package:flutter/material.dart';

import 'button_text.dart';

class FiltersWidget extends StatefulWidget {
  @override
  _FiltersWidgetState createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  int _groupValue2 = -1;
  RangeValues _currentRangeValues =
      RangeValues(1927, DateTime.now().year.toDouble());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ExpansionTile(
      backgroundColor: Colors.white,
      // tilePadding: EdgeInsets.only(left: 10),
      initiallyExpanded: false,
      title: Text(
        'Filters',
        style: new TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        showMore(),
        _byAwards(),
        _radioList(context),
        _title("Awards Year"),
        _spacer(context, size.height * 0.01),
        _seekBar(context),
        _spacer(context, size.height * 0.01),
        _byCountry(context),
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
        _spacer(context, size.height * 0.01),
        _byKnownFor(context)
      ],
    );
  }

  _byCountry(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpansionTile(
      childrenPadding: const EdgeInsets.all(0),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      tilePadding: EdgeInsets.only(left: 8),
      title: Text(
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
    );
  }

  showMore() {
    int _groupValue = -1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        )
      ],
    );
  }

  _byAwards() {
    return ExpansionTile(
      title: Text(
        'By Awards',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      children: [
        ExpansionTile(
          tilePadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
          trailing: SizedBox.shrink(),
          title: ListTile(
            contentPadding: EdgeInsets.only(top: 0, bottom: 0),
            leading: Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 20,
            ),
            minLeadingWidth: 0,
            title: Text(
              "Oscar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          children: <Widget>[
            ExpansionTile(
              tilePadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
              trailing: SizedBox.shrink(),
              title: ListTile(
                leading: Icon(
                  Icons.expand_more,
                  color: Colors.black,
                  size: 20,
                ),
                minLeadingWidth: 0,
                title: Text(
                  "Best Picture",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              children: <Widget>[
                ExpansionTile(
                  tilePadding: EdgeInsets.only(left: 30, top: 0, bottom: 0),
                  trailing: SizedBox.shrink(),
                  title: ListTile(
                    leading: Icon(
                      Icons.expand_more,
                      color: Colors.black,
                      size: 20,
                    ),
                    minLeadingWidth: 0,
                    title: Text(
                      "Outstanding Production\n     Best Engineering Effects",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  children: [
                    // ExpansionTile(
                    //   tilePadding: EdgeInsets.only(left: 40, top: 0, bottom: 0),
                    //   trailing: SizedBox.shrink(),
                    //   title: ListTile(
                    //     leading: Icon(
                    //       Icons.expand_more,
                    //       color: Colors.black,
                    //       size: 20,
                    //     ),
                    //     minLeadingWidth: 0,
                    //     title: Text(
                    //       "Best Engineering Effects",
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          ],
        ),
        ExpansionTile(
          tilePadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
          trailing: SizedBox.shrink(),
          title: ListTile(
            contentPadding: EdgeInsets.only(top: 0, bottom: 0),
            leading: Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 20,
            ),
            minLeadingWidth: 0,
            title: Text(
              "Emmy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ExpansionTile(
          tilePadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
          trailing: SizedBox.shrink(),
          title: ListTile(
            contentPadding: EdgeInsets.only(top: 0, bottom: 0),
            leading: Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 20,
            ),
            minLeadingWidth: 0,
            title: Text(
              "BAFTA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ExpansionTile(
          tilePadding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
          trailing: SizedBox.shrink(),
          title: ListTile(
            contentPadding: EdgeInsets.only(top: 0, bottom: 0),
            leading: Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 20,
            ),
            minLeadingWidth: 0,
            title: Text(
              "Berlin International Film Awards",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }

  _radioList(BuildContext context) {
    return Column(
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
    );
  }

  _seekBar(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 8, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _currentRangeValues.start.round().toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _currentRangeValues.end.round().toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Container(
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
      ],
    );
  }

  _rowButtonsList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
    );
  }

  _byKnownFor(BuildContext context) {
    return Container(
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
    );
  }

  _spacer(BuildContext context, double height) {
    return SizedBox(
      height: height,
    );
  }

  _title(String title) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 08),
      alignment: Alignment.centerLeft,
      width: size.width,
      child: Text(title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
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
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
