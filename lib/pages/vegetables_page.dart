import 'package:flutter/material.dart';
import 'package:testapp/components/search_field.dart';
import 'package:testapp/components/vegetable_mini_info.dart';

class VegetablesPage extends StatefulWidget {


  VegetablesPage({super.key});

  @override
  State<VegetablesPage> createState() => _VegetablesPageState();
}

class _VegetablesPageState extends State<VegetablesPage> {
  List vegetables = [
    ['assets/tomato.jpg', 'Помидор', [0.88, 0.26, 3.89, 18, 0.04, 0.02, 6.7, 42, 13.7, 0.5]],
    ['assets/cucumber.jpg', 'Огурец', [0.88, 0.26, 3.89, 18, 0.04, 0.02, 6.7, 42, 13.7, 0.5]],
    ['assets/potato.jpg', 'Картофель', [0.88, 0.26, 3.89, 18, 0.04, 0.02, 6.7, 42, 13.7, 0.5]],
    ['assets/beet.jpg', 'Свекла', [0.88, 0.26, 3.89, 18, 0.04, 0.02, 6.7, 42, 13.7, 0.5]],
    ['assets/carrot.jpg', 'Морковь', [0.88, 0.26, 3.89, 18, 0.04, 0.02, 6.7, 42, 13.7, 0.5]],
  ];

  List tempVeg = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tempVeg = vegetables;
    controller.clear();

  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF8F8FCFF),
      appBar: AppBar(
          backgroundColor: Color(0xF8F8FCFF),
          title: Text('Овощи', style: TextStyle(
            fontSize: 30
          ),),
          centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 310,
                    child: SearchField(hintText: 'Поиск овощей...', controller: controller, onChanged: (val) => onChanged(val),)),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined))
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: tempVeg.length,
              itemBuilder: (context, index){
              return VegetableMiniInfo(
                title: tempVeg[index][1],
                imageUrl: tempVeg[index][0],
                info: tempVeg[index][2],
              );
            },))
          ],
        ),
      ),
    );
  }

  void onChanged(String p1) {

    setState(() {
      tempVeg = vegetables.where((item) {
        return item[1].toLowerCase().contains(p1);
      }).toList();
    });

  }
}
