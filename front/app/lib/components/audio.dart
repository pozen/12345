import 'dart:async';

//import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:media_kit/media_kit.dart';

class Audio extends StatefulWidget {
   Audio({Key? key, required this.url}) : super(key: key);

   final String url;

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  late Player player = Player();
  //late final controller = AudioController(player);

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    //player = AudioPlayer();
    player.open(Media(
      widget.url,
    ), play: false);

    // Set the release mode to keep the source after playback has completed.
    //player.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Player'),
      ),
      body: PlayerWidget(player: player),
    );*/
    return PlayerWidget(player: player);
  }
}

class PlayerWidget extends StatefulWidget {
  final Player player;

  const PlayerWidget({
    required this.player,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  PlayerState? _playerState;
  Duration? _duration;
  Duration? _position;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  bool get _isPlaying => _playerState!.playing == true;

  bool get _isPaused => _playerState!.playing == false && _playerState!.completed == false;

  String get _durationText => _duration?.toString().split('.').first ?? '';

  String get _positionText => _position?.toString().split('.').first ?? '';

  Player get player => widget.player;

  @override
  void initState() {
    super.initState();
    // Use initial values from player
    _playerState = player.state;
    /*player.seek(Duration.zero).then(
          (value) => setState(() {
            _duration = Duration.zero;
            _position = Duration.zero;
          }),
        );*/
    _initStreams();
  }

  @override
  void setState(VoidCallback fn) {
    // Subscriptions only can be closed asynchronously,
    // therefore events can occur after widget has been disposed.
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return SizedBox(
      height: 110,
      width: 200,
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              key: const Key('play_button'),
              onPressed: _isPlaying ? null : _play,
              iconSize: 25.0,
              icon: const Icon(Icons.play_arrow),
              color: color,
            ),
            IconButton(
              key: const Key('pause_button'),
              onPressed: _isPlaying ? _pause : null,
              iconSize: 25.0,
              icon: const Icon(Icons.pause),
              color: color,
            ),
            IconButton(
              key: const Key('stop_button'),
              onPressed: _isPlaying || _isPaused ? _stop : null,
              iconSize: 25.0,
              icon: const Icon(Icons.stop),
              color: color,
            ),
          ],
        ),
        Slider(
          onChanged: (value) {
            final duration = _duration;
            if (duration == null) {
              return;
            }
            final position = value * duration.inMilliseconds;
            player.seek(Duration(milliseconds: position.round()));
          },
          value: (_position != null &&
                  _duration != null &&
                  _position!.inMilliseconds > 0 &&
                  _position!.inMilliseconds < _duration!.inMilliseconds)
              ? _position!.inMilliseconds / _duration!.inMilliseconds
              : 0.0,
        ),
        Text(
          _position != null
              ? '$_positionText / $_durationText'
              : _duration != null
                  ? _durationText
                  : '',
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    ));
  }

  void _initStreams() {
    _durationSubscription = player.stream.duration.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = player.stream.position.listen(
      (p) => setState(() => _position = p),
    );

    _playerCompleteSubscription = player.stream.completed.listen((event) {
      Logger().d("player complete: $event");
      setState(() {
        _playerState = player.state;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        player.stream.rate.listen((state) {
      Logger().d("player state change: $state");
      setState(() {
        _playerState = player.state;
        //_playerState = state;
      });
    });
  }

  Future<void> _play() async {
    Logger().d("play");
    if (player.state.completed) {
      //await player.seek(Duration.zero);
    }
    await player.play();
    setState(() => _playerState = player.state);
  }

  Future<void> _pause() async {
    Logger().d("pause");
    await player.pause();
    setState(() => _playerState = player.state);
  }

  Future<void> _stop() async {
    Logger().d("stop");
    //Duration tmp = _duration!;
    await player.seek(Duration.zero);
    await player.pause();
    setState(() {
      _playerState = player.state;
      //_playerState
      //_position = Duration.zero;
      //_duration = tmp;
    });
  }
}