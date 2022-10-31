import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:products_application/data/data_providers/remote/dio_helper.dart';
import 'package:products_application/data/entites/help_entities.dart';
import 'package:products_application/data/entites/login.dart';
import 'package:products_application/data/entites/products.dart';

part 'global_event.dart';
part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  final DioHelper dioHelper;
  GlobalBloc(
    this.dioHelper,
  ) : super(const GlobalState()) {
    on<GlobalEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetHelpDataEvent>(((event, emit) async {
      final result = await dioHelper.gethelpdata();
      print(result[1].id);
      emit(GlobalState(helpdata: result));
    }));
    on<GetProductDataEvent>((event, emit) async {
      final result = await dioHelper.getproductData();
      print(result[1].id);
      emit(GlobalState(productsdata: result));
    });
  }
}
