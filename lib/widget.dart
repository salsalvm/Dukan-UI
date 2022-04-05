import 'package:flutter/material.dart';
import 'package:ui/function.dart';

//ACCOUNT
Widget tileAccount(
    {required IconData iconLead, required String text, iconTile}) {
  return ListTile(
    leading: Icon(iconLead),
    title: Text(text),
    trailing: iconTile,
  );
}

//MANAGE

Widget gridManage(
    {required IconData icon,
    required bgcolor,
    required text,
    bool view = false}) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    icon,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0, top: 1),
                child: Visibility(
                    child: Container(
                      height: 22,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.green),
                      child: const Center(
                        child:  Text(
                          'NEW',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    visible: view),
              )
            ],
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

//PAYMENT

Widget containerView(
    {required String title, required String subTitle, required String value}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            minHeight: 6,
            value: .3,
            backgroundColor: Colors.grey[300],
          ),
        ),
        Text(
          value,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Increase limit'),
        ),
      ],
    ),
  );
}

Widget paymentView({
  required String method,
  required String paymentType,
  required IconData icon,
}) {
  return ListTile(
      title: Text(
        method,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
      trailing: Wrap(
        children: [
          Text(
            paymentType,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Icon(
            icon,
            size: 18,
          )
        ],
      ));
}

//GRID Amount

Widget gridAmount({required String text, required String amount, color}) {
  return Container(
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
    child: Column(
  
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 15),
          child: Text(
            text,
            style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19, top: 9),
          child: Text(amount,
              style: TextStyle(
                color: Color.fromARGB(255, 248, 249, 250),
                fontSize: 22,
              )),
        ),
      ],
    ),
  );
}

//BUTTONS

Widget buttons({required String button, required color, required size}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      button,
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: size,
      primary: color,
      shape: StadiumBorder(),
    ),
  );
}

Widget listItems(
    {required String image,
    required String title,
    required String range,
    required String price,
    required String lowerText}) {
  return Column(
    children: [
      Column(
        children: [
          ListTile(
            leading: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 184, 178, 178),
                  ),
                ),
                width: 60,
                height: 60,
                child: ClipRRect(borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                )),
            title: Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              range,
              style: TextStyle(fontSize: 13, height: 2),
            ),
            trailing: SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                        color: Colors.blue[600], fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 12,
                        color: Color.fromARGB(255, 37, 197, 45),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Successful',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text(
              lowerText,
              style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      )
    ],
  );
}

//PRODUCT

Widget productScreen(
    {required BuildContext context,
    required String text,
    required String rate,
    required String image}) {
  return Padding(
    padding: const EdgeInsets.only(top: 4),
    child: Container(
        height: 175,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.99,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.28,
                        maxHeight: MediaQuery.of(context).size.width * 0.28,
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 236, 233, 233),
                              ),
                              borderRadius: BorderRadius.circular(7)),
                          height: 96,
                          width: 96,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 6),
                            child: Image.asset(
                              image,
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //first Container
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(2.0, 10, 0, 0),
                              child: Text(
                                text,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        //second text
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child:const Padding(
                            padding: EdgeInsets.fromLTRB(3.0, 2.0, 0, 0),
                            child: Text(
                              '1 piece',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 119, 117, 117),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        //third rate text

                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(2.0, 7, 0, 0),
                            child: Text(
                              rate,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),

                        //Instock text
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'In Stock',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // buttons
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: PopupMenuButton(
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry>[],
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Switch(
                        value: true,
                        onChanged: switchStatus(),
                        inactiveTrackColor: Colors.blue[200],
                        inactiveThumbColor: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
            
            const  Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8),
                child: Divider(
                  color: Colors.grey,
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Icon(Icons.share_outlined),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Share Product',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
  );
}

Widget homeTile(
    {required featureIcon, required featureTitle, required featureSubtitle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(
            featureIcon,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ),
      title: Text(
        featureTitle,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
      ),
      subtitle: Text(
        featureSubtitle,
        style: TextStyle(height: 1.4),
      ),
    ),
  );
}

Widget seperator() {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
    child: Divider(
      thickness: 4,
    ),
  );
}

Widget singleText({required String text}) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

div() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 15,),
    child: Divider(
      thickness: 1.2,
    ),
  );
}


orderDivider(){
  return Padding(
    padding: const EdgeInsets.only(top: 11,bottom: 11),
    child: Divider(
      thickness: 1,
    ),
  );
}