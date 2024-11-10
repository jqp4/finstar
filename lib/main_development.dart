import 'package:finstar_test_task/src/core/_barrel.dart';
import 'package:finstar_test_task/src/features/app/_barrel.dart';

void main() {
  bootstrap(
    () => const MyApp(),
    AppBuildType.development,
  );
}
