import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> details = {
      'Name': 'Jacob',
      'Phone no': '713719207310',
      'Nationality': 'Indian',
      'Gender': 'Male'
    };

    Map<String, String> credentials = {
      'Username': 'John Doe',
      'Security': 'Password+2FA'
    };

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: const [
                      CircleAvatar(radius: 50),
                      Text(
                        'John Doe',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '+ 91 1903821312093',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    50,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  children: const [
                                    Icon(Icons.map_outlined, size: 25),
                                    Text('45',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 25,
                                        )),
                                    Text('Trips Planned')
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    50,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  children: const [
                                    Icon(Icons.currency_rupee_sharp, size: 25),
                                    Text('1,200',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 25,
                                        )),
                                    Text('Money Saved')
                                  ],
                                ),
                              ),
                            ]),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            children: [
                              for (var i in details.keys)
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(i.toString()),
                                      Text(details[i].toString())
                                    ])
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            children: [
                              for (var i in credentials.keys)
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(i.toString()),
                                      Text(credentials[i].toString())
                                    ])
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.orange[900],
                                padding: const EdgeInsets.only(
                                    left: 130,
                                    right: 130,
                                    top: 10,
                                    bottom: 10)),
                            child: const Text(
                              'Update',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(
                          height: 10,
                        )
                      ])),
            )
          ],
        ));
  }
}
