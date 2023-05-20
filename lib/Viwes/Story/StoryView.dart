import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class StoryView extends StatefulWidget {
  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  File? _videoFile;
  VideoPlayerController? _videoController;
  bool _videoSelected = false;
  bool _isPlaying = false;

  Future<void> _pickVideo() async {
    final pickedVideo =
        await ImagePicker().getVideo(source: ImageSource.gallery);
    setState(() {
      if (pickedVideo != null) {
        _videoFile = File(pickedVideo.path);
        _videoController = VideoPlayerController.file(_videoFile!)
          ..initialize().then((_) {
            setState(() {
              _videoSelected = true;
            });
            _videoController!.play();
            _isPlaying = true;
          });
      } else {
        print('No video selected.');
      }
    });
  }

  void _togglePlayPause() {
    setState(() {
      if (_isPlaying) {
        _videoController!.pause();
        _isPlaying = false;
      } else {
        _videoController!.play();
        _isPlaying = true;
      }
    });
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_videoFile != null)
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: Get.height,
                    width: Get.width,
                    child: AspectRatio(
                      aspectRatio: _videoController!.value.aspectRatio,
                      child: VideoPlayer(_videoController!),
                    ),
                  ),
                  IconButton(
                    onPressed: _togglePlayPause,
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickVideo,
        child: Icon(_videoSelected ? Icons.arrow_forward : Icons.video_library),
      ),
    );
  }
}
