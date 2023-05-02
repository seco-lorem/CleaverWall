import 'package:auto_route/auto_route.dart';
import 'package:webclient/main.dart';
import 'package:webclient/navigation/routesBarrel.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, initial: true),
    AutoRoute(page: OptionsView),
    AutoRoute(page: AnalysisView),
    AutoRoute(page: PreviousResultsView),
    AutoRoute(page: UserView),
    AutoRoute(page: RegisterView),
  ],
)
class $AppRouter {}
