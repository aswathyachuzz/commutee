import 'package:flutter/material.dart';
import 'package:commute/components/commute_tile.dart';

class TripPlanner extends StatefulWidget {
  const TripPlanner({super.key});

  @override
  State<TripPlanner> createState() => _TripPlannerState();
}

class _TripPlannerState extends State<TripPlanner> {
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

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Text('Commute',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.orange[700],
              )),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Passenger Details'),
                PassengerDetailButtons(widget: Icon(Icons.people))
              ]),
          const PassengerDetails(),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Commute Details'),
                PassengerDetailButtons(widget: Icon(Icons.location_on))
              ]),
          const SizedBox(
            height: 20,
          ),
          const CommuteDetails(),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Commute Preferences'),
                  PassengerDetailButtons(widget: Icon(Icons.add))
                ],
              ),
              const SizedBox(height: 20),
              const CommutePreferences(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text('Alloted Fair Amount'),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              const SizedBox(height: 20),
              const CommuteTile(
                  icon: Icons.currency_rupee,
                  leftSideText: 'Rupee',
                  rightSideText: '1,000',
                  newStyle: TextStyle(color: Colors.black)),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Radio(
                    activeColor: Colors.orange[900],
                    value: 'radio',
                    groupValue: 'radio',
                    onChanged: (value) {},
                  ),
                  const Text(
                    'minimize my spending on this trip',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                      padding: const EdgeInsets.only(
                          left: 130, right: 130, top: 10, bottom: 10)),
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}

// Required Wigets for PassengerDetails Begins

class PassengerDetailList extends StatelessWidget {
  const PassengerDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
              flex: 2,
              child: PassengerDetailButtons(widget: Text('Hello World'))),
          SizedBox(
            width: 20,
          ),
          Expanded(
              flex: 3,
              child: PassengerDetailButtons(widget: Text('Hello World'))),
          SizedBox(
            width: 15,
          ),
          Expanded(
              flex: 1,
              child: PassengerDetailButtons(
                  widget: Icon(
                Icons.people,
                size: 25,
              ))),
          SizedBox(
            width: 15,
          )
        ]);
  }
}

class PassengerDetailButtons extends StatelessWidget {
  const PassengerDetailButtons({Key? key, required this.widget})
      : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: widget,
    );
  }
}

class PassengerDetails extends StatefulWidget {
  const PassengerDetails({Key? key}) : super(key: key);

  @override
  State<PassengerDetails> createState() => _PassengerDetailsState();
}

class _PassengerDetailsState extends State<PassengerDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: PassengerDetailList(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: PassengerDetailList(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
          child: PassengerDetailList(),
        ),
      ],
    );
  }
}

// Required Widgets for Passenger Details Ends

// Required Widgets for Commute Details Begins

class CommuteDetails extends StatelessWidget {
  const CommuteDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CommuteTile(
          icon: Icons.circle,
          leftSideText: 'From',
          rightSideText: 'Current Location',
          newStyle: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Flexible(
              child: CommuteTile(
                icon: Icons.location_on,
                leftSideText: 'Stop',
                rightSideText: 'Tambaram',
                newStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            PassengerDetailButtons(widget: Icon(Icons.add))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CommuteTile(
          icon: Icons.location_on,
          leftSideText: 'To',
          rightSideText: 'ECR Beach',
          newStyle: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

// Required Widgets for Commute Details Ends

// Required Widgets for Commute Preferences Begins

class CommutePreferences extends StatelessWidget {
  const CommutePreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CommutePrefenceButton(
          newText: 'Car',
        ),
        CommutePrefenceButton(
          newText: 'Bus',
        ),
        CommutePrefenceButton(
          newText: 'Train',
        )
      ],
    );
  }
}

class CommutePrefenceButton extends StatelessWidget {
  const CommutePrefenceButton({
    Key? key,
    required this.newText,
  }) : super(key: key);

  final String newText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(left: 40, right: 10, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(newText),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'X',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


// Required Widgets for Commute Preferences Ends
