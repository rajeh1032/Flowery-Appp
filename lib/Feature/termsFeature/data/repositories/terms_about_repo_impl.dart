import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/about_response_entity.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/entity/response/terms_response_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/domain/repositories/terms_about_repo.dart';
import 'package:flower_e_commerce_app/Feature/termsFeature/data/dataSources/terms_about_local_data_source.dart';

@Injectable(as: TermsAboutRepo)
class TermsAboutRepoImpl implements TermsAboutRepo {
  final TermsAboutLocalDataSource _localDataSource;

  TermsAboutRepoImpl({
    required TermsAboutLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  @override
  Future<TermsResponseEntity> getTermsAndConditions() {
    return _localDataSource.getTermsAndConditions();
  }

  @override
  Future<AboutResponseEntity> getAboutApp() {
    return _localDataSource.getAboutApp();
  }
}
