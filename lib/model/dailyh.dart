import 'package:flutter/material.dart';
import 'package:dailyhealth/variables/id.dart';
import 'package:dailyhealth/variables/health_var.dart';
import 'package:dailyhealth/variables/fstep.dart';
import 'package:dailyhealth/variables/food.dart';
import 'package:dailyhealth/variables/recent_food.dart';

class daily_pg extends StatefulWidget {
  const daily_pg({Key? key}) : super(key: key);

  @override
  State<daily_pg> createState() => _daily_pgState();
}

class _daily_pgState extends State<daily_pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Theme.of(context).backgroundColor,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
            children: [
            Column(
            children: [
                   CircleAvatar(
                      backgroundColor: Colors.black54,
                      radius: 45,
                      child: CircleAvatar(
                      radius: 40,
                        backgroundImage: AssetImage('lib/images/img1.png'),
                      ),
                   ),
                ],
            ),
            Container(
              padding:const EdgeInsets.only(left:20),
              child: PatientId(PatientName: "PATIENT NAME",
                                MedocId: "XXXX1234",
                                HealthId: "XXX XXX XXX",)
                      ),
                    ],
                ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 8, 9),
                        child: Text(
                            "Recent Activity",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        ),
                      ),
                      Row(
                        children: [
                         new Image(
                             image:new AssetImage('lib/images/fire_icon.png'),
                              height: 30,
                              width: 20,
                              color:null),
                          Text(
                            "569",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            ),
                          ),
                          Text("/2000",
                          style:TextStyle(
                            fontSize: 12,
                            color: Colors.black
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          new Image(
                              image:new AssetImage('lib/images/footstep.png'),
                              height: 30,
                              width: 20,
                              color:null),
                          Text(
                            "2048",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black
                            ),
                          ),
                          Text("/6000",
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.restaurant,
                           color: Colors.green.shade900,
                          size: 30),
                          Text(
                            "1024",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black
                            ),
                          ),
                          Text("/2000",
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              )),
                        ],
                      )
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(220, 40, 10, 38),
                        child: Container(
                          child: Icon(Icons.favorite_rounded,
                          color: Colors.red,
                          size:40),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(220, 21,8 ,20) ,
                        height:130,
                        child: h_info(
                          calorie: 569,
                          max_cal: 2000,
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(215, 18,6 ,15) ,
                        height:150,
                        child: step_info(
                          steps: 2048,
                          max_steps: 6000,
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(210, 15,4 ,10) ,
                        height:170,
                        child: food_info(
                          food_cal: 1024,
                          max_fcal: 2000,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: SizedBox(
              width: 700,
              child: rcnt_food(
                food_data: "The Patient has not eaten anything yet",
              ),
            ),
          ),
              ],
          ),
    );
  }
}
