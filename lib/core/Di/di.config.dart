// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:location/location.dart' as _i645;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../../Feature/AddressFeature/api/client/address_api_service.dart'
    as _i304;
import '../../Feature/AddressFeature/api/dataSources/local/address_local_data_source_impl.dart'
    as _i932;
import '../../Feature/AddressFeature/api/dataSources/remote/address_remote_data_source_impl.dart'
    as _i824;
import '../../Feature/AddressFeature/data/dataSources/address_local_data_source.dart'
    as _i436;
import '../../Feature/AddressFeature/data/dataSources/address_remote_data_source.dart'
    as _i115;
import '../../Feature/AddressFeature/data/repository/address_repo_impl.dart'
    as _i98;
import '../../Feature/AddressFeature/domain/repositories/address_repo.dart'
    as _i718;
import '../../Feature/AddressFeature/domain/useCases/add_address_use_case.dart'
    as _i451;
import '../../Feature/AddressFeature/domain/useCases/delete_address_use_case.dart'
    as _i179;
import '../../Feature/AddressFeature/domain/useCases/get_addresses_use_case.dart'
    as _i1008;
import '../../Feature/AddressFeature/domain/useCases/get_cities_by_governorate_use_case.dart'
    as _i359;
import '../../Feature/AddressFeature/domain/useCases/get_cities_use_case.dart'
    as _i378;
import '../../Feature/AddressFeature/domain/useCases/get_governorates_use_case.dart'
    as _i483;
import '../../Feature/AddressFeature/domain/useCases/update_address_use_case.dart'
    as _i392;
import '../../Feature/AddressFeature/presentation/viewModel/addressViewModel/address_view_model.dart'
    as _i506;
import '../../Feature/auth/api/client/api_service.dart' as _i500;
import '../../Feature/auth/api/dataSources/auth_local_data_source_impl.dart'
    as _i608;
import '../../Feature/auth/api/dataSources/auth_remote_data_source_impl.dart'
    as _i515;
import '../../Feature/auth/data/dataSources/auth_local_data_source.dart'
    as _i901;
import '../../Feature/auth/data/dataSources/auth_remote_data_source.dart'
    as _i896;
import '../../Feature/auth/data/repositories/auth_repo_impl.dart' as _i923;
import '../../Feature/auth/domain/repositories/auth_repo.dart' as _i466;
import '../../Feature/auth/domain/useCases/check_user_loggedIn_use_case.dart'
    as _i902;
import '../../Feature/auth/domain/useCases/forget_password_use_case.dart'
    as _i568;
import '../../Feature/auth/domain/useCases/logout_use_case.dart' as _i714;
import '../../Feature/auth/domain/useCases/reset_password_use_case.dart'
    as _i576;
import '../../Feature/auth/domain/useCases/sign_in_use_case.dart' as _i375;
import '../../Feature/auth/domain/useCases/sign_up_use_case.dart' as _i630;
import '../../Feature/auth/domain/useCases/verify_reset_code_use_case.dart'
    as _i136;
import '../../Feature/auth/presentation/viewModel/forgetPassword/forget_password_view_model.dart'
    as _i889;
import '../../Feature/auth/presentation/viewModel/logout/logout_view_model.dart'
    as _i877;
import '../../Feature/auth/presentation/viewModel/signin/sign_in_view_model.dart'
    as _i301;
import '../../Feature/auth/presentation/viewModel/signUp/signup_view_model.dart'
    as _i990;
import '../../Feature/bestSellerFeature/api/client/most_selling_api_service.dart'
    as _i35;
import '../../Feature/bestSellerFeature/api/dataSources/best_seller_remote_data_source_impl.dart'
    as _i320;
import '../../Feature/bestSellerFeature/data/dataSource/best_seller_remote_data_source.dart'
    as _i806;
import '../../Feature/bestSellerFeature/data/repositories/best_seller_repo_impl.dart'
    as _i983;
import '../../Feature/bestSellerFeature/domain/repositories/best_seller_repo.dart'
    as _i516;
import '../../Feature/bestSellerFeature/domain/useCases/best_seller_use_case.dart'
    as _i127;
import '../../Feature/bestSellerFeature/presentation/viewModel/best_seller_model_view.dart'
    as _i53;
import '../../Feature/checkout/api/client/checkout_api_service.dart' as _i257;
import '../../Feature/checkout/api/dataSources/checkout_remote_data_source_impl.dart'
    as _i1066;
import '../../Feature/checkout/data/dataSources/checkout_remote_data_source.dart'
    as _i904;
import '../../Feature/checkout/data/repositories/checkout_repo_impl.dart'
    as _i876;
import '../../Feature/checkout/domain/repositories/checkout_repo.dart' as _i46;
import '../../Feature/checkout/domain/useCases/create_cash_order_use_case.dart'
    as _i1;
import '../../Feature/checkout/domain/useCases/create_visa_order_use_case.dart'
    as _i140;
import '../../Feature/checkout/domain/useCases/get_user_address_use_case.dart'
    as _i87;
import '../../Feature/checkout/presentation/viewModels/checkout_view_model.dart'
    as _i480;
import '../../Feature/editProfile/api/client/profile_api_service.dart' as _i762;
import '../../Feature/editProfile/api/dataSources/profile_remote_data_source_impl.dart'
    as _i1007;
import '../../Feature/editProfile/data/dataSources/profile_remote_data_source.dart'
    as _i700;
import '../../Feature/editProfile/data/repositories/profile_repo_impl.dart'
    as _i387;
import '../../Feature/editProfile/domain/repositories/profile_repo.dart'
    as _i197;
import '../../Feature/editProfile/domain/useCases/edit_profile_use_case.dart'
    as _i983;
import '../../Feature/editProfile/domain/useCases/get_logged_user_use_case.dart'
    as _i182;
import '../../Feature/editProfile/domain/useCases/upload_photo_use_case.dart'
    as _i463;
import '../../Feature/editProfile/presentation/viewModels/profileViewModel/profile_view_model.dart'
    as _i373;
import '../../Feature/mainLayout/tabs/cart/api/client/cart_api_service.dart'
    as _i115;
import '../../Feature/mainLayout/tabs/cart/api/dataSources/cart_remote_data_source_impl.dart'
    as _i790;
import '../../Feature/mainLayout/tabs/cart/data/dataSources/cart_remote_data_source.dart'
    as _i550;
import '../../Feature/mainLayout/tabs/cart/data/repositories/cart_repo_impl.dart'
    as _i645;
import '../../Feature/mainLayout/tabs/cart/domain/repositories/cart_repo.dart'
    as _i262;
import '../../Feature/mainLayout/tabs/cart/domain/useCases/clear_specific_cart_item_use_case.dart'
    as _i966;
import '../../Feature/mainLayout/tabs/cart/domain/useCases/clear_user_cart_use_case.dart'
    as _i811;
import '../../Feature/mainLayout/tabs/cart/domain/useCases/get_user_cart_use_case.dart'
    as _i1055;
import '../../Feature/mainLayout/tabs/cart/domain/useCases/update_cart_product_quantity_use_case.dart'
    as _i922;
import '../../Feature/mainLayout/tabs/cart/presentation/viewModel/cart_cubit.dart'
    as _i109;
import '../../Feature/mainLayout/tabs/categoriesFeature/api/client/api_service.dart'
    as _i996;
import '../../Feature/mainLayout/tabs/categoriesFeature/api/dataSources/categories_remote_data_source_impl.dart'
    as _i98;
import '../../Feature/mainLayout/tabs/categoriesFeature/data/dataSources/categories_remote_data_source.dart'
    as _i341;
import '../../Feature/mainLayout/tabs/categoriesFeature/data/repositories/categories_repo_impl.dart'
    as _i1066;
import '../../Feature/mainLayout/tabs/categoriesFeature/domain/repositories/categories_repo.dart'
    as _i691;
import '../../Feature/mainLayout/tabs/categoriesFeature/domain/useCases/categories_use_case.dart'
    as _i66;
import '../../Feature/mainLayout/tabs/categoriesFeature/domain/useCases/get_all_products_use_case.dart'
    as _i201;
import '../../Feature/mainLayout/tabs/categoriesFeature/domain/useCases/get_category_products_use_case.dart'
    as _i214;
import '../../Feature/mainLayout/tabs/categoriesFeature/domain/useCases/get_products_by_category_use_case.dart'
    as _i137;
import '../../Feature/mainLayout/tabs/categoriesFeature/presentation/viewModel/viewModel/categories_view_model.dart'
    as _i1057;
import '../../Feature/mainLayout/tabs/home/presentation/viewModel/home_view_model.dart'
    as _i1060;
import '../../Feature/mainLayout/tabs/profile_main/api/client/profile_api_service.dart'
    as _i542;
import '../../Feature/mainLayout/tabs/profile_main/api/dataSources/profile_main_remote_data_source_impl.dart'
    as _i386;
import '../../Feature/mainLayout/tabs/profile_main/data/dataSources/profile_main_remote_data_source.dart'
    as _i795;
import '../../Feature/mainLayout/tabs/profile_main/data/repositories/profile_main_repo_impl.dart'
    as _i418;
import '../../Feature/mainLayout/tabs/profile_main/domain/repositories/profile_main_repo.dart'
    as _i183;
import '../../Feature/mainLayout/tabs/profile_main/domain/useCases/get_logged_user_use_case.dart'
    as _i868;
import '../../Feature/mainLayout/tabs/profile_main/presentation/viewModels/profileViewModel/profile_main_view_model.dart'
    as _i505;
import '../../Feature/occasion/api/client/occasion_api_service.dart' as _i713;
import '../../Feature/occasion/api/dataSources/occasion_remote_data_source_impl.dart'
    as _i108;
import '../../Feature/occasion/data/dataSources/occasion_remote_data_source.dart'
    as _i245;
import '../../Feature/occasion/data/repositories/occasion_repo_impl.dart'
    as _i782;
import '../../Feature/occasion/domain/repositories/occasion_repo.dart' as _i215;
import '../../Feature/occasion/domain/useCases/add_product_to_cart_use_case.dart'
    as _i781;
import '../../Feature/occasion/domain/useCases/get_all_occasion_use_case.dart'
    as _i49;
import '../../Feature/occasion/domain/useCases/get_products_by_occasion_use_case.dart'
    as _i89;
import '../../Feature/occasion/presentation/viewModels/occasion_view_model.dart'
    as _i347;
import '../../Feature/ordersPage/api/client/orders_service.dart' as _i88;
import '../../Feature/ordersPage/api/dataSources/orders_remote_data_source_impl.dart'
    as _i694;
import '../../Feature/ordersPage/data/dataSources/orders_remote_data_source.dart'
    as _i755;
import '../../Feature/ordersPage/data/repositories/orders_repo_impl.dart'
    as _i855;
import '../../Feature/ordersPage/domain/repositories/orders_repo.dart' as _i214;
import '../../Feature/ordersPage/domain/useCases/orders_use_case.dart' as _i57;
import '../../Feature/ordersPage/presentation/viewModels/orders_view_model.dart'
    as _i64;
import '../../Feature/searchFeature/api/client/search_api_service.dart'
    as _i104;
import '../../Feature/searchFeature/api/dataSources/search_remote_data_source_impl.dart'
    as _i112;
import '../../Feature/searchFeature/data/dataSource/search_remote_data_source.dart'
    as _i509;
import '../../Feature/searchFeature/data/repositories/search_repo_impl.dart'
    as _i695;
import '../../Feature/searchFeature/domain/repositories/search_repo.dart'
    as _i886;
import '../../Feature/searchFeature/domain/useCases/product_search_use_case.dart'
    as _i167;
import '../../Feature/searchFeature/presentation/viewModel/search_view_model.dart'
    as _i670;
import '../../Feature/termsFeature/api/dataSource/local/terms_about_local_data_source_impl.dart'
    as _i603;
import '../../Feature/termsFeature/data/dataSources/terms_about_local_data_source.dart'
    as _i702;
import '../../Feature/termsFeature/data/repositories/terms_about_repo_impl.dart'
    as _i857;
import '../../Feature/termsFeature/domain/repositories/terms_about_repo.dart'
    as _i989;
import '../../Feature/termsFeature/domain/useCases/get_about_use_case.dart'
    as _i36;
import '../../Feature/termsFeature/domain/useCases/get_terms_use_case.dart'
    as _i190;
import '../../Feature/termsFeature/presentation/viewModel/terms_about_view_model.dart'
    as _i64;
import '../../Feature/termsFeature/presentation/widgets/about_screen.dart'
    as _i751;
import '../../Feature/termsFeature/presentation/widgets/terms_screen.dart'
    as _i269;
import '../../Feature/trackMap/api/client/track_map_api_service.dart' as _i345;
import '../../Feature/trackMap/api/datasources/track_map_remote_data_source_impl.dart'
    as _i642;
import '../../Feature/trackMap/data/dataSources/track_map_remote_data_source.dart'
    as _i73;
import '../../Feature/trackMap/data/repositories/track_map_repo_impl.dart'
    as _i795;
import '../../Feature/trackMap/domain/repositories/track_map_repo.dart'
    as _i155;
import '../../Feature/trackMap/domain/useCases/get_route_use_case.dart' as _i53;
import '../../Feature/trackMap/presentation/viewModel/track_map_view_model.dart'
    as _i406;
import '../../Feature/trackOrder/api/client/track_order_api_service.dart'
    as _i206;
import '../../Feature/trackOrder/data/data_source/track_order_remote_ds.dart'
    as _i913;
import '../../Feature/trackOrder/data/data_source/track_order_remote_ds_imp.dart'
    as _i779;
import '../../Feature/trackOrder/data/repo/track_order_repo_imp.dart' as _i1052;
import '../../Feature/trackOrder/domain/repo/track_order_repo.dart' as _i470;
import '../../Feature/trackOrder/domain/use_case/get_order_stream_use_case.dart'
    as _i560;
import '../../Feature/trackOrder/domain/use_case/get_vehicle_by_id_use_case.dart'
    as _i169;
import '../../Feature/trackOrder/domain/use_case/update_order_firebase_use_case.dart'
    as _i97;
import '../../Feature/trackOrder/presentaion/view_model/track_order_cubit.dart'
    as _i670;
import '../classes/remote_executor.dart' as _i132;
import '../Errors/internet_connection.dart' as _i544;
import '../helpers/app_config_cubit.dart' as _i713;
import '../Services/firebase_services.dart' as _i756;
import '../Services/secure_storage.dart' as _i927;
import '../Services/storage_interface.dart' as _i456;
import 'dioModul/dio_modle.dart' as _i456;
import 'dioModul/external_modules.dart' as _i649;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final externalModules = _$ExternalModules();
    gh.factory<_i132.FirebaseRemoteExecutor>(
        () => _i132.FirebaseRemoteExecutor());
    gh.factory<_i132.ApiRemoteExecutor>(() => _i132.ApiRemoteExecutor());
    gh.lazySingleton<_i528.PrettyDioLogger>(
        () => dioModule.providePrettyDioLogger());
    gh.lazySingleton<_i361.Dio>(() => dioModule.provideDio());
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => externalModules.provideInternetConnectionChecker());
    gh.lazySingleton<_i645.Location>(() => externalModules.provideLocation());
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => externalModules.provideFirebaseFirestore());
    gh.factory<_i436.AddressLocalDataSource>(
        () => _i932.AddressLocalDataSourceImpl());
    gh.factory<_i751.AboutScreen>(
        () => _i751.AboutScreen(key: gh<_i409.Key>()));
    gh.factory<_i269.TermsScreen>(
        () => _i269.TermsScreen(key: gh<_i409.Key>()));
    gh.factory<_i304.AddressApiServices>(
        () => _i304.AddressApiServices.new(gh<_i361.Dio>()));
    gh.factory<_i500.ApiServices>(() => _i500.ApiServices.new(gh<_i361.Dio>()));
    gh.factory<_i35.MostSellingApiService>(
        () => _i35.MostSellingApiService.new(gh<_i361.Dio>()));
    gh.factory<_i257.CheckoutApiService>(
        () => _i257.CheckoutApiService.new(gh<_i361.Dio>()));
    gh.factory<_i762.ProfileApiService>(
        () => _i762.ProfileApiService.new(gh<_i361.Dio>()));
    gh.factory<_i115.CartApiService>(
        () => _i115.CartApiService.new(gh<_i361.Dio>()));
    gh.factory<_i996.ApiServices>(() => _i996.ApiServices.new(gh<_i361.Dio>()));
    gh.factory<_i542.ProfileApiService>(
        () => _i542.ProfileApiService.new(gh<_i361.Dio>()));
    gh.factory<_i713.OccasionApiService>(
        () => _i713.OccasionApiService.new(gh<_i361.Dio>()));
    gh.factory<_i88.OrdersApiService>(
        () => _i88.OrdersApiService.new(gh<_i361.Dio>()));
    gh.factory<_i104.SearchApiService>(
        () => _i104.SearchApiService.new(gh<_i361.Dio>()));
    gh.factory<_i345.TrackMapApiService>(
        () => _i345.TrackMapApiService.new(gh<_i361.Dio>()));
    gh.factory<_i206.TrackOrderApiService>(
        () => _i206.TrackOrderApiService.new(gh<_i361.Dio>()));
    gh.factory<_i115.AddressRemoteDataSource>(() =>
        _i824.AddressRemoteDataSourceImpl(
            apiServicest: gh<_i304.AddressApiServices>()));
    gh.factory<_i245.OccasionRemoteDataSource>(() =>
        _i108.OccasionRemoteDataSourceImpl(gh<_i713.OccasionApiService>()));
    gh.factory<_i702.TermsAboutLocalDataSource>(
        () => const _i603.TermsAboutLocalDataSourceImpl());
    gh.factory<_i904.CheckoutRemoteDataSource>(() =>
        _i1066.CheckoutRemoteDataSourceImpl(gh<_i257.CheckoutApiService>()));
    gh.lazySingleton<_i456.Storage>(
      () => _i927.SecureStorageImpl(),
      instanceName: 'secureStorage',
    );
    gh.factory<_i73.TrackMapRemoteDataSource>(() =>
        _i642.TrackMapRemoteDataSourceImpl(gh<_i345.TrackMapApiService>()));
    gh.factory<_i700.ProfileRemoteDataSource>(() =>
        _i1007.ProfileRemoteDataSourceImpl(
            profileApiService: gh<_i762.ProfileApiService>()));
    gh.lazySingleton<_i544.NetworkConnection>(() =>
        _i544.NetworkConnectionImpl(gh<_i973.InternetConnectionChecker>()));
    gh.factory<_i341.CategoriesRemoteDataSource>(() =>
        _i98.CategoriesRemoteDataSourceImpl(
            apiServicest: gh<_i996.ApiServices>()));
    gh.factory<_i197.ProfileRepo>(() => _i387.ProfileRepoImpl(
        profileRemoteDataSource: gh<_i700.ProfileRemoteDataSource>()));
    gh.factory<_i756.FirebaseService>(
        () => _i756.FirebaseService(firestore: gh<_i974.FirebaseFirestore>()));
    gh.factory<_i691.CategoriesRepo>(() => _i1066.CategoriesRepoImpl(
        categoriesRemoteDataSource: gh<_i341.CategoriesRemoteDataSource>()));
    gh.factory<_i989.TermsAboutRepo>(() => _i857.TermsAboutRepoImpl(
        localDataSource: gh<_i702.TermsAboutLocalDataSource>()));
    gh.factory<_i509.SearchRemoteDataSource>(
        () => _i112.SearchRemoteDataSourceImpl(gh<_i104.SearchApiService>()));
    gh.factory<_i886.SearchRepo>(
        () => _i695.SearchRepoImpl(gh<_i509.SearchRemoteDataSource>()));
    gh.factory<_i46.CheckoutRepo>(
        () => _i876.CheckoutRepoImpl(gh<_i904.CheckoutRemoteDataSource>()));
    gh.factory<_i795.ProfileMainRemoteDataSource>(() =>
        _i386.ProfileMainRemoteDataSourceImpl(gh<_i542.ProfileApiService>()));
    gh.factory<_i182.GetLoggedUserUseCase>(
        () => _i182.GetLoggedUserUseCase(gh<_i197.ProfileRepo>()));
    gh.factory<_i183.ProfileMainRepo>(() =>
        _i418.ProfileMainRepoImpl(gh<_i795.ProfileMainRemoteDataSource>()));
    gh.factory<_i755.OrdersRemoteDataSource>(
        () => _i694.OrdersRemoteDataSourceImpl(gh<_i88.OrdersApiService>()));
    gh.factory<_i806.BestSellerRemoteDataSource>(() =>
        _i320.BestSellerRemoteDataSourceImpl(
            apiServices: gh<_i35.MostSellingApiService>()));
    gh.factory<_i901.AuthLocalDataSource>(() => _i608.AuthLocalDataSourceImpl(
        gh<_i456.Storage>(instanceName: 'secureStorage')));
    gh.factory<_i66.CategoriesUseCase>(() =>
        _i66.CategoriesUseCase(categoriesRepo: gh<_i691.CategoriesRepo>()));
    gh.factory<_i201.GetAllProductsUseCase>(() => _i201.GetAllProductsUseCase(
        categoriesRepo: gh<_i691.CategoriesRepo>()));
    gh.factory<_i214.GetCategoryProductsUseCase>(() =>
        _i214.GetCategoryProductsUseCase(
            categoriesRepo: gh<_i691.CategoriesRepo>()));
    gh.factory<_i137.GetProductsByCategoryUseCase>(() =>
        _i137.GetProductsByCategoryUseCase(
            categoriesRepo: gh<_i691.CategoriesRepo>()));
    gh.factory<_i516.BestSellerRepo>(() => _i983.BestSellerRepoImpl(
        dataSource: gh<_i806.BestSellerRemoteDataSource>()));
    gh.factory<_i896.AuthRemoteDataSource>(
        () => _i515.AuthRemoteDataSourceImpl(gh<_i500.ApiServices>()));
    gh.factory<_i215.OccasionRepo>(
        () => _i782.OccasionRepoImpl(gh<_i245.OccasionRemoteDataSource>()));
    gh.factory<_i718.AddressRepo>(() => _i98.AddressRepoImpl(
          addressRemoteDataSource: gh<_i115.AddressRemoteDataSource>(),
          addressLocalDataSource: gh<_i436.AddressLocalDataSource>(),
        ));
    gh.factory<_i127.BestSellerUseCase>(
        () => _i127.BestSellerUseCase(repo: gh<_i516.BestSellerRepo>()));
    gh.factory<_i781.AddProductToCartUseCase>(
        () => _i781.AddProductToCartUseCase(gh<_i215.OccasionRepo>()));
    gh.factory<_i49.GetAllOccasionUseCase>(
        () => _i49.GetAllOccasionUseCase(gh<_i215.OccasionRepo>()));
    gh.factory<_i89.GetProductsByOccasionUseCase>(
        () => _i89.GetProductsByOccasionUseCase(gh<_i215.OccasionRepo>()));
    gh.factory<_i550.CartRemoteDataSource>(
        () => _i790.CartRemoteDataSourceImpl(gh<_i115.CartApiService>()));
    gh.factory<_i155.TrackMapRepo>(
        () => _i795.TrackMapRepoImpl(gh<_i73.TrackMapRemoteDataSource>()));
    gh.factory<_i36.GetAboutUseCase>(
        () => _i36.GetAboutUseCase(repository: gh<_i989.TermsAboutRepo>()));
    gh.factory<_i190.GetTermsUseCase>(
        () => _i190.GetTermsUseCase(repository: gh<_i989.TermsAboutRepo>()));
    gh.factory<_i53.GetRouteUseCase>(
        () => _i53.GetRouteUseCase(gh<_i155.TrackMapRepo>()));
    gh.factory<_i179.DeleteAddressUseCase>(
        () => _i179.DeleteAddressUseCase(addressRepo: gh<_i718.AddressRepo>()));
    gh.factory<_i1008.GetAddressesUseCase>(
        () => _i1008.GetAddressesUseCase(addressRepo: gh<_i718.AddressRepo>()));
    gh.factory<_i983.EditProfileUseCase>(
        () => _i983.EditProfileUseCase(profileRepo: gh<_i197.ProfileRepo>()));
    gh.factory<_i463.UploadPhotoUseCase>(
        () => _i463.UploadPhotoUseCase(profileRepo: gh<_i197.ProfileRepo>()));
    gh.factory<_i713.AppConfigCubit>(() =>
        _i713.AppConfigCubit(gh<_i456.Storage>(instanceName: 'secureStorage')));
    gh.factory<_i53.BestSellerViewModel>(() => _i53.BestSellerViewModel(
          gh<_i127.BestSellerUseCase>(),
          gh<_i781.AddProductToCartUseCase>(),
        ));
    gh.factory<_i868.GetLoggedUserUseCase>(
        () => _i868.GetLoggedUserUseCase(gh<_i183.ProfileMainRepo>()));
    gh.factory<_i913.TrackOrderRemoteDataSource>(
        () => _i779.TrackOrderRemoteDataSourceImp(
              gh<_i206.TrackOrderApiService>(),
              gh<_i756.FirebaseService>(),
            ));
    gh.factory<_i262.CartRepo>(
        () => _i645.CartRepoImpl(gh<_i550.CartRemoteDataSource>()));
    gh.factory<_i167.ProductSearchUseCase>(
        () => _i167.ProductSearchUseCase(gh<_i886.SearchRepo>()));
    gh.factory<_i214.OrdersRepo>(
        () => _i855.OrdersRepoImpl(gh<_i755.OrdersRemoteDataSource>()));
    gh.factory<_i451.AddAddressUseCase>(
        () => _i451.AddAddressUseCase(gh<_i718.AddressRepo>()));
    gh.factory<_i392.UpdateAddressUseCase>(
        () => _i392.UpdateAddressUseCase(gh<_i718.AddressRepo>()));
    gh.factory<_i1.CreateCashOrderUseCase>(
        () => _i1.CreateCashOrderUseCase(gh<_i46.CheckoutRepo>()));
    gh.factory<_i140.CreateVisaOrderUseCase>(
        () => _i140.CreateVisaOrderUseCase(gh<_i46.CheckoutRepo>()));
    gh.factory<_i87.GetUserAddressUseCase>(
        () => _i87.GetUserAddressUseCase(gh<_i46.CheckoutRepo>()));
    gh.factory<_i466.AuthRepo>(() => _i923.AuthRepoImpl(
          gh<_i896.AuthRemoteDataSource>(),
          gh<_i901.AuthLocalDataSource>(),
        ));
    gh.factory<_i1060.HomeViewModel>(() => _i1060.HomeViewModel(
          gh<_i49.GetAllOccasionUseCase>(),
          gh<_i127.BestSellerUseCase>(),
          gh<_i66.CategoriesUseCase>(),
        ));
    gh.factory<_i359.GetCitiesByGovernorateUseCase>(() =>
        _i359.GetCitiesByGovernorateUseCase(
            repository: gh<_i718.AddressRepo>()));
    gh.factory<_i378.GetCitiesUseCase>(
        () => _i378.GetCitiesUseCase(repository: gh<_i718.AddressRepo>()));
    gh.factory<_i483.GetGovernoratesUseCase>(() =>
        _i483.GetGovernoratesUseCase(repository: gh<_i718.AddressRepo>()));
    gh.factory<_i568.ForgetPasswordUseCase>(
        () => _i568.ForgetPasswordUseCase(gh<_i466.AuthRepo>()));
    gh.factory<_i714.LogoutUseCase>(
        () => _i714.LogoutUseCase(gh<_i466.AuthRepo>()));
    gh.factory<_i576.ResetPasswordUseCase>(
        () => _i576.ResetPasswordUseCase(gh<_i466.AuthRepo>()));
    gh.factory<_i136.VerifyResetCodeUseCase>(
        () => _i136.VerifyResetCodeUseCase(gh<_i466.AuthRepo>()));
    gh.factory<_i406.TrackMapViewModel>(
        () => _i406.TrackMapViewModel(gh<_i53.GetRouteUseCase>()));
    gh.factory<_i347.OccasionViewModel>(() => _i347.OccasionViewModel(
          gh<_i49.GetAllOccasionUseCase>(),
          gh<_i89.GetProductsByOccasionUseCase>(),
          gh<_i781.AddProductToCartUseCase>(),
        ));
    gh.factory<_i57.OrdersUseCase>(
        () => _i57.OrdersUseCase(gh<_i214.OrdersRepo>()));
    gh.factory<_i470.TrackOrderRepo>(() => _i1052.TrackOrderRepoImp(
          gh<_i913.TrackOrderRemoteDataSource>(),
          gh<_i973.InternetConnectionChecker>(),
        ));
    gh.factory<_i889.ForgetPasswordViewModel>(
        () => _i889.ForgetPasswordViewModel(
              gh<_i568.ForgetPasswordUseCase>(),
              gh<_i136.VerifyResetCodeUseCase>(),
              gh<_i576.ResetPasswordUseCase>(),
            ));
    gh.factory<_i64.TermsAboutViewModel>(() => _i64.TermsAboutViewModel(
          gh<_i190.GetTermsUseCase>(),
          gh<_i36.GetAboutUseCase>(),
        ));
    gh.factory<_i1057.CategoriesViewModel>(() => _i1057.CategoriesViewModel(
          gh<_i66.CategoriesUseCase>(),
          gh<_i137.GetProductsByCategoryUseCase>(),
          gh<_i201.GetAllProductsUseCase>(),
          gh<_i781.AddProductToCartUseCase>(),
        ));
    gh.factory<_i375.SigninUseCase>(
        () => _i375.SigninUseCase(authRepo: gh<_i466.AuthRepo>()));
    gh.factory<_i630.SignUpUseCase>(
        () => _i630.SignUpUseCase(authRepo: gh<_i466.AuthRepo>()));
    gh.factory<_i373.ProfileViewModel>(() => _i373.ProfileViewModel(
          gh<_i182.GetLoggedUserUseCase>(),
          gh<_i983.EditProfileUseCase>(),
          gh<_i463.UploadPhotoUseCase>(),
        ));
    gh.factory<_i506.AddressViewModel>(() => _i506.AddressViewModel(
          gh<_i359.GetCitiesByGovernorateUseCase>(),
          gh<_i378.GetCitiesUseCase>(),
          gh<_i483.GetGovernoratesUseCase>(),
          gh<_i1008.GetAddressesUseCase>(),
          gh<_i179.DeleteAddressUseCase>(),
          gh<_i451.AddAddressUseCase>(),
          gh<_i392.UpdateAddressUseCase>(),
        ));
    gh.factory<_i480.CheckoutViewModel>(() => _i480.CheckoutViewModel(
          gh<_i87.GetUserAddressUseCase>(),
          gh<_i1.CreateCashOrderUseCase>(),
          gh<_i140.CreateVisaOrderUseCase>(),
        ));
    gh.factory<_i560.GetOrderStreamUseCase>(
        () => _i560.GetOrderStreamUseCase(gh<_i470.TrackOrderRepo>()));
    gh.factory<_i169.GetVehicleByIdUseCase>(
        () => _i169.GetVehicleByIdUseCase(gh<_i470.TrackOrderRepo>()));
    gh.factory<_i97.UpdateOrderFirebaseUseCase>(
        () => _i97.UpdateOrderFirebaseUseCase(gh<_i470.TrackOrderRepo>()));
    gh.factory<_i1055.GetUserCartUseCase>(
        () => _i1055.GetUserCartUseCase(gh<_i262.CartRepo>()));
    gh.factory<_i505.ProfileMainViewModel>(
        () => _i505.ProfileMainViewModel(gh<_i868.GetLoggedUserUseCase>()));
    gh.factory<_i966.ClearSpecificCartItemUseCase>(
        () => _i966.ClearSpecificCartItemUseCase(gh<_i262.CartRepo>()));
    gh.factory<_i811.ClearUserCartUseCase>(
        () => _i811.ClearUserCartUseCase(gh<_i262.CartRepo>()));
    gh.factory<_i922.UpdateCartProductQuantityUseCase>(
        () => _i922.UpdateCartProductQuantityUseCase(gh<_i262.CartRepo>()));
    gh.factory<_i64.OrdersViewModel>(
        () => _i64.OrdersViewModel(gh<_i57.OrdersUseCase>()));
    gh.factory<_i670.SearchViewModel>(
        () => _i670.SearchViewModel(gh<_i167.ProductSearchUseCase>()));
    gh.factory<_i109.CartCubit>(() => _i109.CartCubit(
          gh<_i1055.GetUserCartUseCase>(),
          gh<_i966.ClearSpecificCartItemUseCase>(),
          gh<_i811.ClearUserCartUseCase>(),
          gh<_i922.UpdateCartProductQuantityUseCase>(),
        ));
    gh.factory<_i877.LogoutViewModel>(
        () => _i877.LogoutViewModel(gh<_i714.LogoutUseCase>()));
    gh.factory<_i990.SignupViewModel>(
        () => _i990.SignupViewModel(gh<_i630.SignUpUseCase>()));
    gh.factory<_i902.CheckUserLoggedInUseCase>(
        () => _i902.CheckUserLoggedInUseCase(gh<_i466.AuthRepo>()));
    gh.factory<_i670.TrackOrderViewModel>(() => _i670.TrackOrderViewModel(
          gh<_i169.GetVehicleByIdUseCase>(),
          gh<_i560.GetOrderStreamUseCase>(),
          gh<_i97.UpdateOrderFirebaseUseCase>(),
        ));
    gh.factory<_i301.SigninViewModel>(() => _i301.SigninViewModel(
          gh<_i375.SigninUseCase>(),
          gh<_i902.CheckUserLoggedInUseCase>(),
        ));
    return this;
  }
}

class _$DioModule extends _i456.DioModule {}

class _$ExternalModules extends _i649.ExternalModules {}
