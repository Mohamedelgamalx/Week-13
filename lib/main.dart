import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:week_13/rate.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<BannerModel> listBanners = [
    BannerModel(id: "1", imagePath: 'assets/images/111.png'),
    BannerModel(id: "2", imagePath: 'assets/images/222.png'),
    BannerModel(id: "3", imagePath: 'assets/images/111.png'),
  ];
  
  bool isChooseS = false;
  bool isChooseM = false;
  bool isChooseL = true;
  bool isChooseXL = false;
  bool isChoose2XL = false;

  bool _isFavorite = false;

  int _numberOfItems = 0;

  late int total;

  void _toggleFavorite(){
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1c1c1c),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff1c1c1c),
          title: Row(
            children: [
              const Icon(Icons.arrow_back_ios,size: 30,),
              const SizedBox(width: 257,),
              IconButton(
                onPressed: _toggleFavorite,
                icon: (_isFavorite
                    ? const Icon(Icons.favorite,size: 30)
                : const Icon(Icons.favorite_outline,size: 30)
                ),
              ),
              const SizedBox(width: 15,),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined,size: 30,),
              ),
            ],
          ),
        ),
        body: Column(
            children: [
              Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top:20,right: 110),
                      height: 470,
                      alignment: Alignment.topLeft,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                      ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 10,left: 10),
                          child: BannerCarousel(
                            margin: const EdgeInsets.all(0),
                            banners: listBanners,
                            customizedIndicators: const IndicatorModel.animation(width: 15, height: 5, spaceBetween: 4, widthAnimation: 35),
                            height: 440,
                            activeColor: const Color(0xFFe6323e),
                            animation: true,
                            borderRadius: 10,
                            width: 300,
                          ),
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                              isChooseS = true;
                              isChooseM = false;
                              isChooseL = false;
                              isChooseXL = false;
                              isChoose2XL = false;
                        });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 350,top: 60),
                            height: 55, width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: const Color(0xff323232)),
                              color: !isChooseS ? const Color(0xFF2c2c2c) : const Color(0xFFe6323e),
                            ),
                            child: const Center(child: Text('S',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                            )
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            isChooseS = false;
                            isChooseM = true;
                            isChooseL = false;
                            isChooseXL = false;
                            isChoose2XL = false;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 350,top: 145),
                            height: 55, width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: const Color(0xff323232)),
                              color: !isChooseM? const Color(0xFF2c2c2c) : const Color(0xFFe6323e),
                            ),
                            child: const Center(child: Text('m',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                            )
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            isChooseS = false;
                            isChooseM = false;
                            isChooseL = true;
                            isChooseXL = false;
                            isChoose2XL = false;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 350,top: 230),
                            height: 55, width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: const Color(0xff323232)),
                              color: !isChooseL? const Color(0xFF2c2c2c) : const Color(0xFFe6323e),
                            ),
                            child: const Center(child: Text('L',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                            )
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            isChooseS = false;
                            isChooseM = false;
                            isChooseL = false;
                            isChooseXL = true;
                            isChoose2XL = false;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 350,top: 315),
                            height: 55, width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: const Color(0xff323232)),
                              color: !isChooseXL? const Color(0xFF2c2c2c) : const Color(0xFFe6323e),
                            ),
                            child: const Center(child: Text('XL',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                            )
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            isChooseS = false;
                            isChooseM = false;
                            isChooseL = false;
                            isChooseXL = false;
                            isChoose2XL = true;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 350,top: 400),
                            height: 55, width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: const Color(0xff323232)),
                              color: !isChoose2XL? const Color(0xFF2c2c2c) : const Color(0xFFe6323e),
                            ),
                            child: const Center(child: Text('2XL',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                            )
                        )
                    ),
                  ]
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 25,top: 15),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Belgium EURO',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Audiowide',
                                    ),
                                    ),
                            Text('20/21 Away by Adidas',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),
                            ),
                          ]
                        ),
                      ]),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Rating((rating) {
                        setState(() {
                        });
                      }, 5),
                      Container(
                          height: 50, width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: const Color(0xff323232)),
                            color: const Color(0xFF2c2c2c),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: const Color(0xFFe6323e),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (_numberOfItems > 0) {
                                      _numberOfItems--;
                                    }
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              Text(
                                "$_numberOfItems",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: const Color(0xFFe6323e),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                onPressed: () {
                                  setState(() {
                                    _numberOfItems++;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: 380,
                    height: 130,
                    child: Row(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Details',style: TextStyle(color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                            ),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text('Materials:',style: TextStyle(color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),),
                                Text(' Polyster',style: TextStyle(color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),)
                              ],
                            ),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                Text('Shipping:',style: TextStyle(color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),),
                                Text(' In 5 to 6 days',style: TextStyle(color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),)
                              ],
                            ),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                Text('Returns:',style: TextStyle(color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),),
                                Text(' Within 20 days',style: TextStyle(color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                ),)
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 40,),
                        SizedBox(
                          width: 93,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color(0xFFe6323e),
                              padding: const EdgeInsets.all(1)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 40,),
                                const SizedBox(height: 5,),
                                Text('\$${_numberOfItems * 89}',style: const TextStyle(color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Audiowide',
                                )
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ]
        )
      )
    );
  }
}