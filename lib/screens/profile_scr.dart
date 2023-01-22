import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_43a87006190304/main.dart';
import 'package:uas_43a87006190304/screens/home_scr.dart';
import 'package:uas_43a87006190304/widgets/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(HomePage());
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 33,
                    height: 33,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/gambar.png'),
              radius: 70.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Arnoldus Kono Sasi",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            const Text(
              "43A87006190304",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      "500",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "32k",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "116K",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('About',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Text("NPM: 43A87006190301", style: TextStyle(fontSize: 20)),
                Text("Kelas: S1/TI/7/A/P", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    "Follow",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(140.0, 55.0),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
