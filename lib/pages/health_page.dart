import 'package:flutter/material.dart';
import 'package:testapp/components/health_text_field.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {

  String hintText = 'Введите...';
  TextEditingController controller1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("Анализы", style: TextStyle(
            fontSize: 30
          ),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Минералы'),
                Text('Ваши данные'),
                Text('Рекомендовано'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Кальций'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('1000 мг'),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Железо'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('8 мг'),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Магний'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('420 мг'),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Фосфор'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('700 мг'),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Калий'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('4.700 мг'),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Натрий'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('1.500 мг'),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Цинк'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('11 мг'),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Медь'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('0.9 мг'),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Марганец'),
                SizedBox(
                    width: 150,
                    child: InputTextField(hintText: hintText, controller: controller1, onChanged: (text) => {})),
                Text('2.3 мг'),
              ],
            ),
          ],
          )

          ),
        ),


      ],
    );
  }
}
