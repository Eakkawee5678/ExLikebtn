import 'package:flutter/material.dart';

class LikeBtn extends StatefulWidget {
  const LikeBtn({super.key});

  @override
  State<LikeBtn> createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  bool isLiked = false;
  int countLike = 0;
  void _likestar() {
    setState(() {
      if (isLiked) {
        countLike--;
      } else {
        countLike++;
      }
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1502613345505-9e46442c057b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30,),
        Container(
          width: screenSize.width * 0.8,
          
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Oeschinen Lake Camphround ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Kandersteg, Switzerland", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: _likestar,
                        icon: isLiked
                            ? Icon(Icons.star, color: Colors.deepOrangeAccent)
                            : Icon(
                                Icons.star_border_outlined,
                              ),
                      ),
                      Text('$countLike'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.call, color:Colors.blue ,size: 40,),
                      ),
                      Text("Call", style: TextStyle(color:Colors.blue,fontSize: 18)),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.near_me, color:Colors.blue ,size: 40,),
                      ),
                      Text("Route", style: TextStyle(color:Colors.blue,fontSize: 18)),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.share, color:Colors.blue ,size: 40,),
                      ),
                      Text("SHARE",style: TextStyle(color:Colors.blue,fontSize: 18)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Text("Commodo deserunt mollit nisi minim minim in aliquip eiusmod voluptate sit nostrud cillum in. Ex exercitation cillum laborum irure Lorem veniam ut labore in proident est officia. Sit qui sit aliquip laboris mollit pariatur. Est culpa ea aliquip labore ut ullamco et elit ullamco commodo. Et sit fugiat incididunt do do minim.")
            ],
          ),
        )
      ],
    ));
  }
}
