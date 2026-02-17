import 'package:flutter/material.dart';

class InputMessage extends StatelessWidget {
  const InputMessage({super.key, required this.valueChangeMessage});

  final ValueChanged<String> valueChangeMessage;

  @override
  Widget build(BuildContext context) {
    final controllerInput = TextEditingController();
    final focusNode = FocusNode();

    return TextFormField(
      autocorrect: true,
      autofocus: true,
      canRequestFocus: true,
      controller: controllerInput,
      focusNode: focusNode,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: EdgeInsetsGeometry.all(5),
          child: IconButton(
            onPressed: () {
              controllerInput.clear();
              valueChangeMessage(controllerInput.value.text);
            },
            icon: Icon(Icons.send_sharp),
          ),
        ),
        hintText: "Que quiere preguntar?",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
      ),
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      onFieldSubmitted: (value) {
        controllerInput.clear();
        valueChangeMessage(value);
        focusNode.requestFocus();
      },
      onChanged: (value) {},
    );
  }
}
