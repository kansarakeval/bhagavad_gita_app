import 'package:bhagavad_gita_app/screen/home/model/home_model.dart';
import 'package:bhagavad_gita_app/screen/home/provider/home_provider.dart';
import 'package:bhagavad_gita_app/widget/alert_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShlokaScreen extends StatefulWidget {
  const ShlokaScreen({super.key});

  @override
  State<ShlokaScreen> createState() => _ShlokaScreenState();
}

class _ShlokaScreenState extends State<ShlokaScreen> {
  @override
  Widget build(BuildContext context) {
    HomeModel model = ModalRoute.of(context)!.settings.arguments as HomeModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: context!.read<HomeProvider>().lag == "Gujarati"?Text(model.Guj, style: Theme.of(context).textTheme.titleLarge,):context.read<HomeProvider>().lag == "English"?Text(model.Eng, style: Theme.of(context).textTheme.titleLarge,):Text(model.name, style: Theme.of(context).textTheme.titleLarge,),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        showWebDialog(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.language),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Language")
                        ],
                      ),
                    ),
                  ),
                ];
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(model.image,height: 300,width: double.infinity,),
                SizedBox(height: 20,),
                context.read<HomeProvider>().lag == "Gujarati"
                    ? Text(model.gshloka,
                        style: Theme.of(context).textTheme.titleMedium)
                    : context.read<HomeProvider>().lag == "English"
                        ? Text(model.Eshloka,
                            style: Theme.of(context).textTheme.titleMedium)
                        : Text(model.shloka,
                            style: Theme.of(context).textTheme.titleMedium)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
