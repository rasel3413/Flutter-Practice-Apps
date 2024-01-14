part of 'color_bloc.dart';

@immutable
abstract class ColorState {

  final Color color;

  ColorState({required this.color});
  
}

final class ColorInitial extends ColorState {
  ColorInitial({ super.color=Colors.black});


}
final class ColorUpdate extends ColorState{
  ColorUpdate(Color color):super(color: color);
}
