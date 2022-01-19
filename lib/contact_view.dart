import 'package:contact/contact_model.dart';
import 'package:flutter/material.dart';

class COntactDetail extends StatelessWidget {
  const COntactDetail({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Contact',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
            radius: 60,
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              contact.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              '${contact.region}, ${contact.country}',
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey.shade400,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Mobile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(contact.phone),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(contact.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Group',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Uni Friends'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Account Linked',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            child: const ListTile(
              title: Text(
                'Telegram',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/telegram.png'),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            child: const ListTile(
              title: Text(
                'WhatsApp',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'More Options',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
              color: Colors.grey.shade400,
              child: const ListTile(
                title: Text(
                  'Share Contact',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )),
          Container(
              color: Colors.grey.shade400,
              child: const ListTile(
                title: Text(
                  'QR Code',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )),
        ]),
      ),
    );
  }
}
