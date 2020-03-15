import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:reso_clean_architecture/core/error/failures.dart';
import 'package:reso_clean_architecture/core/usecases/usecases.dart';
import 'package:reso_clean_architecture/features/number_trivia/data/repositories/number_trivia_repository.dart';
import 'package:reso_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}
