import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplifying/screens/job_list/joblist_view.dart';
import 'package:simplifying/widgets/scrolable_column.dart';

class CheckInView extends StatelessWidget {
  const CheckInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff27272E),
      appBar: appBar(),
      body: ScrollableColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        children: [
          checkInDate(),
          const Divider(color: Colors.white),
          checkInLocation(),
          const Divider(color: Colors.white),
          checkInStartsAt(),
          const Spacer(),
          (false) ? checkInAndCheckOutTime() : checkInCircle(),
          const Spacer(),
          otherOptions(),
          const Divider(color: Colors.white),
          iWasNotSupposedTo(),
          iWontBeComing(),
          simplifyingLogo(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text(
        "Check In",
      ),
    );
  }

  Widget checkInDate() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10),
      child: Row(
        children: const [
          Text(
            'Date : ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            '26th Nov 2022',
            style: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget checkInLocation() {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Location : ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Flexible(
            child: Text(
              '65 Front St W,Toronto, ON M5J 1E6',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontSize: 12.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget checkInStartsAt() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: const Center(
        child: Text(
          'Check-In starts at : 08:00:00',
          style: TextStyle(
            color: Color(0xff5956E9),
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget checkInCircle() {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(50),
          shape: const CircleBorder(
            side: BorderSide(width: 5, color: Colors.white),
          ),
          backgroundColor: const Color(0xff5956E9),
        ),
        onPressed: () {
          Get.to(()=>JobListView());
        },
        child: const Text(
          'Log my\nCheck-',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  Widget checkInAndCheckOutTime() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1.0, color: const Color(0xFFFFFFFF)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Checked-In at : ',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'N/A',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Checked-Out at : ',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'N/A',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Total Worked : ',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'N/A',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget otherOptions() {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 10),
      child: const Text(
        'Other options',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w100,
          fontSize: 17,
        ),
      ),
    );
  }

  Widget iWasNotSupposedTo() {
    return Container(
      margin: const EdgeInsets.only(top: 7, right: 20),
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff5956E9),
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(40),
        ),
      ),
      child: const Center(
        child: Text(
          'I was not supposed to be at this job site',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget iWontBeComing() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20),
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff5956E9),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(40),
        ),
      ),
      child: const Center(
        child: Text(
          'I won\'t be coming to work today',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget simplifyingLogo() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: const Image(
        image: AssetImage('assets/images/app_logo_white.png'),
        width: 230,
        height: 50,
      ),
    );
  }
}
