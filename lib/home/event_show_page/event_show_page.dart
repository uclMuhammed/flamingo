import 'package:flamingo/home/event_show_page/content/content.dart';
import 'package:flamingo/home/event_show_page/image/event_show_page_image.dart';
import 'package:flutter/material.dart';

class EventShowPage extends StatefulWidget {
  const EventShowPage({super.key});

  @override
  State<EventShowPage> createState() => _EventShowPageState();
}

ScrollController controller = ScrollController();

class _EventShowPageState extends State<EventShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: LayoutBuilder(
          builder: (context, size) {
            return CustomScrollView(
              controller: controller,
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: size.maxWidth,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.only(bottom: 50),
                    title: const Text('Plaj Konseri'),
                    centerTitle: true,
                    background: ShowPageImage(
                      sizeW: size.maxWidth,
                      sizeH: size.maxHeight,
                    ),
                  ),
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        text: 'İçerik',
                      ),
                      Tab(
                        text: 'Mesajlaşma',
                      ),
                    ],
                  ),
                ),
                const SliverFillRemaining(
                  child: TabBarView(
                    children: [
                      EventContent(),
                      EventChat(),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}



class EventChat extends StatefulWidget {
  const EventChat({super.key});

  @override
  State<EventChat> createState() => _EventChatState();
}

class _EventChatState extends State<EventChat> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
