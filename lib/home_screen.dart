import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  final String? username;

  const HomeScreen({Key? key, this.username}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _getDayStatus() {
    DateTime now = DateTime.now();
    if (now.hour >= 5 && now.hour <= 10) {
      return "Morning";
    } else if (now.hour >= 11 && now.hour <= 17) {
      return "Afternoon";
    } else if (now.hour >= 18 && now.hour <= 19) {
      return "Evening";
    } else {
      return "Night";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello ${widget.username}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Good ${_getDayStatus()}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  DateFormat('EEEE, dd-MM-yyyy').format(DateTime.now()),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              Image.network(
                _getDayStatus() == "Morning"
                    ? "https://media-cdn.tripadvisor.com/media/photo-s/12/3f/78/ee/early-morning-sunrise.jpg"
                    : _getDayStatus() == "Afternoon"
                        ? "https://c1.wallpaperflare.com/preview/569/206/429/sky-clouds-blue-weather.jpg"
                        : _getDayStatus() == "Evening"
                            ? "https://www.bviddm.com/wp-content/uploads/2022/10/Sunset-2.jpg"
                            : "https://www.popsci.com/uploads/2019/01/10/2MZL57PJAV725J6WXZXHWITD54.jpg?auto=webp&width=785&height=523.595",
                width: 400,
                height: 400,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
      ),
    );
  }
}
