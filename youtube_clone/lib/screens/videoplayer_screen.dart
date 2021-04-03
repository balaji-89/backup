import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/models/videos_info.dart';

class VideoPlayBack extends StatefulWidget {
  static const routeName = '/videoplayback';

  @override
  _VideoPlayBackState createState() => _VideoPlayBackState();
}

class _VideoPlayBackState extends State<VideoPlayBack> {
  static String videoUrl;
  YoutubePlayerController controller;
  double iconSize = 7;
  Color iconColor = Colors.grey;

  Widget buildViews(String channelName, views, postedTiming) {
    return (channelName == 'sothanaigal' 'Micset')
        ? Text(
            '${views}M views . $postedTiming',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          )
        : Text(
            '${views}K views . $postedTiming',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          );
  }

  @override
  Widget build(BuildContext context) {
    videoUrl = ModalRoute.of(context).settings.arguments as String;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
    );

    final dummyData = Provider.of<VideoList>(context).findByID((videoUrl));

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          YoutubePlayer(
            controller: controller,
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Flexible(
              fit: FlexFit.tight

              ,
              child: Column(

                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        '${dummyData.title} | ${dummyData.channelName}',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Spacer(),
                      IconButton(
                        color: Colors.grey,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 18,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildViews(dummyData.channelName, dummyData.views,
                          dummyData.postedTiming)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.thumb_up),
                              onPressed: () {},
                              color: iconColor,
                            ),
                            Text(
                              dummyData.likes.toString(),
                              style: TextStyle(
                                fontSize: iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(Icons.thumb_down),
                                onPressed: () {},
                                color: iconColor),
                            Text(
                              dummyData.disLikes.toString(),
                              style: TextStyle(
                                fontSize: iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(Icons.share),
                                onPressed: () {},
                                color: iconColor),
                            Text(
                              'Share',
                              style: TextStyle(
                                fontSize: iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(Icons.file_download),
                                onPressed: () {},
                                color: iconColor),
                            Text(
                              'Download',
                              style: TextStyle(
                                fontSize: iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(Icons.add_to_photos),
                                onPressed: () {},
                                color: iconColor),
                            Text(
                              'Save',
                              style: TextStyle(
                                fontSize: iconSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text(dummyData.channelName),
                    subtitle: Text('207k Subscribers'),
                    trailing: FlatButton(
                      onPressed: () {},
                      child: Text('Subcribe'),
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(dummyData.channelImage),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
