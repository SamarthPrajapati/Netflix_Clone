import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/widget/responsive.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key key,
    this.scrollOffset = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  onTap: () {},
                  title: 'TV Shows',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'Movies',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'My List',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  onTap: () {},
                  title: 'Home',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'TV Shows',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'Movies',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'Latest',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'My List',
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => print('search'),
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 28,
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'Kids',
                ),
                _AppBarButton(
                  onTap: () {},
                  title: 'DVD',
                ),
               IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => print('gift'),
                  icon: Icon(Icons.card_giftcard),
                  color: Colors.white,
                  iconSize: 28,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => print('Notifications'),
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  iconSize: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  _AppBarButton({this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
