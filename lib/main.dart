import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen/screen.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  VideoPlayerController _controller;

  bool _disposeWidget = false;

  final List<Channel> channels = [
    Channel(
      name: 'TV Zoom',
      uri: 'https://cdn.jmvstream.com/live/hls/lv_751/LV751_rdDjSLQZp6.m3u8',
    ),
    Channel(
      name: 'NBR',
      uri:
          'http://ebctvnbr-rtmp.adaptive.level3.net/egress/bhandler/ebcremuxlive/tvnbr/manifest.m3u8',
    ),
    Channel(
      name: 'TV Câmara',
      uri: 'https://stream3.camara.gov.br/tv1/manifest.m3u8',
    ),
    Channel(
      name: 'TV Cultura',
      uri:
          'https://59f1cbe63db89.streamlock.net:1443/redeatividade/_definst_/redeatividade/playlist.m3u8',
    ),
  ];

  @override
  void initState() {
    super.initState();

    Screen.keepOn(true);

    _controller = VideoPlayerController.network(channels.first.uri)
      ..initialize().then((_) {
        setState(() {});
      })
      ..play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Test'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: !_disposeWidget
                ? getVideoPlayer()
                : Container(
                    child: Text('Changing Channel'),
                  ),
          ),
          Expanded(
            child: ListView(
              children: ListTile.divideTiles(
                  context: context,
                  tiles: channels.map((channel) => ChannelTile(
                        channel,
                        onTap: _changeChannel,
                      ))).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget getVideoPlayer() {
    return _controller.value.initialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Container(
            child: Text('Empty.'),
          );
  }

  void _changeChannel(Channel channel) {
    print(channel.uri);

    setState(() {
      _disposeWidget = true;
    });

    _controller.pause().then((pause) {
      new Timer(new Duration(milliseconds: 100), () {
        _controller.dispose().then((_) {
          _controller = VideoPlayerController.network(channel.uri)
            ..initialize().then((_) {
              setState(() {
                _disposeWidget = false;
              });
            })
            ..play();
        });
      });
    });
  }
}

class Channel {
  @required
  String name;
  @required
  String uri;

  Channel({this.name, this.uri});
}

class ChannelTile extends StatelessWidget {
  final Channel channel;
  final Function onTap;
  final Function onLongPress;

  const ChannelTile(this.channel, {this.onTap, this.onLongPress, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.live_tv),
      title: Text(channel.name),
      subtitle: Text("Programa atual."),
      onTap: () => onTap != null ? onTap(channel) : null,
      onLongPress: () => onLongPress != null ? onLongPress(channel) : null,
    );
  }
}
