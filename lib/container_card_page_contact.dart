import 'package:flutter/material.dart';
import 'package:mapetiteplanete2/card_page_contact.dart';

class ContainerCardPageContact extends StatelessWidget {
  const ContainerCardPageContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CardPageContact(
                nom: 'Dubois', prenom: 'Léo', telephone: '0741236558'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Delafaune', prenom: 'christian', telephone: '0748474258'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Delaflore', prenom: 'julie', telephone: '0748541258'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Dumarais', prenom: 'Florence', telephone: '0624154758'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Dubois', prenom: 'Léo', telephone: '0741236558'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Delafaune', prenom: 'christian', telephone: '0748474258'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Delaflore', prenom: 'julie', telephone: '0748541258'),
            SizedBox(height: 10),
            CardPageContact(
                nom: 'Dumarais', prenom: 'Florence', telephone: '0624154758'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
