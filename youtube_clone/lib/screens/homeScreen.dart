import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/models/videos_info.dart';
import 'videoplayer_screen.dart';

class HomeScreen extends StatelessWidget {
  final appBar = AppBar(
    backgroundColor: Colors.white,
    title: Container(
        width: 115, child: Image.asset('assets/images/youtubelogo.png')),
    actions: <Widget>[
      IconButton(
          color: Colors.grey, icon: Icon(Icons.videocam), onPressed: () {}),
      IconButton(
          color: Colors.grey, icon: Icon(Icons.search), onPressed: () {}),
      InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 6),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.purple,
            child: Text(
              'B',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<VideoList>(context, listen: false);
    final dummyData = provider.videoList;

    return Scaffold(
      appBar: appBar,
      body: Container(
        height: MediaQuery.of(context).size.height -
            (appBar.preferredSize.height - MediaQuery.of(context).padding.top),
        width: double.infinity,
        color: Colors.white,
        child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              InkWell(splashColor:Colors.black38 ,
                onTap: ()=>Navigator.of(context).pushNamed(VideoPlayBack.routeName,arguments: dummyData[index].videoUrl),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: double.infinity,
                  child: Image.asset(dummyData[index].thumbNail,fit: BoxFit.cover,),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(

                        radius: 18,
                        backgroundImage: AssetImage(dummyData[index].channelImage),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          dummyData[index].title,
                          style: TextStyle(
                            color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                            '${dummyData[index].channelName} . ${dummyData[index].views}K views . ${dummyData[index].postedTiming}',style: TextStyle(fontSize:9,color:Colors.grey),)
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              )
            ],
          ),
        ),
      ),
    );
  }
}
