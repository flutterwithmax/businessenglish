import 'package:flutter/material.dart';
import 'package:newbusinessapp/providers/favorites.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/phrase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const myColor = Color.fromRGBO(67, 245, 251, 0.849);

class PhraseCard extends ConsumerStatefulWidget {
  final Phrase phrase;

  const PhraseCard({
    super.key,
    required this.phrase,
  });

  @override
  ConsumerState<PhraseCard> createState() => _PhraseCardState();
}

class _PhraseCardState extends ConsumerState<PhraseCard> {
  late String localFilePath;
  bool isDownloaded = false;
  bool isPlaying = false;
  bool isDownloading = false;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    _checkIfFileExists();
    _initAudioPlayerListeners();
  }

  void _shareLink(String word) async {
    // Replace with your desired link

    await Share.share(word);
  }

  Future<void> _checkIfFileExists() async {
    final prefs = await SharedPreferences.getInstance();
    final isDownloaded = prefs.getBool(widget.phrase.uzPhrase) ?? false;

    if (isDownloaded) {
      final directory = await getApplicationDocumentsDirectory();
      localFilePath = '${directory.path}/${widget.phrase.uzPhrase}.mp3';
      setState(() {
        this.isDownloaded = true;
      });
    }
  }

  Future<void> _downloadFile() async {
    setState(() {
      isDownloading = true;
    });

    final directory = await getApplicationDocumentsDirectory();
    localFilePath = '${directory.path}/${widget.phrase.uzPhrase}.mp3';

    final dio = Dio();
    try {
      final response =
          await dio.download(widget.phrase.soundUrl!, localFilePath);
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool(widget.phrase.uzPhrase, true);
        setState(() {
          isDownloaded = true;
        });
      }
    } catch (e) {
      print("Download error: $e");
    } finally {
      setState(() {
        isDownloading = false;
      });
    }
  }

  void _initAudioPlayerListeners() {
    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.completed) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  void _playPauseAudio() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(DeviceFileSource(localFilePath));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget play;

    bool isFav = false;

    if (ref.read(favoritePhrases).contains(widget.phrase)) {
      isFav = true;
    }

    if (isDownloading) {
      play = const CircularProgressIndicator();
    } else if (isDownloaded) {
      play = IconButton(
        icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
        onPressed: _playPauseAudio,
      );
    } else {
      play = IconButton(
        icon: const Icon(Icons.download),
        onPressed: _downloadFile,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 4),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                widget.phrase.uzPhrase,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    widget.phrase.engPhase,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    widget.phrase.transcription,
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
                Row(
                  children: [
                    play,
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        ref
                            .watch(favoritePhrases.notifier)
                            .toggleFavStats(widget.phrase);
                        setState(() {});
                      },
                      icon: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        size: 35,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _shareLink(widget.phrase.engPhase);
                      },
                      icon: const Icon(
                        Icons.share,
                        size: 35,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
