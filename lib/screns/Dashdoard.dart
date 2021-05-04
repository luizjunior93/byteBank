import 'package:byteBankTwo/screns/contacts_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashDoard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _FutureItem(
                  'Transfer',
                  Icons.monetization_on,
                  onclick: () {
                    _ShowContactsList(context);
                  },
                ),
                _FutureItem(
                  'Transaction Feed',
                  Icons.description,
                  onclick: () => print('transaction feed was clicked'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _ShowContactsList(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ContactsList(),
    ));
  }
}

class _FutureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onclick;

  const _FutureItem(this.name, this.icon, {@required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
            color: Theme.of(context).primaryColor,
            child: InkWell(
              onTap: () => onclick(),
              child: Container(
                padding: EdgeInsets.all(8.0),
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 28.0,
                    ),
                    Text(name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                  ],
                ),
              ),
            )));
  }
}
