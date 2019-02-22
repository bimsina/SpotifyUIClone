import 'package:flutter/material.dart';
import 'package:spotify_clone/modal_class/artist.dart';
import 'package:spotify_clone/widgets/horizontal_artist.dart';

class HomeTab extends StatefulWidget {
  final VoidCallback onPressed;
  HomeTab({this.onPressed});
  @override
  HomeTabState createState() {
    return new HomeTabState();
  }
}

class HomeTabState extends State<HomeTab> {
  bool isShown = true;
  bool isPlaying = false;
  final List<Artist> recentlyPlayed = [
    Artist(
        imageSrc: "assets/favourite.jpg",
        title: 'Favourite Songs',
        circular: false),
    Artist(
        imageSrc: "assets/pink_floyd.jpg", title: 'Pink Floyd', circular: true),
    Artist(
        imageSrc: "assets/queen_best_of.jpg",
        title: 'Queen : Best of',
        circular: false),
    Artist(
        imageSrc: "assets/this_is_post_malone.jpg",
        title: 'This is Post Malone',
        circular: false),
  ];

  final List<Artist> heavyRotation = [
    Artist(
        imageSrc: "assets/hailee.jpg",
        title: 'Hailee Steinfeld',
        circular: true),
    Artist(
        imageSrc: "assets/stoney.jpg",
        title: 'Stoney(deluxe)',
        circular: false),
    Artist(
        imageSrc: "assets/this_is_queen.jpg",
        title: 'This is Queen',
        circular: false),
    Artist(
        imageSrc: "assets/queen_best_of.jpg",
        title: 'Queen : Best of',
        circular: false),
    Artist(
        imageSrc: "assets/this_is_post_malone.jpg",
        title: 'This is Post Malone',
        circular: false),
  ];

  final List<Artist> madeForYou = [
    Artist(
        imageSrc: "assets/discover.jpg",
        title: 'Discover Weekly',
        circular: false),
    Artist(
        imageSrc: "assets/time_capsule.jpg",
        title: 'Time Capsule',
        circular: false),
  ];
  void handleTap() {
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).accentColor,
              floating: false,
              pinned: false,
              title: Text(''),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                )
              ],
            ),
          ];
        },
        body: Container(
          color: Theme.of(context).accentColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Recently Played',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(
                    child: ArtistList(
                      artists: recentlyPlayed,
                      onPressed: widget.onPressed,
                    ),
                    height: 185.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Your Heavy Rotation',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(
                    child: ArtistList(
                      artists: heavyRotation,
                      onPressed: widget.onPressed,
                    ),
                    height: 185.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Made for bimsina',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(
                    child: ArtistList(
                      artists: madeForYou,
                      onPressed: widget.onPressed,
                    ),
                    height: 185.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
