import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_states.dart';
import 'package:lafyuu/Model/cardModel.dart';
import 'package:lafyuu/Repository/product_repository.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(LoddingState());

  void getAllProduct() async {
    final listOfProduct = await ProductRepository().getAllProduct();
    // emit(SuccessState(listOfProduct));
  }
}
