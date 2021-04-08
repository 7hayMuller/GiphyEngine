import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _offset = 0;

  String _search;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=hQrdCZaKQ1NN9aKL28tahKk1ado6cU6S&limit=25&rating=g ");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=hQrdCZaKQ1NN9aKL28tahKk1ado6cU6S&q=$_search&limit=25&offset=$_offset&rating=g&lang=en");

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _getGifs().then((map) {
      print(map);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
