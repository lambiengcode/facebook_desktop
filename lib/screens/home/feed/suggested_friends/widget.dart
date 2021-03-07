import 'package:facebook_desktop/components/friend_card.dart';
import 'package:facebook_desktop/screens/home/components/section.dart';
import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';

class SuggestedFriends extends StatelessWidget {
  final _faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Section(
      padding: EdgeInsets.only(bottom: 30),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SectionTitle(
          title: 'SUGGESTED FRIENDS',
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: false,
          ),
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1516726817505-f5ed825624d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: false,
          ),
        ],
      ),
    );
  }
}
