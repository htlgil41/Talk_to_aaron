import 'package:flutter/material.dart';
import 'package:talk_to_aaron/domain/entities/message.dart';

class OtherMessage extends StatelessWidget {
  const OtherMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromRGBO(36, 177, 146, 1),
          ),
          padding: EdgeInsets.all(15),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),

        const SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(35),
          child: Image(
            height: size.width / 2,
            width: size.height / 2,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(36, 138, 195, 255),
                  ),
                  height: size.width / 2,
                  width: size.height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enviando imagen",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "............",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }
            },
            image: NetworkImage(
              message.urlImage ??
                  "https://i.ebayimg.com/images/g/4oEAAOSw~mxji5wI/s-l1200.jpg",
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
