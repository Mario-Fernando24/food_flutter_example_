import 'package:flutter/material.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

class ListTitleChecked extends StatefulWidget {
  const ListTitleChecked({super.key});

  @override
  State<ListTitleChecked> createState() => _ListTitleCheckedState();
}

class _ListTitleCheckedState extends State<ListTitleChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         listTitle(texto: 'Top Rated', functio: (){}, isActive: false)
      ],
    );
  }

  Widget listTitle({texto= String, functio = Function, isActive= bool}){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey
          )
        )
      ),
      child: ListTile(
        onTap: functio,
        title: headerText(texto,isActive? Colors.orange: Colors.grey, FontWeight.w300, 17.0),
        trailing: Icon(Icons.check, color: isActive?Colors.orange : Colors.grey),
      ),
    );
  }
}
