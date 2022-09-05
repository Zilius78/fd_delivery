import 'package:fd_delivery/app.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.VEGGIE;
  WidgetsFlutterBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  HydratedBlocOverrides.runZoned(() => runApp( App()), storage: storage);
}
