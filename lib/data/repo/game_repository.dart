import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:latihan_api_bloc/core/api_client.dart';
import 'package:latihan_api_bloc/data/models/game_models.dart';

class GameRepository extends ApiClient{
  Future<List<GameModel>> fetchGames()async{
    try{
      var response = await dio.get('games');
      debugPrint('GET ALL games : ${response.data}');
      List list = response.data;
      List<GameModel> listGameModel = list.map((element)=>GameModel.fromJson(element)).toList();
      return listGameModel;
    }on DioException catch (e) {
      throw Exception(e);
    }
  }
}