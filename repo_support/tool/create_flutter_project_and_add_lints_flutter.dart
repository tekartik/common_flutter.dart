import 'dart:io';

import 'package:dev_build/shell.dart';
import 'package:path/path.dart';

Future<void> main(List<String> args) async {
  var top = join('.local');
  await Directory(top).create(recursive: true);
  var shell = Shell(workingDirectory: join('.local'));
  await shell.run(
    'flutter create --org com.example --project-name example_flutter --template app example_flutter',
  );
  shell = shell.cd('example_flutter');
  await shell.run(
    'flutter pub add ${shellArgument('dev:tekartik_lints_flutter@{path: ../../../packages/lints_flutter}')}',
  );
}
