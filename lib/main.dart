import 'package:flutter/material.dart';

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
  final List<Channel> channels = [
    Channel(
      name: 'NBR',
      uri:
          'http://ebctvnbr-rtmp.adaptive.level3.net/egress/bhandler/ebcremuxlive/tvnbr/manifest.m3u8',
    ),
    Channel(
      name: 'TV Câmara',
      uri: 'https://stream3.camara.gov.br/tv1/manifest.m3u8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Test'),
      ),
      body: Center(
        child: Text('Test'),
      ),
    );
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
