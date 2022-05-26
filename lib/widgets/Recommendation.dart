import 'package:myapp/widgets/request.dart';
import 'package:flutter/material.dart';
class Recommendations extends StatefulWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<Widget> RecommendList(String name) async {
  var data = await getData(Uri.parse('https://bioscope-api.herokuapp.com/movie?title=$name'));
  List decodedData = jsonDecode(data);
  itemBuilder: (context, index){
    return InkWell(
        onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Recommendations(
              )));
    }
  }
