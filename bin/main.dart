import 'package:time_tracker_api/time_tracker_api.dart';

Future main() async {
  var app = new Application<TimeTrackerApiSink>()
      ..configuration.configurationFilePath = "config.yaml"
      ..configuration.port = 8000;

  await app.start(numberOfInstances: 2);

  print("Application started on port: ${app.configuration.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}