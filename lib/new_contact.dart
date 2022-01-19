import 'package:flutter/material.dart';

class NewContact extends StatelessWidget {
  NewContact({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'New Contact',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 150,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Add Photo',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'First Name is required';
                  }
                },
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Country'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print('sucess');
                    } else {
                      print('retry');
                    }
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
