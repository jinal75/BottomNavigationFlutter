import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {

  // this allows us to access the TextField text
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController address=TextEditingController();
  TextEditingController city=TextEditingController();
  TextEditingController education=TextEditingController();
  TextEditingController dob=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           TextField(
            controller: name,
            decoration: const InputDecoration(
              hintText: 'Enter Name',
            ),
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
           ),

    TextField(
            controller: surname,
      decoration: const InputDecoration(
        hintText: 'Enter Surname',
      ),
            style: const TextStyle(fontSize: 24,color:Colors.black,
            ),
          ),
          TextField(
            controller: address,
            decoration: const InputDecoration(
              hintText: 'Enter Address',
            ),
            style: const TextStyle(fontSize: 24,color:Colors.black,
            ),
          ),
          TextField(
            controller: city,
            decoration: const InputDecoration(
              hintText: 'Enter City',
            ),
            style: const TextStyle(fontSize: 24,color:Colors.black,
            ),
          ),
          TextField(
            controller: education,
            decoration: const InputDecoration(
              hintText: 'Enter Education',
            ),
            style: const TextStyle(fontSize: 24,color:Colors.black,
            ),
          ),
          TextField(
            controller: dob,
            decoration: const InputDecoration(
              hintText: 'Enter Birth Date',
            ),
            style: const TextStyle(fontSize: 24,color:Colors.black,
            ),
          ),

          // ignore: deprecated_member_use
          RaisedButton(
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              _sendDataToSecondScreen(context);
            },
          )

        ],
      ),
    );
  }

  // get the text in the TextField and start the Second Screen
  void _sendDataToSecondScreen(BuildContext context) {
    String userName = name.text;
    String userSurname=surname.text;
    String userAddress=address.text;
    String userCity=city.text;
    String userEducation=education.text;
    String userBirthDay=dob.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(name: userName, surname: userSurname, address: userAddress,city: userCity,education: userEducation,dob: userBirthDay,),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  final String name;
  final String surname;
  final String address;
  final String city;
  final String education;
  final String dob;

  // receive data from the FirstScreen as a parameter
  const SecondScreen({Key? key, required this.name, required this.surname, required this.address, required this.city, required this.education, required this.dob}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second screen')),
      body: Column(
        children: [

          Text(name,style: const TextStyle(fontSize: 24),),
          Text(surname,style: const TextStyle(fontSize: 24),),
          Text(address,style: const TextStyle(fontSize: 24),),
          Text(city,style: const TextStyle(fontSize: 24),),
          Text(education,style: const TextStyle(fontSize: 24),),
          Text(dob,style: const TextStyle(fontSize: 24),),
        ],


      ),
    );
  }
}