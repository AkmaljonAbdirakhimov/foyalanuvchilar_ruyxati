import 'package:flutter/material.dart';

class FoydalanuvchiQismi extends StatelessWidget {
  final String id;
  final String ismi;
  final String telefon;
  final String rasmManzili;
  final Function foydalanuvchiniUchirish;

  FoydalanuvchiQismi({
    required this.id,
    required this.ismi,
    required this.telefon,
    required this.rasmManzili,
    required this.foydalanuvchiniUchirish,
  });

  @override
  Widget build(BuildContext context) {
    return // Card = bu karobka faqat uzini standard dizayn ega misol uchun soya, borderRadius
        Card(
      // elevation = soya
      elevation: 0,
      // ListTile = Ro'yxat element o'zini standard dizaynlari bilan,
      // misol uchun leading, title, subtitle, trailing
      child: Center(
        child: ListTile(
          // CircleAvatar = yumaloq rasm urnatishda ishlatiladi
          leading: CircleAvatar(
            radius: 30, // radius = yumaloq kattaligi
            backgroundColor: Colors.red, //backgroundColor =  orqa fonning rangi
            // backgroundImage = fonga rasm quyish
            backgroundImage: NetworkImage(
                // NetworkImage = Internet orqali olinayotgan rasm
                rasmManzili),
          ),
          // title = sarlavha
          title: Text(
            ismi,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          // subtitle = 2-darajali sarlavha
          subtitle: Text(telefon),
          // trailing = bu ListTile'ning dumi
          trailing: IconButton(
            onPressed: () {
              foydalanuvchiniUchirish(id);
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
