import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon callType;
  //now initialise them by making a constructor
  CallModel(
      {required this.name,
      required this.callType,
      required this.time,
      required this.avatar});
  static Icon callReceived = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}
//Now this class is created then make one one object of each in terms of list by passing data whatever the data is.
//We will make an list of object. Normally we do chatData = CallModel() to make an object of an class. But this will make only one object of that class and we want to make list. So we will do the following:

// Kis type ka list hoga, to CallModel type ka list hoga humara <CallModel>

// Then call constructor inside and keep initializing.

// To aise ek ek object banta jaaega aur list me aata jaaega.

List<CallModel> callData = [
  CallModel(
    name: "Sagar",
    time: "11:30",
    callType: CallModel.callReceived,
    avatar: "images/p3.jpeg",
  ), //so ek object hamara ban gaya jo is list me hai, so bahut saare users ka data list ke taur me jama hota jaaega with index 0,1,2...aur fir usko hum retrieve kar ke display kar denge in list format in chat_dart page section
  CallModel(
    name: "Kishu",
    time: "09:22",
    callType: CallModel.callMissed,
    avatar: "images/p2.jpeg",
  ),
  CallModel(
    name: "Sumit",
    time: "04:00",
    callType: CallModel.callReceived,
    avatar: "images/p3.jpeg",
  ),
  CallModel(
    name: "saniya",
    time: "12:00",
    callType: CallModel.callMissed,
    avatar: "images/p4.jpeg",
  ),
  // So idhar humne CallModel naam ka bana diya class aur uska do object bana diya aur usko list me rakh diya
];
