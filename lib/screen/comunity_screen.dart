import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class ComunityScreen extends StatelessWidget{
  const ComunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(24.0), 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Artikel',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightGreen
                      )),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/kucing.png'),
                    )
                  ],
                )
              ),
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
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.ads_click_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Diskusi',
                                style: TextStyle(color: Colors.white, fontSize: 14),
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
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.diversity_3_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Tantangan',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}