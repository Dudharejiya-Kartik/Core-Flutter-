import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gbwhatsappUI(),
  ));
}

class gbwhatsappUI extends StatefulWidget {
  const gbwhatsappUI({super.key});

  @override
  State<gbwhatsappUI> createState() => _gbwhatsappUIState();
}

class _gbwhatsappUIState extends State<gbwhatsappUI> {
  List<Map<String, dynamic>> mycontent = [
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
    {'Name': "Kartik", 'MSG': "Hii", 'Time': "11:34pm",'img' : "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xffb3d7d8)),
        ),
        actions: const [
          Icon(
            Icons.wifi,
            color: Color(0xffb3d7d8),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.brightness_4_sharp,
            color: Color(0xffb3d7d8),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Color(0xffb3d7d8),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Color(0xffb3d7d8),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Color(0xffb3d7d8),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: const Color(0xff018269),
      ),
      body: Align(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...mycontent
                  .map(
                    (e) => Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff101d25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children:
                              [
                                CircleAvatar(
                                  radius: 30,
                                    backgroundImage: NetworkImage(Image :e['img']),
                                    //backgroundImage:
                              // NetworkImage(
                              //   images
                              //             ,
                              //       ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "${e['Name']}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      "${e['MSG']}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 165,
                                ),
                                Text(
                                  "${e['Time']}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],

                            ),

                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add,color: Colors.greenAccent,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffb3d7d8),
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Groups"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          //BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Community"),
          //BottomNavigationBarItem(icon: Icon(Icons.history_toggle_off), label: "Status"),


        ],
      ),
    );
  }
}

// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
//
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Image Loading Example'),
// //         ),
// //         body: Center(
// //           child: ImageLoader(),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class ImageLoader extends StatefulWidget {
// //   @override
// //   _ImageLoaderState createState() => _ImageLoaderState();
// // }
// //
// // class _ImageLoaderState extends State<ImageLoader> {
// //   final String mainImageUrl =
// //       'https://c4.wallpaperflare.com/wallpaper/947/583/747/mountain-nature-hd-wallpapers-top-beautiful-desktop-nature-images-background-wallpaper-preview.jpg'; // Replace with your main image URL
// //   final String placeholderImageUrl =
// //       'https://webneel.com/wallpaper/sites/default/files/images/08-2018/1-nature-wallpaper-grass-hd.1280.jpg'; // Replace with your placeholder image URL
// //
// //   bool isLoading = true;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Simulate a delay for loading the main image
// //     Future.delayed(Duration(seconds: 2), () {
// //       setState(() {
// //         isLoading = false;
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return isLoading
// //         ? Image.network(
// //       placeholderImageUrl,
// //       width: 200.0, // Adjust the width as needed
// //       height: 200.0, // Adjust the height as needed
// //       fit: BoxFit.cover,
// //     )
// //         : Image.network(
// //       mainImageUrl,
// //       width: 200.0, // Adjust the width as needed
// //       height: 200.0, // Adjust the height as needed
// //       fit: BoxFit.cover,
// //     );
// //   }
// // }

//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final List<Map<String, String>> imageList = [
//     {'url': 'https://w7.pngwing.com/pngs/114/579/png-transparent-pink-cross-stroke-ink-brush-pen-red-ink-brush-ink-leave-the-material-text.png',},
//     {'url': 'https://w7.pngwing.com/pngs/895/199/png-transparent-spider-man-heroes-download-with-transparent-background-free-thumbnail.png',},
//     {'url': 'https://png.pngtree.com/element_our/png/20180928/beautiful-hologram-water-color-frame-png_119551.jpg',},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Multiple Circle Avatars Example'),
//         ),
//         body: ImageCircleAvatarList(images: imageList),
//       ),
//     );
//   }
// }
//
// class ImageCircleAvatarList extends StatelessWidget {
//   final List<Map> images;
//
//   ImageCircleAvatarList({required this.images});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: images.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             radius: 40.0, // Adjust the radius as needed
//             backgroundImage: NetworkImage(images[index]['url']!),
//             child: Text(images[index]), // Display label as text inside CircleAvatar
//           ),
//         );
//       },
//     );
//   }
// }