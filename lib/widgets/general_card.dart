import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final GestureTapCallback? onTap;

  const GeneralCard({super.key, required this.imageUrl, required this.title, required this.description, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16.0),
                  child: Text(
                      description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}