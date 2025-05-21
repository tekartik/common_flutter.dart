import 'package:dev_build/package.dart';
import 'package:path/path.dart';

Future main() async {
  for (var dir in ['lints_flutter']) {
    await packageRunCi(join('..', 'packages', dir));
  }
}
