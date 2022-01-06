import "package:flutter/material.dart";
import "models/location.dart";

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, location),
        ));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>;
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionTitle(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Text(text);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }

  Widget _bannerImage(String url, double height) {
    return Container(child: Image.network(url, fit: BoxFit.fitWidth));
  }
}
