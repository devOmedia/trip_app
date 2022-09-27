import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/controller/connection_helper.dart';
import '../model/constants.dart';
import '../model/trip_model.dart';

class DataController extends ChangeNotifier {
  ConnectionHelper connectionHelper = ConnectionHelper();
  List<TripModel> trips = [];
  bool isLoading = true;
  final String geturl = '$baseUrl/all-trips';
  final String postUrl = '$baseUrl/set-trip-status/';

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

  Future<void> actionsOnTrips(dynamic data) async {
    Response<dynamic>? response =
        await connectionHelper.postData(postUrl, data);

    if (response!.statusCode == 200) {
      log('Data gache');
    } else {
      log('data jaynai');
      log(response.statusCode.toString());
    }
  }

 
}


 // Map<String, dynamic> toJson() {
    
  //   final Map<String, dynamic> data =  Map<String, dynamic>();
  //   data['request_trip_id'] = this.requestTripId;
  //   if (this.tripInformation != null) {
  //     data['trip_information'] = this.tripInformation!.toJson();
  //   }
  //   data['trip_status'] = this.tripStatus;
  //   return data;
  // }