import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../../../core/common/error.dart';
import '../../../core/common/loader.dart';
import '../../../model/community_model.dart';
import '../../community/controller/community_controller.dart';

class CommunityListDrawer extends ConsumerWidget {
  const CommunityListDrawer({super.key});

  void navigateToCommunity(BuildContext context, Community community) {
    Routemaster.of(context).push('/r/${community.name}');
  }

  void navigateToCreateCommunity(BuildContext context) {
    Routemaster.of(context).push('/create-community');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Create Community'),
              onTap: () => navigateToCreateCommunity(context),
            ),
            ref.watch(userCommunitiesProvider).when(
                  data: (communities) => Expanded(
                    child: ListView.builder(
                      itemCount: communities.length,
                      itemBuilder: (BuildContext context, int index) {
                        final community = communities[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(community.avatar),
                            radius: 16.0,
                          ),
                          title: Text('r/${community.name}'),
                          onTap: () {
                            navigateToCommunity(context, community);
                          },
                        );
                      },
                    ),
                  ),
                  error: (error, stackTrace) => ErrorText(
                    error: error.toString(),
                  ),
                  loading: () => const Loader(),
                ),
          ],
        ),
      ),
    );
  }
}
