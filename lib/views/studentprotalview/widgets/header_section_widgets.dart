import 'package:flutter/material.dart';

class HeaderSectionWidgets extends StatelessWidget {
  const HeaderSectionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 380,
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //       image: NetworkImage('https://itmo.ru/file/ensliderpic/93/p93.jpeg'),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Container(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         begin: Alignment.topCenter,
    //         end: Alignment.bottomCenter,
    //         colors: [
    //           Colors.black.withValues(alpha: 0.30),
    //           Colors.black.withValues(alpha: 0.55),
    //         ],
    //       ),
    //     ),
    //     child: SafeArea(
    //       bottom: false,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           //************App Bar***********************************************************
    //           AppBar(
    //             backgroundColor: Colors.transparent,
    //             elevation: 0,
    //             leading: IconButton(
    //               onPressed: () {},
    //               icon: const Icon(Icons.menu, color: Colors.white, size: 30),
    //             ),
    //             actions: [
    //               Stack(
    //                 children: [
    //                   IconButton(
    //                     onPressed: () {},
    //                     icon: const Icon(
    //                       Icons.notifications,
    //                       color: Colors.white,
    //                       size: 32,
    //                     ),
    //                   ),
    //                   Positioned(
    //                     right: 6,
    //                     top: 5,
    //                     child: Container(
    //                       padding: const EdgeInsets.all(5),
    //                       decoration: const BoxDecoration(
    //                         color: Colors.red,
    //                         shape: BoxShape.circle,
    //                       ),
    //                       child: const Text(
    //                         '9+',
    //                         style: TextStyle(color: Colors.white, fontSize: 10),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(width: 12),
    //             ],
    //           ),
    //
    //           const Spacer(),
    //
    //           const Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 30),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   'Welcome,',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 24,
    //                     fontWeight: FontWeight.w600,
    //                   ),
    //                 ),
    //                 Text(
    //                   'Alexandar',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 40,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 Text(
    //                   'Good to see you again!',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //
    //           const SizedBox(height: 22),
    //
    //           //***************Search Bar***************************************
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 20),
    //             child: Container(
    //               height: 55,
    //               decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.circular(16),
    //               ),
    //               child: const TextField(
    //                 decoration: InputDecoration(
    //                   hintText: 'Search something...',
    //                   hintStyle: TextStyle(color: Colors.blueGrey),
    //
    //                   prefixIcon: Icon(
    //                     Icons.search,
    //                     color: Colors.blueGrey,
    //                     size: 24,
    //                   ),
    //                   border: InputBorder.none,
    //                   contentPadding: EdgeInsets.symmetric(vertical: 16),
    //                 ),
    //               ),
    //             ),
    //           ),
    //
    //           const SizedBox(height: 24),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Container(
      height: 380,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://english.spbstu.ru/upload/iblock/21a/1.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            leading: Icon(Icons.menu, size: 32),
            actions: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, size: 30),
                  ),
                  Positioned(
                    top: 9,
                    right: 11,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '9+',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Alexander',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Good to see you again!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 24),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text('Search something...'),
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      prefixIcon: Icon(Icons.search, size: 24),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
