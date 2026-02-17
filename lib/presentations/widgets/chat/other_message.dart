import 'package:flutter/material.dart';

class OtherMessage extends StatelessWidget {
  const OtherMessage({super.key});

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
            "Hola este es un mensaje",
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
              "https://yesno.wtf/assets/no/9-dc99c0e3c066b28d3a12262692cd5432.gif",
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
