import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPageContact extends StatefulWidget {
  final nom;
  final prenom;
  final telephone;
  const CardPageContact(
      {Key? key,
      required this.nom,
      required this.prenom,
      required this.telephone})
      : super(key: key);

  @override
  State<CardPageContact> createState() => _CardPageContactState();
}

class _CardPageContactState extends State<CardPageContact> {
  @override
  final String _url = 'https://google.fr';

  void _launchURL() async {
    if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _launchURL();
        });
      },
      child: Card(
        color: Colors.brown.shade400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                child: Center(
                    child: Column(
              children: [
                Text(widget.prenom,
                    style: const TextStyle(fontSize: 18, color: Colors.white)),
                Text(widget.nom,
                    style: const TextStyle(fontSize: 18, color: Colors.white)),
                Text(widget.telephone,
                    style: const TextStyle(fontSize: 14, color: Colors.white))
              ],
            ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Appel'),
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Message'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
