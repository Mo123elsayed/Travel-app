class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final TripType tripType;
  final Season season;
  final String imageUrl;
  final int durationTrip;
  final List<String> activities;
  final List<String> programTrip;
  // the following variables are for filtering the trips in app when creating filter page in advance
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.tripType,
    required this.season,
    required this.imageUrl,
    required this.durationTrip,
    required this.activities,
    required this.programTrip,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies,
  });
}

enum TripType {
  Exploration,
  Recovery,
  Activities,
  Therapy,
}

enum Season {
  Winter,
  Summer,
  Spring,
  Autumn,
}
