import 'package:flutter/material.dart';
import 'package:mini_game/logics/static_game_data.dart';

class Victory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),
            Text(
              "Congratulations",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              "Time spent: ${StaticGameData.timeSpent} seconds",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Colors.grey[300],
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/game'),
                    child: Text('Play Again'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Colors.grey[300],
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/'),
                    child: Text('Home Page'),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
