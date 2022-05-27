import 'package:flutter/material.dart';
import 'package:mapetiteplanete2/main.dart';
import 'package:mapetiteplanete2/container_card_page_contact.dart';

class PageContact extends StatefulWidget {
  const PageContact({Key? key}) : super(key: key);

  @override
  State<PageContact> createState() => _PageContactState();
}

class _PageContactState extends State<PageContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page contact"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),
                    ),
                  );
                },
                icon: const Icon(Icons.cancel_outlined)),
          ],
        ),
        body: ContainerCardPageContact());
  }
}
