import 'package:core/extension/size/size.dart';
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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Plaj Konseri'),
            centerTitle: true,
          ),
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              physics: const NeverScrollableScrollPhysics(),
              headerSliverBuilder: (context, isScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: size.maxWidth,
                    pinned: false,
                    floating: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: ShowPageImage(
                        sizeW: context.width,
                        sizeH: context.height,
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    floating: true,
                    pinned: true,
                    delegate: MyDelegate(
                      const TabBar(
                        tabs: [
                          Tab(
                            text: 'Etkinlik',
                          ),
                          Tab(
                            text: 'Mesajlaşma',
                          )
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  EventContent(),
                  EventChat(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
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
