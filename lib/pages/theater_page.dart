import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../pages/widgets/theater_item.dart';

class TheaterPage extends StatefulWidget {
  const TheaterPage({super.key});

  @override
  State<TheaterPage> createState() => _TheaterPageState();
}

class _TheaterPageState extends State<TheaterPage> {
  String city = 'Loading...';

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() => city = 'Location Disabled');
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition();
      setState(() => city = 'Malang'); // Dummy location name
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text('THEATER'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.location_pin),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Text(city,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))),
                  const Icon(Icons.expand_more),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  TheaterItem(name: 'Transmart MX Mall XXI'),
                  TheaterItem(name: 'Mandala 21'),
                  TheaterItem(name: 'Araya XXI'),
                  TheaterItem(name: 'Cinépolis Malang Town Square'),
                  TheaterItem(name: 'Dieng 21'),
                  TheaterItem(name: 'Movimax Sarinah Malang'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
