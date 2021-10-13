import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn clone',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: const Color(0xF3F2EFEF)),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: const Icon(LinkedInIcon.icon)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.people)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.work)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
          body: const SingleChildScrollView(child: Page())),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
        const Profile(),
        Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {},
              label: Text('Развернуть'),
              icon: Icon(Icons.keyboard_arrow_down),
              style: TextButton.styleFrom(primary: Colors.black),
            )),
        const PostNav(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Сортировать:'),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                  label: const Text('Популярные',
                      style: TextStyle(color: Colors.black))),
            )
          ],
        ),
        const AddPeople()
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFEFEFEFE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 15)),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  CircleAvatar(
                    radius: 37,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Text(
                    'Nikita Vyzhol',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    'Student at Lviv Polytechnic National University (Internet of Things program)',
                    style: TextStyle(fontSize: 11),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PostNav extends StatelessWidget {
  const PostNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFEFEFEFE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        labelText: 'Новая публикация',
                      ),
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.photo),
                      label: Text('Фото')),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_fill),
                      label: Text('Видео')),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_today),
                      label: Text('Мероприятие')),
                ],
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.article),
                      label: Text('Написать статью')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class AddPeople extends StatelessWidget {
  const AddPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFEFEFEFE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Nikita, хотите получать еще больше \n обновлений?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                  'Добавьте людей, которых вы можете знать, в свою сеть \n контактов и просматривайте их обновления в ленте.'),
              const Padding(padding: EdgeInsets.only(bottom: 30)),
              Row(
                children: [
                  ProfileCards(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileCards extends StatelessWidget {
  const ProfileCards({Key? key}) : super(key: key);

  profileCard(String imagePath, String name, String profileStatus) {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(profileStatus),
          const Padding(padding: EdgeInsets.only(top: 50)),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Установить \n контакт'),
            style: OutlinedButton.styleFrom(
              primary: Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        profileCard(
            'assets/neo.jpg', 'Thomas A. \n Anderson', 'Chosen by Matrix'),
        profileCard(
            'assets/john.jpg', 'John Wick', 'Someone killed \n his dog'),
        profileCard(
            'assets/geralt.png', 'Geralt of Rivia \n', 'Struggles with C++')
      ],
    );
  }
}

class LinkedInIcon {
  LinkedInIcon._();

  static const _kFontFam = 'LinkedInIcon';
  static const String? _kFontPkg = null;

  static const IconData icon =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
