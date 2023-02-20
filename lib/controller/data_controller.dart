import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/controller/connection_helper.dart';
import 'package:trip_app/model/localDB.dart';
import '../model/constants.dart';
import '../model/trip_model.dart';

//http://192.168.0.180:6969/api/v1/login/

class DataController extends ChangeNotifier {
  ConnectionHelper connectionHelper = ConnectionHelper();
  List<TripModel> trips = [];
  bool isLoading = false;
  final String geturl = '$baseUrl/all-trips';
  final String postUrl = '$baseUrl/set-trip-status/';
  bool isUserLogin = false;
  bool isLoginError = false;

  Future<bool?> getUserLogin(String email, String password) async {
    isUserLogin = false;
    isLoginError = false;
    isLoading = true;
    notifyListeners();

    final response = await connectionHelper.postData("${baseUrl}/login/", {
      "email": email,
      "password": password,
    });

    if (response != null) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        userData.setToken(response.data["access"], response.data["refresh"]);
        isUserLogin = true;
        isLoading = false;
        notifyListeners();
        return true;
      }
      isUserLogin = false;
      isLoading = false;
      isLoginError = true;
      notifyListeners();
      return false;
    }
    return false;
  }

  Future<void> getAllTrips() async {
    isLoading = false;

    Response<dynamic>? response = await connectionHelper.getData(geturl);

    if (response!.statusCode == 200) {
      log('Data fetched');

      trips =
          (response.data as List).map((e) => TripModel.fromJson(e)).toList();
      isLoading = true;
    } else {
      log('data didnot fetched');
    }

    notifyListeners();
  }

  Future<bool> changeTripStatus(dynamic data) async {
    //isLoading = true;
    Response<dynamic>? response =
        await connectionHelper.postData(postUrl, data);

    if (response!.statusCode == 200) {
      log('Data gache');
      getAllTrips();
      return true;
    } else {
      log('data jaynai');
      log(response.statusCode.toString());
      return false;
    }
  }
}
