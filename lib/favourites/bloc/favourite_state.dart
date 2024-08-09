part of 'favourite_bloc.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteActionState extends FavouriteState {}

final class FavouriteInitial extends FavouriteState {}

final class AddFavouriteCoffe extends FavouriteState {
  final CoffeeDataClass coffeeDataClass;

  AddFavouriteCoffe({required this.coffeeDataClass});
}