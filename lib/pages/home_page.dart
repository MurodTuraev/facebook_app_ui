import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(child: Text('facebook', style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,size: 30,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, color: Colors.grey,size: 30,)),
          ],
        ),
        backgroundColor: Colors.black,
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
            color: Colors.black,
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/user_5.jpeg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1
                      )
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "What`s on your mind?",
                        hintStyle: TextStyle(color: Colors.grey.shade700, fontSize: 20),
                        border: InputBorder.none
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(15),
            color: Colors.black,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.video_call, color: Colors.red, weight: 18,),
                      SizedBox(width: 5,),
                      Text("Live", style: TextStyle(color: Colors.grey, fontSize: 18),)
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.photo, color: Colors.green, weight: 18,),
                      SizedBox(width: 5,),
                      Text("Photo", style: TextStyle(color: Colors.grey, fontSize: 18),)
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.red, weight: 18,),
                      SizedBox(width: 5,),
                      Text("Check in", style: TextStyle(color: Colors.grey, fontSize: 18),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(image: 'assets/images/story_5.jpeg', userImage: 'assets/images/user_5.jpeg', name: 'User Five'),
                makeStory(image: 'assets/images/story_4.jpeg', userImage: 'assets/images/user_4.jpeg', name: 'User Four'),
                makeStory(image: 'assets/images/story_3.jpeg', userImage: 'assets/images/user_3.jpeg', name: 'User Three'),
                makeStory(image: 'assets/images/story_2.jpeg', userImage: 'assets/images/user_2.jpeg', name: 'User Two'),
                makeStory(image: 'assets/images/story_1.jpeg', userImage: 'assets/images/user_1.jpeg', name: 'User One'),
              ],
            ),
          ),
          makeFeed(userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_2.jpeg',
              feedImage2: 'assets/images/story_4.jpeg',
          )
        ],
      ),
    );
  }

  Widget makeStory({image, userImage, name}){
    return Container(
      height: 160,
      width: 120,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 3
                ),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Text(name, style: TextStyle(color: Colors.white, fontSize: 16),)
          ],
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage, feedImage2}){
    return Container(
      // height: 500,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 5,right: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(color: Colors.white, fontSize: 20),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(color: Colors.white38, fontSize: 16),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: Colors.grey, size: 30,))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(feedText, style: TextStyle(color: Colors.white54, fontSize: 18),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 250,
            child: Row(
              children: [
                Expanded(child: Image(image: AssetImage(feedImage),fit: BoxFit.cover,)),
                Expanded(child: Image(image: AssetImage(feedImage2),fit: BoxFit.cover,)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(offset: Offset(-5,0),
                    child: makeLove(),),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey.shade600),)
                  ],
                ),
                Text('400 Comments', style: TextStyle(color: Colors.grey.shade600),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: false),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive? Colors.blue: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text('Like', style: TextStyle(color: isActive? Colors.blue: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text('Comment', style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text('Share', style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue
      ),
      child: Center(
        child: Icon(Icons.thumb_up, color: Colors.white,size: 12,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red
      ),
      child: Center(
        child: Icon(Icons.favorite, color: Colors.white,size: 12,),
      ),
    );
  }
}
