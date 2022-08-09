import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modern_ui/consts.dart';
import 'package:glassmorphism/glassmorphism.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ModernColors.black,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -86,
              child: Container(
                height: 166,
                width: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ModernColors.pink,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ModernColors.green,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenWidth * 0.03,
                  ),
                  GlassmorphicContainer(
                    width: 200,
                    height: 200,
                    borderRadius: 20,
                    linearGradient: LinearGradient(colors: [
                      ModernColors.pink.withOpacity(0.1),
                      ModernColors.green.withOpacity(0.1)
                    ]),
                    border: 2,
                    blur: 20,
                    borderGradient: const LinearGradient(
                        colors: [ModernColors.pink, ModernColors.green]),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/wolf_avatar.png'),
                    )),
                  ),
                  SizedBox(height: screenHeight * 0.09),
                  const Text(
                    'Lets Create Modern UI\n Neon ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      'Foundry manages your dependencies, compiles your project, runs tests, deploys, and lets you interact with the chain from the command-line and via Solidity scripts.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GlassmorphicContainer(
                    width: 200,
                    height: 50,
                    borderRadius: 100,
                    linearGradient: LinearGradient(colors: [
                      ModernColors.pink.withOpacity(0.7),
                      ModernColors.green.withOpacity(0.7)
                    ]),
                    border: 2,
                    blur: 20,
                    borderGradient: const LinearGradient(
                        colors: [ModernColors.pink, ModernColors.green]),
                    child: const Center(
                      child: Text(
                        'Sing Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
