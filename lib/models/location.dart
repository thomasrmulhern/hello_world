import './location_facts.dart';

class Location {
  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({required this.name, required this.url, required this.facts});
}
