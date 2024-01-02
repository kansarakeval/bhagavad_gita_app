import 'package:bhagavad_gita_app/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showWebDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Language"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile(
              value: "Gujarati",
              title: Text("Gujarati"),
              groupValue: context.read<HomeProvider>().lag,
              onChanged: (value) {
                context.read<HomeProvider>().language(value.toString());
                Navigator.pop(context);
              },
            ),
            RadioListTile(
              value: "English",
              title: Text("English"),
              groupValue: context.read<HomeProvider>().lag,
              onChanged: (value) {
                context.read<HomeProvider>().language(value.toString());
                Navigator.pop(context);
              },
            ),
            RadioListTile(
              value: "Sanskrit",
              title: Text("Sanskrit"),
              groupValue: context.read<HomeProvider>().lag,
              onChanged: (value) {
                context.read<HomeProvider>().language(value.toString());
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
