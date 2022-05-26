import 'package:flutter_bloc/flutter_bloc.dart';

class Nav extends Cubit<int> {
  Nav() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index) => emit(index);

  /// for navigation button on single page
  void Expenses() => emit(0);
  void Home() => emit(1);
  void Profile() => emit(2);
}
