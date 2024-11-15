import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/components/search_field.dart';
import 'package:testapp/pages/vegetables_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

  final List<List> categories = [
    ['assets/1.jpg', 'Овощи'],
    ['assets/2.jpg', 'Фрукты'],
    ['assets/3.jpg', 'Ягоды'],
    ['assets/4.jpg', 'Сухофрукты'],
    ['assets/4.jpg', 'Мясо'],
  ];

  TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: SearchField(hintText: 'Поиск продуктов...', controller: controller,),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  if (index == 0)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VegetablesPage(),));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(categories[index][0]),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: ListTile(
                        title: Text(categories[index][1], style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
