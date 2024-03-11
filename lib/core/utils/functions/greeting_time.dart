  String greetingTime() {
    // Get the current time
    var now = DateTime.now();
    var time = now.hour;

    // Check if it's morning or evening
    String greeting = (time >= 5 && time < 12)
        ? 'صباح الخير'
        : (time >= 12 && time < 18)
            ? 'مساء الخير'
            : 'مساء الخير';
    return greeting;
  }