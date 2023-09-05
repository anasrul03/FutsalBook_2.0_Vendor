import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  final String title;
  final String tileTitle;
  final String subtitle;
  final IconButton iconButton;
  // TODO: include image getter for the promotion card. etc: links or file
  const PromotionCard(
      {super.key,
      required this.title,
      required this.tileTitle,
      required this.subtitle,
      required this.iconButton});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _showSnackbar(
                context: context, message: 'Hi you click on promotion card');
          },
          child: _buildPromotionCard(screenWidth),
        ),
      ],
    );
  }

  Widget _buildPromotionCard(double screenWidth) {
    return Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildStackImage(screenWidth),
            _buildListTile(
              title: tileTitle,
              subtitle: subtitle,
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
            )
          ],
        ));
  }

// * Function/Method
  void _showSnackbar({
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 1),
    ));
  }

// * Widgets build
  Widget _buildStackImage(double screenWidth) {
    return Stack(
      children: [
        _buildNetworkImage(
          width: screenWidth,
          height: 70,
          imageUrl:
              'https://t3.ftcdn.net/jpg/04/39/62/76/360_F_439627666_4DfoWxROitsNxtHMdSZnrUYQLMwnSieN.jpg',
        ),
        _buildGradient(width: screenWidth),
        Positioned(
          left: 10,
          bottom: 15,
          child: _buildTitle(title: title),
        )
      ],
    );
  }

  Widget _buildTitle({required String title}) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
    );
  }

  Widget _buildGradient({
    required double width,
  }) {
    return Container(
      height: 70,
      width: width,
      foregroundDecoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0,
            0.9,
          ],
        ),
      ),
    );
  }

  Widget _buildNetworkImage({
    required double width,
    required double height,
    required String imageUrl,
  }) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
    );
  }

  Widget _buildListTile({
    required String title,
    required String subtitle,
    required EdgeInsetsGeometry? contentPadding,
    required Widget trailing,
  }) {
    return ListTile(
      contentPadding: contentPadding,
      tileColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
      trailing: trailing,
    );
  }
}
