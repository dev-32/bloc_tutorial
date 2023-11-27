part of 'like_button_bloc.dart';
@immutable
abstract class LikeButtonState extends Equatable{
  final IconData widget;
  const LikeButtonState({required this.widget});
  @override
  List<Object> get props => [widget];
}

class LikeButtonInitial extends LikeButtonState {
 const LikeButtonInitial() : super(widget: Icons.favorite_border)
  ;
}

class LikeButtonClickedState extends LikeButtonState{
   LikeButtonClickedState(IconData icon) : super(widget: icon == Icons.favorite_border
   ? icon = Icons.favorite : icon = Icons.favorite_border);
}

