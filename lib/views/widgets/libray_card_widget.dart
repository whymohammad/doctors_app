import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LibraryCard extends StatelessWidget {
  final String storyTitle;
  final String imagePath;
  final String views;
  final double percentage;
  final int storyChapters;
  LibraryCard(
      {super.key,
      required this.views,
      required this.storyChapters,
      required this.storyTitle,
      required this.imagePath,
      required this.percentage});
  double sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.38),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff0000000F).withOpacity(0.06),
                blurRadius: 25.13,
                offset: const Offset(0, 0))
          ]),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  4), // Adjust the radius as per your preference
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
                height: 85,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 15,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storyTitle,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4D506C)),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 2,
                            width: double.infinity,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  trackHeight: 2,
                                  thumbColor: Colors.transparent,
                                  overlayShape: SliderComponentShape.noOverlay,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0)),
                              child: Slider(
                                value: percentage,
                                max: 100,
                                min: 0,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onChanged: (double value) {},
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Text(
                          "${percentage.toStringAsFixed(0)}%",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w400),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.018,
                    ),
                    Row(
                      children: [
                        Row(
                          children:  [
                            Image(
                                image: AssetImage("assets/icons/lib.png"),
                                height: 15,
                                width: 15),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${storyChapters.toString()} parts",
                              style: TextStyle(
                                  color: Color(0xffF8A170),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            const Image(
                                image: AssetImage("assets/icons/eye.png"),
                                height: 15,
                                width: 15),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              views,
                              style: const TextStyle(
                                  color: Color(0xffF8A170),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
