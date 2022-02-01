import 'dart:ffi';

import 'package:equatable/equatable.dart';

abstract class ArticleEvent extends Equatable {}

class ArticleFetchedEvent extends ArticleEvent {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
