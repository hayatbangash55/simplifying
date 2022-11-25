import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplifying/screens/job_list/Joblist_viewmodel.dart';

class JobListView extends StatelessWidget {
  JobListView({super.key});

  final JobListViewModel jobListViewModel = Get.put(JobListViewModel());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return jobListViewModel.onBackPressed(context);
      },
      child: Scaffold(
        appBar: appBar(),
        body: TabBarView(
          controller: jobListViewModel.tabController,
          children: [
            RefreshIndicator(
              color: Theme.of(context).primaryColor,
              child: activeListView(),
              onRefresh: () {
                return Future.delayed(
                  const Duration(milliseconds: 0),
                  () {},
                );
              },
            ),
            RefreshIndicator(
              color: Theme.of(context).primaryColor,
              child: upcomingListView(),
              onRefresh: () {
                return Future.delayed(
                  const Duration(milliseconds: 0),
                  () {},
                );
              },
            ),
            RefreshIndicator(
              color: Theme.of(context).primaryColor,
              child: pastListView(),
              onRefresh: () {
                return Future.delayed(
                  const Duration(milliseconds: 0),
                  () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text(
        "Job List",
      ),
      bottom: TabBar(
        controller: jobListViewModel.tabController,
        unselectedLabelColor: Colors.black,
        labelColor: const Color(0xff5956E9),
        indicatorColor: const Color(0xff5956E9),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
          Tab(
            child: Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Tab(
            child: Text(
              "Upcomming",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Tab(
            child: Text(
              "Past",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomOpacity: 1,
    );
  }

  Widget activeListView() {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: 10,
        itemBuilder: (context, int index) {
          return listViewItem(index);
        },
      ),
    );
  }

  Widget upcomingListView() {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 10,
          itemBuilder: (context, int index) {
            return listViewItem(index);
          },
        ));
  }

  Widget pastListView() {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 10,
          itemBuilder: (context, int index) {
            return listViewItem(index);
          },
        ));
  }

  Widget listViewItem(int index) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 9, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: const Color(0xff5956E9)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(3, 3), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Material(
        color: (index % 2 == 0) ? Colors.white : const Color(0xff5956E9),
        child: InkWell(
          onTap: () {},
          highlightColor: (index % 2 == 0)
              ? Colors.grey.shade400.withOpacity(0.3)
              : Colors.white.withOpacity(0.1),
          splashColor: (index % 2 == 0)
              ? Colors.grey.shade200
              : Colors.white.withOpacity(0.1),
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 8, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Employee Name',
                  style: TextStyle(
                      fontSize: 14,
                      color: (index % 2 != 0)
                          ? Colors.white
                          : const Color(0xff5956E9),
                      fontWeight: FontWeight.w500),
                ),
                Divider(
                  color:
                      (index % 2 != 0) ? Colors.white : const Color(0xff5956E9),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Date :',
                          style: TextStyle(
                            fontSize: 13,
                            color: (index % 2 != 0)
                                ? Colors.white
                                : const Color(0xff5956E9),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            '26 Nov 2022',
                            style: TextStyle(
                              fontSize: 12,
                              color: (index % 2 != 0)
                                  ? Colors.white
                                  : const Color(0xff5956E9),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Time :',
                          style: TextStyle(
                            fontSize: 13,
                            color: (index % 2 != 0)
                                ? Colors.white
                                : const Color(0xff5956E9),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            '10:00 am',
                            style: TextStyle(
                                fontSize: 12,
                                color: (index % 2 != 0)
                                    ? Colors.white
                                    : const Color(0xff5956E9),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  child: Row(
                    children: [
                      Text(
                        'Type :',
                        style: TextStyle(
                          fontSize: 13,
                          color: (index % 2 != 0)
                              ? Colors.white
                              : const Color(0xff5956E9),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Construction',
                          style: TextStyle(
                              fontSize: 12,
                              color: (index % 2 != 0)
                                  ? Colors.white
                                  : const Color(0xff5956E9),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  child: Text(
                    'Company Name',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: (index % 2 != 0)
                          ? Colors.white
                          : const Color(0xff5956E9),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
