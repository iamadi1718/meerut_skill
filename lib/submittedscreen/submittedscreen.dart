import 'package:flutter/material.dart';

class SubmittedScreen extends StatefulWidget {
  const SubmittedScreen({super.key});

  @override
  State<SubmittedScreen> createState() => _SubmittedScreenState();
}

class _SubmittedScreenState extends State<SubmittedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> cardScale;
  late Animation<double> badgeMove;
  late Animation<double> badgeScale;
  late Animation<double> textOpacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat();

    cardScale = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOutBack),
      ),
    );

    badgeMove = Tween<double>(begin: -10, end: 25).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.75, curve: Curves.easeInOut),
      ),
    );

    badgeScale = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.7, curve: Curves.elasticOut),
      ),
    );

    textOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 1)),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildLine(double width) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: width,
      height: 5,
      decoration: BoxDecoration(
        color: const Color(0xFF2E5D95),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B1D4F),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ScaleTransition(
                          scale: cardScale,
                          child: Container(
                            width: 190,
                            height: 190,
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: const Color(0xFFDAD7E5),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF1E3F73),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Color(0xFF6ABAC8),
                                          ),
                                          const SizedBox(width: 8),
                                          buildLine(55),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Color(0xFF6ABAC8),
                                          ),
                                          const SizedBox(width: 8),
                                          buildLine(70),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Color(0xFF6ABAC8),
                                          ),
                                          const SizedBox(width: 8),
                                          buildLine(50),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Color(0xFF6ABAC8),
                                          ),
                                          const SizedBox(width: 8),
                                          buildLine(80),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Positioned(
                                  right: -8,
                                  top: 55 + badgeMove.value,
                                  child: Transform.scale(
                                    scale: badgeScale.value,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFA9C05B),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 34,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 35),

                        FadeTransition(
                          opacity: textOpacity,
                          child: const Text(
                            "Application\nSubmitted",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: ElevatedButton(
                onPressed: () {
                  // Home Screen Navigation
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF2B1D4F),
                  minimumSize: const Size(140, 45),
                ),
                child: const Text("Go to Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
