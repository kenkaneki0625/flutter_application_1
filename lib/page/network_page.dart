import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../widget/navigation_drawer_widget.dart';

class NetworkCachePage extends StatefulWidget {
  @override
  _NetworkCachePageState createState() => _NetworkCachePageState();
}

class _NetworkCachePageState extends State<NetworkCachePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Network'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          TextButton(
            onPressed: clearCache,
            child: Text('Clear cache'),
            style: TextButton.styleFrom(primary: Colors.white),
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 50,
        itemBuilder: (context, index) => Card(
          color: Colors.pink,
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            leading: buildImage(index),
            title: Text(
              'Image ${index + 1}',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ));

  // Widget buildImage(int index) => CircleAvatar(
  //       // backgroundImage: CachedNetworkImageProvider(
  //       //     'https://source.unsplash.com/random?sig=$index'),
  //       child: CachedNetworkImage(imageUrl: 'https://source.unsplash.com/random?sig=$index/100*100'),
  //     );

  Widget buildImage(int index) => ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          key: UniqueKey(),
          imageUrl: 'https://source.unsplash.com/random?sig=$index/100*100',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
          // placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
          placeholder: (context, url) => Container(color: Colors.black12),
          errorWidget: (context, url, error) => Container(color: Colors.black12,
          child: Icon(Icons.error, color: Colors.red,),),

        ),
      );

  void clearCache() {
    DefaultCacheManager().emptyCache();
    imageCache!.clear();
    imageCache!.clearLiveImages();
    setState(() {});
  }
}
