// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:task_manager/presentation/main/chat_list/chat_list_view_model.dart'
    as _i3;
import 'package:task_manager/presentation/main/group_list/group_list_view_model.dart'
    as _i4;
import 'package:task_manager/presentation/main/home/home_view_model.dart'
    as _i5;
import 'package:task_manager/presentation/main/main_view_model.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ChatListViewModel>(() => _i3.ChatListViewModel());
    gh.factory<_i4.GroupListViewModel>(() => _i4.GroupListViewModel());
    gh.factory<_i5.HomeViewModel>(() => _i5.HomeViewModel());
    gh.factory<_i6.MainViewModel>(() => _i6.MainViewModel());
    return this;
  }
}
