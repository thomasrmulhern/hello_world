import '../models/location.dart';
import '../models/location_facts.dart';

class MockLocation extends Location {
  static Location FetchAny() {
    return Location(
        name: 'Arashiyama Bamboo Grove, Kyoto JApan',
        url: 'https//:thisatthatwebsite.com/stuff1234',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemin gendless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the  visual realm'),
          LocationFact(
              title: 'How to get there',
              text:
                  "Go left, then go right, then go up, then go down, then dig a hole and sit in it")
        ]);
  }
}
