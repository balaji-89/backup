import 'package:flutter/foundation.dart';

class VideoDetails {
  String thumbNail;
  String videoUrl;
  String title;
  int views;
  String postedTiming;
  String channelImage;
  String channelName;
  double likes;
  double disLikes;

  VideoDetails({
    @required this.thumbNail,
    @required this.videoUrl,
    @required this.title,
    @required this.views,
    @required this.postedTiming,
    @required this.channelImage,
    @required this.channelName,
    @required this.likes,
    @required this.disLikes,
  });
}

class VideoList with ChangeNotifier {
  List<VideoDetails> _videoList = [
    VideoDetails(
        thumbNail: 'assets/images/madhanthumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=tA8oSJqqotI',
        channelName: 'MadhanGowri',
        views: 59,
        postedTiming: '2 hours ago',
        channelImage: 'assets/images/madhan.jpeg',
        title: 'India Biggest Problem',
         likes:566,
    disLikes:57),
    VideoDetails(
        thumbNail: 'assets/images/micsetthumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=LDf5Ahr_5Sw',
        channelName: 'Micset',
        views: 809,
        postedTiming: '2 weeks ago',
        channelImage: 'assets/images/micset.jpeg',
        title: 'Corona Sothanaigal',
         likes:333,
    disLikes:45),
    VideoDetails(
        thumbNail: 'assets/images/sothanaigalthumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=2UM030ArhT8',
        channelName: 'Sothanaigal',
        views: 576,
        postedTiming: '1 year Before',
        channelImage: 'assets/images/sothanaigal.jpeg',
        title: 'Ouija Board Sothanaigal',
    likes:899,
    disLikes:677),
    VideoDetails(
        thumbNail: 'assets/images/putchutneythumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=4UEHiSfz1JE',
        channelName: 'Putchutney',
        views: 206,
        postedTiming: '4 weeks Later',
        channelImage: 'assets/images/putchutney.jpeg',
        title: 'Emergency',
        likes:1.5,
        disLikes:600,),
    VideoDetails(
        thumbNail: 'assets/images/monkeythumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=NbGhLXuNJvc',
        channelName: 'MONKEY BGM',
        views: 806,
        postedTiming: '4 weeks ago',
        channelImage: 'assets/images/monkeybgm.png',
        title: 'High Bass Boosted Party',
        likes:501,
    disLikes:5,),
    VideoDetails(
        thumbNail: 'assets/images/lmesthumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=qNvq-o11ipA&t=40s',
        channelName: 'LMES',
        views: 296,
        postedTiming: '1 Month ago',
        channelImage: 'assets/images/lmes.jpeg',
        title: 'Why Pick My Career?',
         likes:203,
          disLikes:1.5,),
    VideoDetails(
        thumbNail: 'assets/images/resocoderthumb.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=_SMDMUh_aDQ',
        channelName: 'Reso Coder',

        views: 77,
        postedTiming: '7 Month ago',
        channelImage: 'assets/images/resocoder.png',
        title: 'What Is StateManagement?',
        likes:77,
        disLikes:2),
  ];

  List<VideoDetails> get videoList {
    return [..._videoList];
  }
  VideoDetails findByID(String id){
    return _videoList.firstWhere((videoDetails)=>videoDetails.videoUrl==id);
  }
}
