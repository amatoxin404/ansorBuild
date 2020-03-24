 
import 'dart:async' show Future;
import 'dart:io';
import 'package:ansor_build/src/model/pdam_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'dart:convert';

    // Future<NamaWilayah> getWilayah() async {
    //   var response = await rootBundle.loadString('lib/src/assets/apidummy/wilayah.json');
    //   final jsonResponse = json.decode(response);
    //   return NamaWilayah.fromJson(jsonResponse);
    //   // NamaWilayah wilayah= NamaWilayah.fromJson(jsonResponse);
    //   // print(wilayah.data[1].namaWilayah);
      
    // }

    String baseUrl = "https://afternoon-waters-38775.herokuapp.com";

    Future<NamaWilayah> getWilayah() async {
      var response = await http.get(
        '$baseUrl/master-data/namawilayah',
        headers: {"accept": "application/json"},
      );
      if (response.statusCode == 200) {
        return namaWilayahFromJson(response.body);
      } else {
        return null;
      }
    }

      Future<http.Response> createPostPdam(PostPdam postPdam) async {
      var response = await http.post(
        '$baseUrl/ppob/pdam',
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: postPdamToJson(postPdam),
      );
      print("INI RESPONSE :" + response.body );
      return response;
    }