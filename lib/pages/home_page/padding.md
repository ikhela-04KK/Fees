 Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Gap(12),
               Row(
                 children: [
                   const CircleAvatar(),
                   Gap(8),
                   const Text("Unknown User"),
                   Spacer(),
                   Container(
                     padding: EdgeInsets.all(6),
                     decoration: const BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child: const Icon(
                       Icons.settings_outlined,
                       size: 20,
                     ),
                   ),
                   Gap(8),
                   Container(
                     padding: EdgeInsets.all(6),
                     decoration: const BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child: const Icon(
                       Icons.notifications_none,
                       size: 20,
                     ),
                   )
                 ],
               ),
           )
 )
               Gap(24),
               const Text(
                 "Available on card",
                 style: TextStyle(
                   fontSize: 12,
                 ),
               ),
               const Text(
                 "\$13,528.31",
                 style: TextStyle(
                   fontWeight: FontWeight.w900,
                   fontSize: 28,
                 ),
               ),
               Gap(16),
               const Row(
                 mainAxisAlignment:
                     MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Transter Limit"),
                   Text("\$12,000"),
                 ],
               ),
               Gap(6),
               SizedBox(
                 height: 2,
                 child: const LinearProgressIndicator(
                   value: .3,
                   color: Colors.black,
                 ),
               ),
               Gap(6),
               const Text(
                 "Spent \$1,244.65",
                 style: TextStyle(
                   fontSize: 12,
                 ),
               ),
               Gap(16),
               SizedBox(
                 height: 52,
                 child: Row(
                   children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius:
                               BorderRadius.circular(8),
                         ),
                         padding:
                             EdgeInsets.symmetric(vertical: 8),
                         child: Row(
                           mainAxisAlignment:
                               MainAxisAlignment.center,
                           children: [
                             Text(
                               "Pay",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                             Gap(4),
                             Icon(
                               Icons.monetization_on_rounded,
                               color: Colors.white,
                               size: 20,
                             ),
                           ],
                         ),
                       ),
                     ),
                     Gap(8),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius:
                               BorderRadius.circular(8),
                         ),
                         padding:
                             EdgeInsets.symmetric(vertical: 8),
                         child: Row(
                           mainAxisAlignment:
                               MainAxisAlignment.center,
                           children: [
                             Text(
                               "Deposit",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                             Gap(4),
                             Icon(
                               Icons.add_circle,
                               color: Colors.white,
                               size: 20,
                             ),
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ],
           ),
         ),

                        // stack 001 
                         // Stack(
            //   children: [
            //     Positioned.fill(
            //         child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey[100]!,
            //       ),
            //     )),
            //     Positioned(
            //       left: 0,
            //       right: 0,
            //       bottom: 0,
            //       child: Container(
            //         height: 360,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(24),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.grey[300]!,
            //                 blurRadius: 8,
            //                 spreadRadius: 2)
            //           ],
            //         ),
            //         padding: EdgeInsets.all(24),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("Spending Categories"),
            //             Gap(16),
            //             Expanded(
            //               child: GridView.count(
            //                 crossAxisCount: 2,
            //                 mainAxisSpacing: 8,
            //                 crossAxisSpacing: 8,
            //                 children: List.generate(
            //                     5,
            //                     (index) => Container(
            //                           decoration: BoxDecoration(
            //                             color: Colors.grey[100]!,
            //                           ),
            //                         )),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     Expanded(
            //         child: Container(
            //       decoration: BoxDecoration(color: Colors.grey[50]),
            //     )),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(24),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.grey[300]!,
            //                 blurRadius: 8,
            //                 spreadRadius: 2)
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // )


            // bar affiché dans la section operation
            // Center(
            //   // child: Container(
            //   //   height: 4,
            //   //   width: 42,
            //   //   decoration: BoxDecoration(
            //   //     color: Colors.grey[300]!,
            //   //   ),
            //   // ),
            // ),


// a quoi sert  un forgroundColor 

return Scaffold(
  backgroundColor:Colors.white, 
  foregrondColor: Colors.black, 
  elevation:0 
  leading: IconButton(
    onPressed: (){}, 
    icon: Icon(
      Icons.menu, 
    )
  ), 
  actions :[
    IconButton(
      onPressed:(){}, 
      Icon:Icon(
        Ionicons.notificatino_outline,
      )
    ), 
     IconButton(
      onPressed:(){}, 
      Icon:Icon(
        Ionicons.notificatino_outline,
      )
    ), 
  ]
)


   Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(12),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(AppImages.faceAvatar),
                                    ),
                                    Gap(8),
                                    const Text(
                                      "Marc-Ephrem",
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF1F1F1F),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.settings_outlined,
                                        size: 20,
                                        color: Color(0xFF97A3AB),
                                      ),
                                    ),
                                    Gap(8),
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF1F1F1F),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.notifications_none,
                                        size: 20,
                                        color: Color(0xFF97A3AB),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                        ),