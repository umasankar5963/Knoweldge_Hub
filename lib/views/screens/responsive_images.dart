import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({super.key});

  @override
  State<DestinationCarousel> createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  
 final List<String> images=[
  'assets/carouselImages/study1.jpg',
  'assets/carouselImages/study2.jpg',
  'assets/carouselImages/study3.jpg',
  'assets/carouselImages/study4.jpg',
  'assets/carouselImages/study5.jpg',
  ];
  
 
List <Widget> genarateImagesTiles() {
return images.map((element) =>ClipRRect(
  borderRadius: BorderRadius.circular(15.0),
  child:Image.asset(element,fit: BoxFit.fill,),
)).toList();
  }
  @override
  Widget build(BuildContext context, ) {
         
    double height=MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints ) {  
        // Get the screen width from the constraints
          final double screenWidth = constraints.maxWidth;
          // Set the threshold width to determine when to hide the container
          const double coursolScreenWidth = 800;
          // Check if the screen width is less than the threshold width
          final bool shouldHideContainer = screenWidth < coursolScreenWidth;
    
      return Center(
        child:Visibility(
          visible: shouldHideContainer,
          child: Container(
            height: height/2.5,
            padding: const EdgeInsets.only(top:10),
            child:Stack(
              children: [
             CarouselSlider(items: genarateImagesTiles(), options: CarouselOptions(viewportFraction: 0.9,enlargeCenterPage:true,autoPlay:true,autoPlayAnimationDuration: const Duration(seconds: 2),autoPlayCurve: Curves.easeIn, 
          //  aspectRatio: 18/8,
          )),
              ],
            )
          
          ),
        ),
      );
        },
    );
  }
}