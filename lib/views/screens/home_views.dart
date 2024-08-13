import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  void _navigate() async {
    const url =
        "https://yandex.uz/maps/geo/1508547282/?ll=41.3112%2C69.2797&z=14.23";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't find url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey.shade500,
            child: const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/icons/logo.png'),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Azamatjon Komilov',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            ' Passionate Flutter Developer\n'
            ' Enthusiastic Open Source Contributor\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '+2 years experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, color: Colors.blue[900]),
              const SizedBox(width: 4),
              TextButton(
                onPressed: _navigate,
                child: const Text(
                  "Uzbekistan, Tashkent, Mirzo Ulugbek",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "For Networking You are Welcome",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 47, 47, 224),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://t.me/azamatjon_komilov";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/icons/telegram.png",
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://www.instagram.com/bahodirturdimurodov/";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/icons/instagram.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://github.com/Azamatjon17";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset("assets/icons/github.png"),
                ),
              ),
            ],
          ),
          const Spacer(),
          ZoomTapAnimation(
            onTap: () async {
              const phoneNumber = 'tel: +988911591815';
              if (await canLaunch(phoneNumber)) {
                await launch(phoneNumber);
              } else {
                throw "Telfon qibomadi";
              }
            },
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff000072),
              ),
              child: const Center(
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
