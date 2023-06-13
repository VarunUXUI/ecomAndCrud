import 'package:flutter/material.dart';

import 'contracts.dart';

class CurdOperation extends StatefulWidget {
  const CurdOperation({super.key});

  @override
  State<CurdOperation> createState() => _CurdOperationState();
}

class _CurdOperationState extends State<CurdOperation> {
  dialog(String text, String text2, int index) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Are U Sure delete this" + text + " contac with number" + text2,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        var item = removeList(index);
                        Navigator.pop(context);
                      });
                    },
                    child: Text("OK")),
                TextButton(
                  onPressed: () {
                    setState(() {
                      contacts.add(contacts[index]);
                      Navigator.pop(context);
                    });
                  },
                  child: Text("CANCEL"),
                )
              ],
            ));
  }

  List<Contacts> contacts = [];
  TextEditingController name1 = TextEditingController(text: " ");
  TextEditingController number1 = TextEditingController(text: " ");
  List<Color> colors = [
    Color(0xFFD3A984),
    Color.fromARGB(255, 21, 147, 163),
    Color.fromARGB(255, 153, 14, 158),
    Color.fromARGB(255, 8, 165, 92),
  ];

  int slecetdindex = -1;

  void removeList(int index) {
    String name = name1.text.trim();
    String number = number1.text.trim();
    setState(() {
      contacts.removeAt(index);
    });
  }

  void editList(int index) {
    String name = name1.text.trim();
    String number = number1.text.trim();
    setState(() {
      name1.text = contacts[index].name;
      number1.text = contacts[index].number;
      slecetdindex = index;
    });
  }

  void UpdateList(int index) {
    String name = name1.text.trim();
    String number = number1.text.trim();
    setState(() {
      name1.text = '';
      number1.text = '';
      contacts[index].name = name;
      contacts[index].number = number;
      slecetdindex = -1;
    });
  }

  // color() {
  //   if (colorindex < 3) {
  //     setState(() {
  //       colorindex++;
  //     });
  //     return colors[colorindex];
  //   } else
  //     return colorindex = 0;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Operation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            style: TextStyle(fontSize: 17),
            autofocus: false,
            controller: name1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColorDark,
                  width: 2,
                ),
              ),
              hintText: "User Name",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
              // labelText: " User Name",
              // labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: TextStyle(fontSize: 17),
            autofocus: false,
            controller: number1,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColorDark,
                  width: 2,
                ),
              ),
              hintText: "Enter Number",

              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
              // labelText: "Enter Number",
              // labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.deepPurple),
                      foregroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 60, vertical: 16))),
                  onPressed: () {
                    String name = name1.text.trim();
                    String number = number1.text.trim();
                    if (name.isNotEmpty && number.isNotEmpty) {
                      setState(() {
                        contacts.add(Contacts(name: name, number: number));
                        name1.text = '';
                        number1.text = '';
                      });
                    }
                  },
                  child: Text("SAVE")),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.deepPurple),
                      foregroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 60, vertical: 16))),
                  onPressed: () {
                    UpdateList(slecetdindex);
                  },
                  child: Text("UPDATE")),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: contacts.isEmpty
                  ? Center(
                      child: Text(
                        " No Contact Found",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  : ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => Dismissible(
                            key: ValueKey(contacts[index]),
                            confirmDismiss: (direction) {
                              return showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Confirm Delete"),
                                  content: Text(
                                      "Are you sure you want to delete this contact?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          contacts.removeAt(index);
                                        });
                                        Navigator.of(context)
                                            .pop(true); // Allow dismissal
                                      },
                                      child: Text("Delete"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(false); // Prevent dismissal
                                      },
                                      child: Text("Cancel"),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: listbuilder(
                              // remove: () {
                              //   dialog(contacts[index].name,
                              //       contacts[index].number, index);
                              // },

                              color:
                                  index % 2 == 0 ? colors.first : colors.last,
                              contacts: contacts[index],
                              edit: () {
                                editList(index);
                              },
                            ),
                          )))
        ]),
      ),
    );
  }
}

class listbuilder extends StatelessWidget {
  listbuilder({
    super.key,
    required this.edit,
    // required this.longpress,
    required this.color,
    required this.contacts,
  });

  final Contacts contacts;
  Color color;
  // Function() longpress;
  Function() edit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          // onLongPress: longpress,
          leading: CircleAvatar(
            backgroundColor: color,
            child: Text(
              contacts.name[0],
            ),
          ),
          title: Text(
            contacts.name[0].toUpperCase() + contacts.name.substring(0),
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text(contacts.number),
          trailing: IconButton(
              onPressed: () {
                edit();
              },
              icon: Icon(
                Icons.edit,
                color: Color.fromARGB(255, 16, 61, 212),
              ))),
    );
  }
}
