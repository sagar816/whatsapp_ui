class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  //now initialise them by making a constructor
  ChatModel({required this.name,required this.message,required this.time, required this.avatar});
}
//Now this class is created then make one one object of each in terms of list by passing data whatever the data is.
//We will make an list of object. Normally we do chatData = ChatModel() to make an object of an class. But this will make only one object of that class and we want to make list. So we will do the following:

// Kis type ka list hoga, to ChatModel type ka list hoga humara <ChatModel>

// Then call constructor inside and keep initializing.

// To aise ek ek object banta jaaega aur list me aata jaaega.

List<ChatModel> chatData = [
  ChatModel(
    name: "Sagar",
    message: "hi hello",
    time: "11:30",
    avatar: "images/p3.jpeg",
  ),  //so ek object hamara ban gaya jo is list me hai, so bahut saare users ka data list ke taur me jama hota jaaega with index 0,1,2...aur fir usko hum retrieve kar ke display kar denge in list format in chat_dart page section 
  ChatModel(
    name: "Kishu",
    message: "hi dad",
    time: "09:22",
    avatar: "images/p2.jpeg",
  ), 
  ChatModel(
    name: "Sumit",
    message: "suno bhai",
    time: "04:00",
    avatar: "images/p3.jpeg",
  ),
   ChatModel(
    name: "saniya",
    message: "happy Birthday",
    time: "12:00",
    avatar: "images/p4.jpeg",
  ),
   ChatModel(
    name: "Rita",
    message: "tomorrow is holday",
    time: "02:40",
    avatar: "images/p5.jpeg",
  ),
   ChatModel(
    name: "yuga",
    message: "hi hello",
    time: "04:00",
    avatar: "images/p6.jpeg",
  ),
   ChatModel(
    name: "kartik",
    message: "criket now",
    time: "03:30",
    avatar: "images/p7.jpeg",
  ),
   ChatModel(
    name: "raj",
    message: "samsung laptop",
    time: "04:30",
    avatar: "images/p8.jpeg",
  ),
   ChatModel(
    name: "vikas",
    message: "come to office",
    time: "11:00",
    avatar: "images/p9.jpeg",
  ),
   ChatModel(
    name: "pappu",
    message: "vote me",
    time: "05:00",
    avatar: "images/p10.jpeg",
  ),
   ChatModel(
    name: "orton",
    message: "what time?",
    time: "09:00",
    avatar: "images/p11.jpeg",
  ),
   ChatModel(
    name: "pranita",
    message: "tution Time ?",
    time: "08:00",
    avatar: "images/p12.jpeg",
  ), // in real this data will come from database or API. 
   ChatModel(
    name: "akhil",
    message: "come later",
    time: "06:00",
    avatar: "images/p13.jpeg",
  ),

  // So idhar humne ChatModel naam ka bana diya class aur uska do object bana diya aur usko list me rakh diya
];
