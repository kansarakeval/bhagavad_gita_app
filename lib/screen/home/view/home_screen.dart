import 'package:bhagavad_gita_app/screen/home/model/home_model.dart';
import 'package:bhagavad_gita_app/screen/home/provider/home_provider.dart';
import 'package:bhagavad_gita_app/util/share_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bhagavad Gita",style: Theme.of(context).textTheme.titleLarge
          ),
          centerTitle: true,
          actions: [
            Consumer<HomeProvider>(
              builder: (context, value1, child) => Switch(
                value: value1.islight,
                onChanged: (value) {
                  ShareHelper shr = ShareHelper();
                  shr.setTheme(value);
                  value1.changeTheme();
                },
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: providerw!.bhagavadList.length,
          itemBuilder: (context, index) {
            HomeModel h1 = providerr!.bhagavadList[index];
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'shloka', arguments: h1);
              },
              leading: Text("${h1.id}", style: Theme.of(context).textTheme.titleMedium),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${h1.name}", style: Theme.of(context).textTheme.titleMedium),
                  Text("${h1.Eng}", style: Theme.of(context).textTheme.titleMedium),
                  Text("${h1.Guj}", style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
