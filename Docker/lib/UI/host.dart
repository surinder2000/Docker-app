import 'package:flutter/material.dart';

class HostHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color AppBarColor = Colors.redAccent;
    const Color ButtonColor = Colors.redAccent;
    const Color TextColor = Colors.white;
    const Color MyBodyColor = Colors.redAccent;
    const Color OuterContainerColor = Colors.black;
    const Color ContainerColor = Colors.blue;

    String IP;

    TestButton() {
      print(IP ?? "");
    }

    var MyBody = Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: OuterContainerColor,
          ),
          color: OuterContainerColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                color: ButtonColor,
                child: TextField(
                  onChanged: (value) {
                    IP = value;
                  },
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Provide Docker Host IP",
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 70,
              decoration: BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                color: ButtonColor,
                margin: EdgeInsets.all(8),
                child: FlatButton(
                  onPressed: TestButton,
                  child: Center(
                    child: Text(
                      "Submit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: TextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 70,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Builder(
                builder: (context) => Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.all(8),
                  child: RaisedButton(
                    color: ButtonColor,
                    child: Center(
                      child: Text(
                        "Back",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: TextColor,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Provide Host IP"),
        backgroundColor: AppBarColor,
      ),
      body: MyBody,
      backgroundColor: MyBodyColor,
    );
  }
}
