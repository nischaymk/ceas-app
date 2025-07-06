import 'package:flutter/material.dart';

class FormerAffiliatePage extends StatelessWidget {
  const FormerAffiliatePage({super.key});

  final List<Map<String, String>> members = const [
    {'name': 'Chaitali Das','image': 'assets/images/affiliates/chaitali.png'},
    {'name': 'Humsika Srikanth ','image': 'assets/images/affiliates/humsika.png'},
    {'name': 'Neenu Stanly', 'image': 'assets/images/affiliates/neenu.png'},
    {'name': 'Tanvi Kaur ', 'image': 'assets/images/affiliates/tanvikaur.png'},
    {'name': 'Nidhi Gururaj  ','image': 'assets/images/affiliates/nidhi.png'},
    {'name': 'B S Varshaa', 'image': 'assets/images/affiliates/varshaa.png'},
    {'name': 'Oindrila Mukherjee', 'image': 'assets/images/affiliates/oindrila.png'},
    {'name': 'Josna Mathew', 'image': 'assets/images/affiliates/josna.png'},
    {'name': 'Shrestha Medhi','image': 'assets/images/affiliates/shreshta.png'},
    {'name': 'Jashanpreet Randhawa','image': 'assets/images/affiliates/jashanpreet.png'},
    {'name': 'Renee Vincent','image': 'assets/images/affiliates/renee.png'},
    {'name': 'Sejal Sharma','image': 'assets/images/affiliates/sejal.png'},
    {'name': 'Divyansh Singhal','image': 'assets/images/affiliates/divyansh.png'},
    {'name': 'Goutham Sankar P','image': 'assets/images/affiliates/goutham.png'},
    {'name': 'Kartik Aggarwal','image': 'assets/images/affiliates/karthik.png'},
    {'name': 'Shreyas Vijay Nair','image': 'assets/images/affiliates/shreyas.png'},
    {'name': 'Praveen Krishna','image': 'assets/images/affiliates/praveen.png'},
    {'name': 'Parvathy K C','image': 'assets/images/affiliates/parvathy.png'},
    {'name': 'Fedhuwa N P','image': 'assets/images/affiliates/fedhu.png'},
    {'name': 'Rose Paul','image': 'assets/images/affiliates/rose.png'},
    {'name': 'Jefin Jerry','image': 'assets/images/affiliates/jefin.png'},
    {'name': 'Femina Banu','image': 'assets/images/affiliates/femina.png'},
    {'name': 'Vishesh Sharma','image': 'assets/images/affiliates/vishesh.png'},
    {'name': 'Niharika Jacob','image': 'assets/images/affiliates/niharika.png'},
    {'name': 'Maanav Kejriwal','image': 'assets/images/affiliates/maanav.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Former Research Affiliates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: members.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final member = members[index];
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    member['image']!,
                    height: 140,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  member['name']!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
