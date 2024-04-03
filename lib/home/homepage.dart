import 'package:flamingo/home/drawer/drawer.dart';
import 'package:flamingo/home/event_page/background_image.dart';
import 'package:flamingo/home/event_page/event_page.dart';
import 'package:flamingo/home/event_show_page/event_show_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_alt,
                ),
              ),
            ],
          ),
          drawer: MyDrawer(
            size: size,
          ),
          body: PageView(
            scrollDirection: Axis.vertical,
            children: [
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
              denemePage(size, 'Plaj Konseri',
                  'Plajdaki Konserimize herkez davetlidir'),
            ],
          ),
        );
      },
    );
  }

  GestureDetector denemePage(
      BoxConstraints size, String eventTitle, String eventContent) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const EventShowPage()),
        );
      },
      child: Stack(
        children: [
          BackgroundImage(
            sizeW: size.maxWidth,
            sizeH: size.maxHeight,
          ),
          EventPage(
            sizeW: size.maxWidth,
            eventTitle: eventTitle,
            eventContent: eventContent,
          )
        ],
      ),
    );
  }
}
