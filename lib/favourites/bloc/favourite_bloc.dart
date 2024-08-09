import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee_shop/data/coffee_items_data.dart';
import 'package:meta/meta.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteInitial()) {
    on<AddFavoutiteEvent>(addFavoutiteEvent);
  }

  FutureOr<void> addFavoutiteEvent(AddFavoutiteEvent event, Emitter<FavouriteState> emit) {

  }
}
