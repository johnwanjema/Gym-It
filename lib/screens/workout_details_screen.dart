import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WorkoutDetails extends StatefulWidget {
  @override
  _WorkoutDetailsState createState() => _WorkoutDetailsState();
}

class _WorkoutDetailsState extends State<WorkoutDetails> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    var data = [
      {
        "id": 1,
        "title": "Resistance band pull apart",
        "Targets": "back, biceps, triceps, and shoulders",
        "Reps": "Repeat 10 to 15 times",
        "Sets": "2 to 3 sets",
        "imageUrl": "",
        "procedure": [
          "Stand with your arms out in front of you at chest height.",
          "Hold a resistance band tightly between your hands so the band is parallel to the ground.",
          "Keeping both arms straight, pull the band toward your chest by moving your arms outward. Initiate this motion from your mid-back.",
          "Keep your spine straight as you squeeze your shoulder blades together. Pause briefly, then slowly return to the starting position."
        ]
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoulder Exercises'),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Row(
              children: [
                Container(
                  width: size.width,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 4.0),
                        // Text('${data[index]['title']}')
                        child: Container(
                          width: size.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${data[index]['title']}',
                                style: TextStyle(fontSize: 23),
                              ),
                              Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-6xlurtxt18oolf01ED37qyW3hg0R-sRfzQ&usqp=CAU'))),
                              ),
                              Text(
                                'Targets:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Shoulders, specifically the anterior deltoid muscles.',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> getData() async {
    try {
      var result = await http.get(
          'https://my-json-server.typicode.com/johnwanjema/workoutJson/back');
      var response = jsonDecode(result.body);
      print(response);
    } catch (e) {
      print('error $e.toString()');
    }
  }
}
