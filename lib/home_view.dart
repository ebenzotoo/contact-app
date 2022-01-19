import 'package:contact/contact_model.dart';
import 'package:contact/contact_view.dart';
import 'package:contact/new_contact.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> data = [
    {
      "country": "Canada",
      "phone": "1-372-818-4206",
      "name": "Alisa Strong",
      "email": "libero@outlook.couk",
      "region": "Zhōngnán"
    },
    {
      "country": "United Kingdom",
      "phone": "1-476-440-6461",
      "name": "Asher Barnett",
      "email": "metus.facilisis@icloud.edu",
      "region": "Piemonte"
    },
    {
      "country": "France",
      "phone": "(780) 336-5113",
      "name": "Herrod Douglas",
      "email": "facilisis.suspendisse.commodo@protonmail.edu",
      "region": "Northwest Territories"
    },
    {
      "country": "Chile",
      "phone": "1-443-125-6110",
      "name": "Deborah Richardson",
      "email": "magna.a.tortor@protonmail.couk",
      "region": "South Gyeongsang"
    },
    {
      "country": "Australia",
      "phone": "(131) 583-2816",
      "name": "Libby Townsend",
      "email": "vestibulum.lorem@protonmail.edu",
      "region": "Vestland"
    },
    {
      "country": "United Kingdom",
      "phone": "1-832-632-9236",
      "name": "Oren Church",
      "email": "id@icloud.couk",
      "region": "Västra Götalands län"
    },
    {
      "country": "Spain",
      "phone": "(964) 873-0845",
      "name": "Hoyt Lane",
      "email": "suspendisse.commodo@google.couk",
      "region": "Vienna"
    },
    {
      "country": "China",
      "phone": "(931) 296-1816",
      "name": "Carla Mcclain",
      "email": "egestas.blandit@outlook.net",
      "region": "South Australia"
    },
    {
      "country": "Netherlands",
      "phone": "(352) 665-3725",
      "name": "Keefe Baird",
      "email": "pellentesque.a@protonmail.net",
      "region": "Coquimbo"
    },
    {
      "country": "Canada",
      "phone": "(558) 871-1868",
      "name": "Preston Ferrell",
      "email": "semper@outlook.edu",
      "region": "Azad Kashmir"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'My Contacts',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/01/04/21/57/woman-1121654_960_720.png'),
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'search by name or number',
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(controller: _scrollController, children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Recents',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.separated(
              controller: _scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return COntactDetail(
                          contact: Contact(
                              country: 'Ghana',
                              email: 'ebenzotoo@gmail.com',
                              name: 'Eben Ezer',
                              phone: '+233 242 256 2451',
                              region: 'Greater Accra'));
                    }));
                  },
                  leading: const CircleAvatar(
                      radius: 25, backgroundImage: AssetImage('assets/1.jpg')),
                  title: const Text(
                    'Eben Ezer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('+233 24 123 1234'),
                  trailing: const Icon(Icons.more_horiz),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 2,
                  indent: 15,
                );
              },
              itemCount: 3),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Contacts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          GroupedListView<Map<String, String>, String>(
            shrinkWrap: true,
            elements: data,
            groupBy: (element) => element['name'].toString().substring(0, 1),
            groupSeparatorBuilder: (String groupByValue) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  groupByValue.substring(0, 1),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            itemBuilder: (context, Map<String, String> element) {
              Contact contact = Contact.fromJson(element);
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return COntactDetail(
                          contact: contact,
                        );
                      }));
                    },
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                    ),
                    title: Text(
                      '${element['name']}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${element['phone']}'),
                    trailing: const Icon(Icons.more_horiz),
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 15,
                  )
                ],
              );
            },
            itemComparator: (item1, item2) =>
                item1['name']!.compareTo(item2['name']!), // optional
            useStickyGroupSeparators: true, // optional
            floatingHeader: true, // optional
            order: GroupedListOrder.ASC, // optional
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1A4ADA),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewContact();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
