import 'package:flutter/material.dart';
import 'package:voca/widgets/colors.dart';
import 'package:voca/widgets/feature_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("VOCO"),
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Virtual Assistant
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: const BoxDecoration(
                        color: Pallete.assistantCircleColor,
                        shape: BoxShape.circle),
                  ),
                ),
                Container(
                  height: 125,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/virtual_assistant.png'),
                    ),
                  ),
                ),
              ],
            ),
            //Chat bubble
            Container(
              margin: const EdgeInsets.only(
                top: 30.0,
                left: 20.0,
                right: 20.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0).copyWith(
                  topLeft: Radius.zero,
                ),
                border: Border.all(
                  color: Pallete.borderColor,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Text(
                  "Good Morning , What task can I do for you ? ",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Cera Pro',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20.0,
              ),
              child: const Text(
                "Here are a few features",
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Features
            const Column(
              children: [
                FeatureContainer(
                  color: Pallete.firstSuggestionBoxColor,
                  headerText: 'ChatGPT',
                  discriptionText:
                      "A smarter way to stay organized and informed with ChatGPT",
                ),
                FeatureContainer(
                  color: Pallete.secondSuggestionBoxColor,
                  headerText: 'Dall-E',
                  discriptionText:
                      "Get inspired and stay creative with your personal assistant powered by Dall-E",
                ),
                FeatureContainer(
                    color: Pallete.thirdSuggestionBoxColor,
                    headerText: 'Smart Voice Assistant',
                    discriptionText:
                        "Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT")
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic),
      ),
    );
  }
}
