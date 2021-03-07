import 'package:facebook_desktop/components/user_tile.dart';
import 'package:facebook_desktop/screens/home/feed/card.dart';
import 'package:facebook_desktop/screens/post/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:like_button/like_button.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: FeedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: UserTile(
                name: 'lambiengcode',
                image:
                    'https://avatars.githubusercontent.com/u/60530946?s=460&u=e342f079ed3571122e21b42eedd0ae251a9d91ce&v=4',
                trailing: Icon(
                  FeatherIcons.moreVertical,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15)
                  .copyWith(bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, I\'m a Mobile App Developer...'),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return PostScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 480.0,
                      width: 1000.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1519644473771-e45d361c9bb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTEwfHxtb2RlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: LikeButton(
                      likeBuilder: (isLiked) {
                        return Icon(
                          Icons.thumb_up,
                          color: isLiked ? Colors.blue : Colors.grey,
                          size: 20,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: LikeButton(
                      likeBuilder: (isLiked) {
                        return Icon(
                          Icons.chat_bubble,
                          color: Colors.grey,
                          size: 20,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: LikeButton(
                      likeBuilder: (isLiked) {
                        return Icon(
                          Icons.share,
                          color: Colors.grey,
                          size: 20,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
