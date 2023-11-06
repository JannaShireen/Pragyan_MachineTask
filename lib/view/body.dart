import 'package:flutter/material.dart';
import 'package:pragyan/view/location_search.dart';
import 'package:pragyan/view/speech_and_therapy.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/children.png'),
              ),
              const Positioned(
                top: 20,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    'Children learn more from what you are \n than what you teach',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // const Card(
          //   elevation: 5,
          //   child: TextField('')
          // )
          LocationSearch(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Our Services',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const Column(children: [
            Row(
              children: [
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-1.png',
                    serviceName: 'Speech & Language ',
                  ),
                ),
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-2.png',
                    serviceName: 'Occupational Therapy',
                  ),
                ),
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-3.png',
                    serviceName: 'Physiotherapy',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-4.png',
                    serviceName: 'ABA Therapy/Behaviour Therapy',
                  ),
                ),
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-5.png',
                    serviceName: 'Special Education',
                  ),
                ),
                Expanded(
                  child: ServiceItem(
                    imageUrl: 'assets/images/service-6.png',
                    serviceName: 'Group Therapy',
                  ),
                ),
              ],
            ),
          ]),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                    'assets/images/children-learning-globe-with-woman-bedroom 1.png'),
              ),
              Positioned(
                bottom: 20,
                left: 5,
                child: SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/fb.png'),
                          const Text(
                            'Pragyan CDC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/insta.png'),
                          const Text(
                            'Pragyan CDC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String imageUrl;
  final String serviceName;

  const ServiceItem({
    super.key,
    required this.imageUrl,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SpeechTherapy()));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              serviceName,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
