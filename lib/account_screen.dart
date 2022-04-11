import 'package:flutter/material.dart';
import 'package:ui/function.dart';
import 'package:ui/widget.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(leading:const Icon(Icons.arrow_back),
        title: const Text('Additional Information',),centerTitle: true,
      ),
     body: Column(
        children: [
          tileAccount( iconLead: Icons.share, text: 'Share Dukan App', iconTile: Icon(Icons.arrow_forward_ios)),
          tileAccount( iconLead: Icons.chat, text: 'Change Language', iconTile: Icon(Icons.arrow_forward_ios)),
          tileAccount(iconLead: Icons.whatsapp, text: 'Whatsapp Chat Suppoort', iconTile: Switch(value: true, onChanged: switchStatus(),inactiveThumbColor: Colors.blue,inactiveTrackColor: Colors.blue[100],) ),
          tileAccount( iconLead: Icons.shopping_bag_outlined, text: 'Privcy Policy'),
          tileAccount( iconLead: Icons.star_border, text: 'Rate Us'),
          tileAccount( iconLead: Icons.logout, text: 'Sign Out'),
          SizedBox(height: 250,),
         version()
        ],
      ),
    );
  }
}
 