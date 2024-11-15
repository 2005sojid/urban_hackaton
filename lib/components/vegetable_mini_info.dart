import 'package:flutter/material.dart';

class VegetableMiniInfo extends StatelessWidget {
  String imageUrl;
  String title;
  List info;







  VegetableMiniInfo(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,

                  child: Image.asset(
                    imageUrl, // Use Image.asset instead of AssetImage
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Белков - ${info[0]} г", style: TextStyle(fontSize: 12),),
                    Text("Жиров - ${info[1]} г", style: TextStyle(fontSize: 12),),
                    Text("Углеводов - ${info[2]} г", style: TextStyle(fontSize: 12),),
                    Text("Калорийность - ${info[3]} ккал", style: TextStyle(fontSize: 12),),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("B1 - ${info[4]} мг", style: TextStyle(fontSize: 12),),
                            Text("B2 - ${info[5]} мг", style: TextStyle(fontSize: 12),),
                            Text("B4 - ${info[6]} мг", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Column(
                          children: [
                            Text("A - ${info[7]} мг", style: TextStyle(fontSize: 12),),
                            Text("C - ${info[8]} мг", style: TextStyle(fontSize: 12),),
                            Text("E - ${info[9]} мг", style: TextStyle(fontSize: 12),),
                            //
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), //for the round edges
                    builder: (context) {
                      return Container(
                        height: 600,
                        width: double.infinity,
                        //specify height, so that it does not fill the entire screen
                          child: Column(children: [
                            Text("kdmkdmkf")
                          ]) //what you want to have inside, I suggest using a column
                      );
                    },
                    context: context,
                    isDismissible: true,//boolean if you want to be able to dismiss it
                    isScrollControlled: true//boolean if something does not display, try that
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xE0E6F8FF), // set the background color
              ),
              child: Text(
                'Посмотреть все микронутриенты →',
                style: TextStyle(
                  color: Colors.black
                ),
              ),

            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
