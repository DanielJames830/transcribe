import 'song.dart';

class Playlist {
  const Playlist({required this.title, required this.songs});

  final String title;
  final List<Song> songs;
}
