import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryContainer extends StatefulWidget {
  @override
  _CountryContainerState createState() => _CountryContainerState();
}

class _CountryContainerState extends State<CountryContainer> {
  final List<Map<String, dynamic>> _allUsers = [
    {"flag": 'assets/flags/Germany.png', "name": "Germany"},
    {"flag": 'assets/flags/France.png', "name": "France"},
    {"flag": 'assets/flags/South-Africa.png', "name": "South Africa"},
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: CupertinoSearchTextField(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              itemColor: Colors.black,
              onChanged: (value) => _runFilter(value),
              placeholder: 'Search',
            ),
          ),
          Expanded(
            child: _foundUsers.length > 0
                ? ListView.builder(
                    itemCount: _foundUsers.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(_foundUsers[index]["flag"]),
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        leading: Image.asset(_foundUsers[index]["flag"]),
                        title: Text(_foundUsers[index]['name']),
                      ),
                    ),
                  )
                : Text(
                    'No results found',
                    style: TextStyle(fontSize: 24),
                  ),
          ),
        ],
      ),
    );
  }
}
