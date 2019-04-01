import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Spice Jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
                Expanded(
                  child: Text(
                    "From Mumbai to Bangalore via New Delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: "Kanit",
                        fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Spice Jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: "Kanit",
                      fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
                Expanded(
                  child: Text(
                    "From Mumbai to Bangalore via New Delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: "Kanit",
                        fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            FlightImageAsset(),
            FlightBookButton(),
          ],
        ));
  }
}

class FlightImageAsset extends StatelessWidget {
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/flight.png");
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
    return Container(
      child: image,
    );
  }
}
class FlightBookButton extends StatelessWidget {
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(top: 30.0),
     width: 250.0,
     height: 50.0,
     child: RaisedButton(
       onPressed: () =>bookFlight(context),
       color: Colors.deepOrange,
       child: Text(
         "Book Your Flight",
         style: TextStyle(
           fontSize: 20,
           color: Colors.white,
           fontFamily: 'Kanit',
           fontWeight: FontWeight.w700,
         ),
       ),
       elevation: 6.0,
     ),
   );
  }
}

void bookFlight(BuildContext context) {
  var alerDialog = AlertDialog(
    title: Text("Flight Book Successfully") ,
    content: Text("Habe a pleasant flight"),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) => alerDialog //Return

  );
}