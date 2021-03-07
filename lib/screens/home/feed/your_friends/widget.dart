import 'package:facebook_desktop/components/friend_card.dart';
import 'package:facebook_desktop/screens/home/components/section.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class YourFriends extends StatelessWidget {
  final _faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Section(
      padding: EdgeInsets.only(bottom: 30),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SectionTitle(
          title: 'YOUR FRIENDS',
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1508606572321-901ea443707f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fG1vZGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: true,
          ),
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1481824429379-07aa5e5b0739?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fG1vZGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: true,
          ),
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1440589473619-3cde28941638?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTF8fG1vZGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: true,
          ),
          FriendCard(
            margin: EdgeInsets.only(top: 7.5),
            name: _faker.person.name(),
            image:
                'https://images.unsplash.com/photo-1456885284447-7dd4bb8720bf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTd8fG1vZGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            online: false,
          ),
        ],
      ),
    );
  }
}
