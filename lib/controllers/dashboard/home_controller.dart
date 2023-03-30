import 'package:fit_x/controllers/base_controller.dart';
import 'package:fit_x/models/bpm.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends BaseController {
  var notificationCount = 0.obs;
  var totalCalories = 1000.obs;
  var burntCalories = 760;

  var waterIntakeProgressValue = 0.5.obs;
  var totalWaterVolumInml = 4000.0.obs;

  final List<HeartRateData> data = [
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 2), 80),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 4), 82),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 6), 85),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 8), 88),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 10), 90),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 12), 85),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 14), 83),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 16), 81),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 18), 78),
    HeartRateData(DateTime(2023, 3, 1, 12, 0, 20), 75),
  ];

  List<FlSpot> getHeartRateSpots() => data.map((data) {
        double x = data.time.millisecondsSinceEpoch.toDouble();
        double y = data.bpm.toDouble();
        return FlSpot(x, y);
      }).toList();

  double getRemainingCalories() {
    return ((totalCalories.value - burntCalories) / 4) / 100;
  }
}
