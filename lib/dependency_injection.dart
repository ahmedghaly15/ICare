import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:icare/src/features/baby_cry_predictor/data/datasources/baby_cry_predictor_datasource.dart';
import 'package:icare/src/features/baby_cry_predictor/data/repositories/baby_cry_predictor_repo.dart';
import 'package:icare/src/features/baby_cry_predictor/domain/usecases/baby_cry_predictor.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/disease_details/data/datasources/medical_info_disease_details_remote_datasource.dart';
import 'package:icare/src/features/disease_details/data/repositories/medical_info_disease_details_repo.dart';
import 'package:icare/src/features/disease_details/domain/usecases/get_medical_info_disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/medical_info_disease/medical_info_disease_details_cubit.dart';
import 'package:icare/src/features/icare_bot/data/datasources/icare_bot_remote_datasource.dart';
import 'package:icare/src/features/icare_bot/data/repositories/icare_bot_repo.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/ask_icare_bot.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource_impl.dart';
import 'package:icare/src/features/tiny_tales/data/repositories/tiny_tales_repo_impl.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/delete_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/is_tiny_tale_liked_by_me.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/upload_tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/api/dio_factory.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/features/auth/data/datasources/forgot_password_datasource.dart';
import 'package:icare/src/features/auth/data/datasources/login_datasource.dart';
import 'package:icare/src/features/auth/data/datasources/register_datasource.dart';
import 'package:icare/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:icare/src/features/auth/data/repositories/login_repo.dart';
import 'package:icare/src/features/auth/data/repositories/register_repo_impl.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';
import 'package:icare/src/features/auth/domain/usecases/create_firestore_user.dart';
import 'package:icare/src/features/auth/domain/usecases/forgot_password.dart';
import 'package:icare/src/features/auth/domain/usecases/login.dart';
import 'package:icare/src/features/auth/domain/usecases/register.dart';
import 'package:icare/src/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/disease_details/data/datasources/disease_details_local_datasource.dart';
import 'package:icare/src/features/disease_details/data/datasources/emergency_disease_details_remote_datasource.dart';
import 'package:icare/src/features/disease_details/data/repositories/emergency_disease_details_repo.dart';
import 'package:icare/src/features/disease_details/domain/usecases/get_emergency_disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_cubit.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_local_datasource.dart';
import 'package:icare/src/features/emergency/data/datasources/emergency_remote_datasource.dart';
import 'package:icare/src/features/emergency/data/repositories/emergency_repo.dart';
import 'package:icare/src/features/emergency/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_cubit.dart';
import 'package:icare/src/features/medical/data/datasources/medical_local_datasource.dart';
import 'package:icare/src/features/medical/data/datasources/medical_remote_datasource.dart';
import 'package:icare/src/features/medical/data/repositories/medical_repo.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_cubit.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_local_datasource.dart';
import 'package:icare/src/features/medical_info/data/datasources/medical_info_remote_datasource.dart';
import 'package:icare/src/features/medical_info/data/repositories/medical_info_repo.dart';
import 'package:icare/src/features/medical_info/domain/usecases/get_medical_info.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:icare/src/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/user/data/datasources/user_datasource.dart';
import 'package:icare/src/features/user/data/repositories/user_repo.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

final GetIt getIt = GetIt.instance;

class DependencyInjection {
  Future<void> setup() async {
    await _setupForExternal();

    _setupForConfig();

    _setupForCore();

    _setupForDatasources();

    _setupForRepos();

    _setupForUseCases();

    _setupForCubits();
  }

  void _setupForDatasources() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginDataSource>(
        () => const LoginDataSourceImpl());

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterDataSource>(
      () => const RegisterDataSourceImpl(),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordDataSource>(
      () => const ForgotPasswordDataSourceImpl(),
    );

    // ========== Onboarding feature ==========
    getIt.registerLazySingleton<OnboardingDatasource>(
      () => const OnboardingDatasourceImpl(),
    );

    // ========== Medical feature ==========
    getIt.registerLazySingleton<MedicalRemoteDatasource>(
      () => MedicalRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<MedicalLocalDatasource>(
        () => const MedicalLocalDatasourceImpl());

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<EmergencyRemoteDatasource>(
      () => EmergencyRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<EmergencyLocalDatasource>(
      () => const EmergencyLocalDatasourceImpl(),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<MedicalInfoRemoteDatasource>(
      () => MedicalInfoRemoteDatasourceImpl(getIt.get<ApiService>()),
    );

    getIt.registerLazySingleton<MedicalInfoLocalDatasource>(
      () => const MedicalInfoLocalDatasourceImpl(),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<UserDataSource>(
      () => const UserDatasourceImpl(),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRemoteDatasource>(
      () => EmergencyDiseaseDetailsRemoteDatasourceImpl(
        getIt.get<ApiService>(),
      ),
    );

    getIt.registerLazySingleton<DiseaseDetailsLocalDatasource>(
      () => const DiseaseDetailsLocalDatasourceImpl(),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<MedicalInfoDiseaseDetailsRemoteDatasource>(
      () => MedicalInfoDiseaseDetailsRemoteDatasourceImpl(
        getIt.get<ApiService>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorDatasource>(
      () => BabyCryPredictorDatasourceImpl(getIt.get<ApiService>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<ICareBotRemoteDatasource>(
      () => const ICareBotRemoteDatasourceImpl(),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<TinyTalesRemoteDatasource>(
        () => const TinyTalesRemoteDatasourceImpl());
  }

  void _setupForRepos() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginRepo>(
      () => LoginRepo(getIt.get<LoginDataSource>()),
    );

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterRepo>(
      () => RegisterRepoImpl(getIt.get<RegisterDataSource>()),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt.get<ForgotPasswordDataSource>()),
    );

    // ========== Onboarding feature ==========
    getIt.registerLazySingleton<OnboardingRepo>(
      () => OnboardingRepo(getIt.get<OnboardingDatasource>()),
    );

    // ========== Medical feature ==========
    getIt.registerLazySingleton<MedicalRepo>(
      () => MedicalRepo(
        getIt.get<MedicalRemoteDatasource>(),
        getIt.get<MedicalLocalDatasource>(),
      ),
    );

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<EmergencyRepo>(
      () => EmergencyRepo(
        getIt.get<EmergencyRemoteDatasource>(),
        getIt.get<EmergencyLocalDatasource>(),
      ),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<MedicalInfoRepo>(
      () => MedicalInfoRepo(
        getIt.get<MedicalInfoRemoteDatasource>(),
        getIt.get<MedicalInfoLocalDatasource>(),
      ),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<UserRepo>(
      () => UserRepo(getIt.get<UserDataSource>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<EmergencyDiseaseDetailsRepo>(
      () => EmergencyDiseaseDetailsRepo(
        getIt.get<EmergencyDiseaseDetailsRemoteDatasource>(),
        getIt.get<DiseaseDetailsLocalDatasource>(),
      ),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<MedicalInfoDiseaseDetailsRepo>(
      () => MedicalInfoDiseaseDetailsRepo(
        getIt.get<MedicalInfoDiseaseDetailsRemoteDatasource>(),
        getIt.get<DiseaseDetailsLocalDatasource>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorRepo>(
      () => BabyCryPredictorRepo(getIt.get<BabyCryPredictorDatasource>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<ICareBotRepo>(
      () => ICareBotRepo(getIt.get<ICareBotRemoteDatasource>()),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<TinyTalesRepo>(
      () => TinyTalesRepoImpl(getIt.get<TinyTalesRemoteDatasource>()),
    );
  }

  void _setupForUseCases() {
    // ========== Login feature ==========
    getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(getIt.get<LoginRepo>()),
    );

    getIt.registerLazySingleton<SignInWithGoogleUseCase>(
      () => SignInWithGoogleUseCase(getIt.get<LoginRepo>()),
    );

    // ========== Register feature ==========
    getIt.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(getIt.get<RegisterRepo>()),
    );

    getIt.registerLazySingleton<CreateFirestoreUserUseCase>(
      () => CreateFirestoreUserUseCase(getIt.get<RegisterRepo>()),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerLazySingleton<ForgotPasswordUseCase>(
      () => ForgotPasswordUseCase(getIt.get<ForgotPasswordRepo>()),
    );

    // ========== Medical feature ==========
    getIt.registerLazySingleton<GetMedicalUseCase>(
      () => GetMedicalUseCase(getIt.get<MedicalRepo>()),
    );

    // ========== Emergency feature ==========
    getIt.registerLazySingleton<GetEmergencyDiseasesUseCase>(
      () => GetEmergencyDiseasesUseCase(getIt.get<EmergencyRepo>()),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerLazySingleton<GetMedicalInfoUseCase>(
      () => GetMedicalInfoUseCase(getIt.get<MedicalInfoRepo>()),
    );

    // ========== User feature ==========
    getIt.registerLazySingleton<GetUserDataUseCase>(
      () => GetUserDataUseCase(getIt.get<UserRepo>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerLazySingleton<GetEmergencyDiseaseDetailsUseCase>(
      () => GetEmergencyDiseaseDetailsUseCase(
          getIt.get<EmergencyDiseaseDetailsRepo>()),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerLazySingleton<GetMedicalInfoDiseaseDetailsUseCase>(
      () => GetMedicalInfoDiseaseDetailsUseCase(
        getIt.get<MedicalInfoDiseaseDetailsRepo>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerLazySingleton<BabyCryPredictorUseCase>(
      () => BabyCryPredictorUseCase(getIt.get<BabyCryPredictorRepo>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerLazySingleton<AskICareBotUseCase>(
      () => AskICareBotUseCase(getIt.get<ICareBotRepo>()),
    );

    // ========== TinyTales feature ==========
    getIt.registerLazySingleton<CreateTinyTaleUseCase>(
      () => CreateTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );

    getIt.registerLazySingleton<LikeTinyTaleUseCase>(
      () => LikeTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );

    getIt.registerLazySingleton<UnLikeTinyTaleUseCase>(
      () => UnLikeTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );

    getIt.registerLazySingleton<DeleteTinyTaleUseCase>(
      () => DeleteTinyTaleUseCase(getIt.get<TinyTalesRepo>()),
    );

    getIt.registerLazySingleton<UploadTinyTaleImageUseCase>(
      () => UploadTinyTaleImageUseCase(getIt.get<TinyTalesRepo>()),
    );

    getIt.registerLazySingleton<IsTinyTaleLikeByMeUseCase>(
      () => IsTinyTaleLikeByMeUseCase(getIt.get<TinyTalesRepo>()),
    );
  }

  void _setupForCubits() {
    // ========== Login feature ==========
    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(
        loginUseCase: getIt.get<LoginUseCase>(),
        signInWithGoogleUseCase: getIt.get<SignInWithGoogleUseCase>(),
        createFirestoreUserUseCase: getIt.get<CreateFirestoreUserUseCase>(),
      ),
    );

    // ========== Register feature ==========
    getIt.registerFactory<RegisterCubit>(
      () => RegisterCubit(
        registerUseCase: getIt.get<RegisterUseCase>(),
        createFirestoreUserUseCase: getIt.get<CreateFirestoreUserUseCase>(),
      ),
    );

    // ========== ForgotPassword feature ==========
    getIt.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(getIt.get<ForgotPasswordUseCase>()),
    );

    // ========== Onboarding feature ==========
    getIt.registerFactory<OnboardingCubit>(
      () => OnboardingCubit(getIt.get<OnboardingRepo>()),
    );

    // ========== Medical feature ==========
    getIt.registerFactory<MedicalCubit>(
      () => MedicalCubit(getIt.get<GetMedicalUseCase>()),
    );

    // ========== Emergency feature ==========
    getIt.registerFactory<EmergencyCubit>(
      () => EmergencyCubit(getIt.get<GetEmergencyDiseasesUseCase>()),
    );

    // ========== MedicalInfo feature ==========
    getIt.registerFactory<MedicalInfoCubit>(
      () => MedicalInfoCubit(getIt.get<GetMedicalInfoUseCase>()),
    );

    // ========== User feature ==========
    getIt.registerFactory<UserCubit>(
      () => UserCubit(getIt.get<GetUserDataUseCase>()),
    );

    // ========== EmergencyDiseaseDetails feature ==========
    getIt.registerFactory<EmergencyDiseaseDetailsCubit>(
      () => EmergencyDiseaseDetailsCubit(
        getIt.get<GetEmergencyDiseaseDetailsUseCase>(),
      ),
    );

    // ========== MedicalInfoDiseaseDetails feature ==========
    getIt.registerFactory<MedicalInfoDiseaseDetailsCubit>(
      () => MedicalInfoDiseaseDetailsCubit(
        getIt.get<GetMedicalInfoDiseaseDetailsUseCase>(),
      ),
    );

    // ========== BabyCryPredictor feature ==========
    getIt.registerFactory<BabyCryPredictorCubit>(
      () => BabyCryPredictorCubit(getIt.get<BabyCryPredictorUseCase>()),
    );

    // ========== ICareBot feature ==========
    getIt.registerFactory<ICareBotCubit>(
      () => ICareBotCubit(getIt.get<AskICareBotUseCase>()),
    );

    // ========== TinyTales feature ==========
    getIt.registerFactory<TinyTalesCubit>(
      () => TinyTalesCubit(
        createTinyTaleUseCase: getIt.get<CreateTinyTaleUseCase>(),
        likeTinyTaleUseCase: getIt.get<LikeTinyTaleUseCase>(),
        unLikeTinyTaleUseCase: getIt.get<UnLikeTinyTaleUseCase>(),
        deleteTinyTaleUseCase: getIt.get<DeleteTinyTaleUseCase>(),
        uploadTinyTaleImageUseCase: getIt.get<UploadTinyTaleImageUseCase>(),
        isTinyTaleLikedByMeUseCase: getIt.get<IsTinyTaleLikeByMeUseCase>(),
      ),
    );
  }

  void _setupForConfig() {
    getIt.registerSingleton<AppRouter>(AppRouter());
  }

  void _setupForCore() {
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: getIt.get<InternetConnectionChecker>(),
      ),
    );

    getIt.registerLazySingleton<CacheHelper>(
      () => CacheHelper(getIt.get<SharedPreferences>()),
    );

    final Dio dio = DioFactory.getDio();
    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  }

  Future<void> _setupForExternal() async {
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    getIt.registerLazySingleton<FirebaseStorage>(
      () => firebase_storage.FirebaseStorage.instance,
    );

    getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());
  }
}
