import 'package:bloc_cubit/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/base/cubit/theme/theme_cubit.dart';
import 'core/base/cubit/theme/theme_state.dart';
import 'core/init/theme/app_theme.dart';
import 'core/init/theme/theme_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeRepository = ThemeRepository(
    sharedPreferences: await SharedPreferences.getInstance(),
  );
  runApp(MyApp(themeRepository: themeRepository));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.themeRepository});

  final ThemeRepository themeRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: themeRepository,
      child: BlocProvider(
        create: (context) => ThemeCubit(
          themeRepository: context.read<ThemeRepository>(),
        )..getCurrentTheme(),
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.getLightTheme(),
            darkTheme: AppTheme.getDarkTheme(),
            themeMode: state.themeMode,
            home: const HomePage(),
          );
        }),
      ),
    );
  }
}
