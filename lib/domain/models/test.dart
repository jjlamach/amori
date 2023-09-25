class FeelingsLog {
  // Use a map to store feelings for each day.
  Map<String, List<FeelingEntry>> _log = {};

  // Function to add a feeling entry for the current day.
  void addFeeling(String feeling) {
    final now = DateTime.now();
    final currentDate = "${now.year}-${now.month}-${now.day}";

    // Create a new FeelingEntry and add it to the list for the current day.
    final entry = FeelingEntry(feeling: feeling, timestamp: now);
    _log.putIfAbsent(currentDate, () => []);
    _log[currentDate]?.add(entry);
  }

  // Function to get feelings for a specific day.
  List<FeelingEntry>? getFeelingsForDate(String date) {
    return _log[date];
  }
}

class FeelingEntry {
  final String feeling;
  final DateTime timestamp;

  FeelingEntry({
    required this.feeling,
    required this.timestamp,
  });
}

void main() {
  final feelingsLog = FeelingsLog();

  feelingsLog.addFeeling("Happy");
  feelingsLog.addFeeling("Sad");

  // Get feelings for today (assuming the date format "YYYY-MM-DD").
  final today = DateTime.now();
  final todayDate = "${today.year}-${today.month}-${today.day}";
  final todayFeelings = feelingsLog.getFeelingsForDate(todayDate);

  if (todayFeelings != null) {
    for (final entry in todayFeelings) {
      print("Feeling: ${entry.feeling}, Timestamp: ${entry.timestamp}");
    }
  } else {
    print("No feelings recorded for today.");
  }
}
