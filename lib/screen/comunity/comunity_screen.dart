import 'package:cryce/di/injection.dart';
import 'package:cryce/model/comunity.dart';
import 'package:cryce/screen/comunity/comunity_view_model.dart';
import 'package:cryce/widgets/general_card.dart';
import 'package:flutter/material.dart';

class ComunityScreen extends StatelessWidget {
  final viewModel =
      ComunityViewModel(repository: Injection.provideRepository());
  late final List<Comunity> nearestComunity;
  late final List<Comunity> popularComunity;

  ComunityScreen({Key? key}) : super(key: key) {
    nearestComunity = viewModel.getNearestComunity();
    popularComunity = viewModel.getMostPopularComunity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(24.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Komunitas',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.lightGreen)),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/kucing.png'),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.ads_click_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Diskusi',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.diversity_3_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Tantangan',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Komunitas Terdekat',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 210,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(nearestComunity.length * 2 - 1,
                            (index) {
                          if (index.isEven) {
                            final comunity = nearestComunity[index ~/ 2];
                            return Expanded(
                              child: GeneralCard(
                                imageUrl: comunity.imageUrl,
                                title: comunity.title,
                                description: comunity.description,
                                width: double.infinity,
                                subtitleCard: Row(
                                  children: [
                                    const Icon(
                                      Icons.pin_drop_outlined,
                                      size: 12.0,
                                      opticalSize: 20,
                                    ),
                                    const SizedBox(width: 6.0),
                                    Text(
                                      "${comunity.distance.toString()} Km",
                                      style: const TextStyle(
                                          fontSize: 10.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          return const SizedBox(width: 12);
                        })),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Komunitas Popular',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 210,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(popularComunity.length * 2 - 1,
                            (index) {
                          if (index.isEven) {
                            final comunity = popularComunity[index ~/ 2];
                            return Expanded(
                              child: GeneralCard(
                                imageUrl: comunity.imageUrl,
                                title: comunity.title,
                                description: comunity.description,
                                width: double.infinity,
                              ),
                            );
                          }
                          return const SizedBox(width: 12);
                        })),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
