import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mountain_trip_api/data/fake_data.dart';
import 'package:mountain_trip_api/misc/colors.dart';
import 'package:mountain_trip_api/pages/SignIn_SignUpPage/SignInScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> indexPage = [0, 1, 2];

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        itemCount: 3,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Image(
                  image: AssetImage(FakeData().HomeScreen[index]),
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 5.5),
                        Text(
                          'Trips',
                          style: TextStyle(
                            color: AppColors.bigTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          'Discover',
                          style: TextStyle(
                            color: AppColors.textColor2,
                            fontSize: 38,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Mountain hikes give you an incredible',
                          style: TextStyle(
                            color: AppColors.textColor2.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'pleasure of courage and conquer',
                          style: TextStyle(
                            color: AppColors.textColor2.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor,
                              image: DecorationImage(
                                image: AssetImage('assets/img/button-one.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 5),
                      Column(
                        children: indexPage.map((e) {
                          if (e != index) {
                            return Container(
                              margin: const EdgeInsets.only(top: 3),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainColor.withOpacity(0.5),
                              ),
                            );
                          }
                          return Container(
                            height: 40,
                            width: 10,
                            margin: const EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
