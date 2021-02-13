import 'package:belajar_flutter/src/model/sample_model.dart';
import 'package:belajar_flutter/src/viewmodel/sample_viewmodel.dart';
import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  SampleViewModel sampleViewModel = new SampleViewModel();
  List<UserModel> dataUser = [];

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  void getDataUser() {
    // print(sampleViewModel.getUser());
    sampleViewModel.getUser().then((value) {
      print(value);
      // setState(() {
      //   dataUser = value;
      // });
      setState(() {
        dataUser.clear();
        for (var item in value) {
          UserModel userMode = UserModel(
            item['id'],
            item['email'],
            item['first_name'],
            item['last_name'],
            item['avatar'],
          );
          dataUser.add(userMode);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("List Data User")),
        body: ListView.builder(
          itemCount: dataUser.length,
          itemBuilder: (context, index) {
            final i = dataUser[index];
            return Container(
              child: Text("${i.ofirstName} ${i.olastName}"),
            );
          },
        ),
      ),
    );
  }
}
