
class StatusModel {
  final String name;
  final String time;
  final String avatar;

  //now initialise them by making a constructor
  StatusModel(
      {required this.name,
      required this.time,
      required this.avatar});
  
}
//Now this class is created then make one one object of each in terms of list by passing data whatever the data is.
//We will make an list of object. Normally we do chatData = StatusModel() to make an object of an class. But this will make only one object of that class and we want to make list. So we will do the following:

// Kis type ka list hoga, to StatusModel type ka list hoga humara <StatusModel>

// Then call constructor inside and keep initializing.

// To aise ek ek object banta jaaega aur list me aata jaaega.

List<StatusModel> statusData = [
  StatusModel(
    name: "Sagar",
    time: "11:30",
  
    avatar: "images/p3.jpeg",
  ), //so ek object hamara ban gaya jo is list me hai, so bahut saare users ka data list ke taur me jama hota jaaega with index 0,1,2...aur fir usko hum retrieve kar ke display kar denge in list format in chat_dart page section
  StatusModel(
    name: "Kishu",
    time: "09:22", 
    avatar: "images/p2.jpeg",
  ),
  StatusModel(
    name: "Sumit",
    time: "04:00",
    avatar: "images/p3.jpeg",
  ),
  StatusModel(
    name: "saniya",
    time: "12:00",

    avatar: "images/p4.jpeg",
  ),
  // So idhar humne StatusModel naam ka bana diya class aur uska do object bana diya aur usko list me rakh diya
];
