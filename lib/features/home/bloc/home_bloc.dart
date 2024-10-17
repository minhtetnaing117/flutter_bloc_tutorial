import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClickedEvent>(
      homeProductWishlistButtonClickedEvent
      );

    on<HomeProductCartButtonClickedEvent>(
      homeProductCartButtonClickedEvent);

    on<HomeWishlistButtonNavigateEvent>(
      homeWishlistButtonNavigateEvent
    );

    on<HomeCartButtonNavigateEvent>(
      homeCartButtonNavigateEvent
    );
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(
     HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit){
      print('Wishlist Prodct Click');
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
     HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit){
      print('Cart Prodct Click');
  }

  FutureOr<void> homeWishlistButtonNavigateEvent(
     HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit){
      print('Wishlist Navigate Click');
  }

  FutureOr<void> homeCartButtonNavigateEvent(
     HomeCartButtonNavigateEvent event, Emitter<HomeState> emit){
      print('Cart Navigate Click');
  }
}
