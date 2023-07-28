import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
//import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
          isloading: true, downloadsFailureOrSuccesoption: none()));
      final Either<MainFailure, List<Downloads>> downloadsoption =
          await _downloadsRepo.getDownloadsImages();
      log(downloadsoption.toString());

      emit(downloadsoption.fold(
          (failure) => state.copyWith(
                isloading: false,
                downloadsFailureOrSuccesoption: Some(
                  Left(failure),
                ),
              ),
          (success) => state.copyWith(
                isloading: false,
                downloads: success,
                downloadsFailureOrSuccesoption: Some(
                  Right(success),
                ),
              )));
    });
  }
}
