type pointListType = {
  point: string,
  subPointList: array<string>,
}

type subListType = {
  subHeader: string,
  pointList: array<pointListType>,
}

type recordType = {
  mainHeader: string,
  subList: array<subListType>,
}

type rec dataType = {
  header: string,
  subList: array<dataType>,
}

type bulletType = Roman | Number | Disc | Circle | None
type decorationType = Bold | Orange | None

type headerListType = {message: string, decorationType: decorationType}

type rec dataType2 = {
  header: list<headerListType>,
  bulletType: bulletType,
  subList: array<dataType2>,
}

type rec tnctype = {
  header: list<headerListType>,
  subList: subListArrayType,
}
and subListArrayType = {
  bulletType: bulletType,
  arrayList: array<tnctype>,
}

let tncList = [
  {
    header: list{},
    subList: {
      bulletType: Roman,
      arrayList: [
        {
          header: list{{message: "Order Booking Details and Modifications", decorationType: None}},
          subList: {
            bulletType: Number,
            arrayList: [
              {
                header: list{{message: "Quotation and Changes", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "The provided quotation is based on the details provided by the customer, including the movement date, pickup and drop location.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "If there are any deviations in the movement date, or pickup and drop location revising the distance a revised quotation will be offered based on the changes.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "For any issues with respect to the revised quotation, the customer is expected to contact Porter customer care directly at",
                          decorationType: None,
                        },
                        {
                          message: " 022 4410 4444 / 022 6268 4444.",
                          decorationType: Bold,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Cancellation", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "Free cancellation is allowed up to 1 hour before the scheduled time slot.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "If the cancellation is made after this timeframe, a cancellation fee will be charged.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Partner Assignment and Details", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "For advance bookings, the partner will be assigned roughly 24 hours before the scheduled time slot.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "The details of the partner will be shared 1 hour prior to the scheduled time slot.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Price and Taxes", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "The price mentioned in the quotation is inclusive of any applicable taxes excluding any toll charges.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "Please note that the price is subject to change based on slot availability at the time of any modification.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Warehousing", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "Warehousing facilities can be provided at an additional cost of Rs. 300 per day, subject to availability.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Waiting Charges", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "This service includes 60 minutes of free loading and unloading time.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "Any extra waiting or Loading/Unloading time will be charged extra at Rs. 3/- per minute.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
            ],
          },
        },
        {
          header: list{{message: "Payment Guidelines", decorationType: None}},
          subList: {
            bulletType: Number,
            arrayList: [
              {
                header: list{{message: "Within City and Outstation Orders", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "Please ensure that following payment terms are followed to facilitate a smooth and hassle-free experience.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: Circle,
                        arrayList: [
                          {
                            header: list{
                              {
                                message: "The remaining amount should be paid to the Partner at the destination once the order is completed.",
                                decorationType: None,
                              },
                            },
                            subList: {
                              bulletType: None,
                              arrayList: [],
                            },
                          },
                          {
                            header: list{
                              {
                                message: "Any Toll charge incurred during the order is not covered ",
                                decorationType: Orange,
                              },
                              {
                                message: "in this service, it has to be separately borne by the customer",
                                decorationType: None,
                              },
                            },
                            subList: {
                              bulletType: None,
                              arrayList: [],
                            },
                          },
                        ],
                      },
                    },
                  ],
                },
              },
            ],
          },
        },
        {
          header: list{{message: "Goods and Items details", decorationType: None}},
          subList: {
            bulletType: Number,
            arrayList: [
              {
                header: list{{message: "Restricted Items", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "The following goods are not acceptable for movement: Construction materials, Agricultural Items, jewellery, arms and ammunition, hazardous materials such as crackers, explosives, chemicals, battery acids, inflammable oils (e.g., diesel, petrol, kerosene, gasoline), narcotics, and counterfeit items.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "Heavy items like Sofa, Almirah, Double Cot can’t be moved in this service",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "Fragile items like Mirrors, Pots, Glasswares can’t be moved in this service",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "Please keep all valuable items like cash and jewelry under your custody before the shifting process begins.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Technical Assistance", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "If any machines, appliances, or electronic gadgets require the technical assistance of the manufacturer or their authorized dealer for locking/unlocking, it is the customer's responsibility to arrange for this assistance.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
            ],
          },
        },
        {
          header: list{{message: "Other important information", decorationType: None}},
          subList: {
            bulletType: Number,
            arrayList: [
              {
                header: list{{message: "Delays and Restricted Entry", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "Due to No Entry Hours in specific cities, restricted movement, festival days, or peak days, there might be delays in the arrival of the vehicle.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "It is essential to be aware of the timings during which external vehicles are allowed inside the premises. Some societies have shifting restrictions in the morning, evening, or on Sundays. Please check with the society before the shifting date.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                    {
                      header: list{
                        {
                          message: "If any permissions are required, the customer should take them in advance from the Resident Welfare Association.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Disputes and Changes", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "Porter will not entertain disputes regarding aspects that are not included in the quote and were not officially communicated to the Porter Support team when changes were made. It is important to get the quote updated accordingly.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
              {
                header: list{{message: "Rope Pulling Requirements", decorationType: None}},
                subList: {
                  bulletType: Disc,
                  arrayList: [
                    {
                      header: list{
                        {
                          message: "This service does not include item movement via Rope Pulling, Customer will have to arrange for it separately.",
                          decorationType: None,
                        },
                      },
                      subList: {
                        bulletType: None,
                        arrayList: [],
                      },
                    },
                  ],
                },
              },
            ],
          },
        },
      ],
    },
  },
]

let newList3 = [
  {
    header: list{{message: "Order Booking Details and Modifications", decorationType: None}},
    bulletType: Roman,
    subList: [
      {
        header: list{{message: "Quotation and Changes", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "The provided quotation is based on the details provided by the customer, including the movement date, pickup and drop location.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "If there are any deviations in the movement date, or pickup and drop location revising the distance a revised quotation will be offered based on the changes.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "For any issues with respect to the revised quotation, the customer is expected to contact Porter customer care directly at",
                decorationType: None,
              },
              {
                message: " 022 4410 4444 / 022 6268 4444.",
                decorationType: Bold,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Cancellation", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "Free cancellation is allowed up to 1 hour before the scheduled time slot.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "If the cancellation is made after this timeframe, a cancellation fee will be charged.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Partner Assignment and Details", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "For advance bookings, the partner will be assigned roughly 24 hours before the scheduled time slot.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "The details of the partner will be shared 1 hour prior to the scheduled time slot.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Price and Taxes", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "The price mentioned in the quotation is inclusive of any applicable taxes excluding any toll charges.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "Please note that the price is subject to change based on slot availability at the time of any modification.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Warehousing", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "Warehousing facilities can be provided at an additional cost of Rs. 300 per day, subject to availability.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Waiting Charges", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "This service includes 60 minutes of free loading and unloading time.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "Any extra waiting or Loading/Unloading time will be charged extra at Rs. 3/- per minute.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
    ],
  },
  {
    header: list{{message: "Payment Guidelines", decorationType: None}},
    bulletType: Roman,
    subList: [
      {
        header: list{{message: "Within City and Outstation Orders", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "Please ensure that following payment terms are followed to facilitate a smooth and hassle-free experience.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [
              {
                header: list{
                  {
                    message: "The remaining amount should be paid to the Partner at the destination once the order is completed.",
                    decorationType: None,
                  },
                },
                bulletType: Circle,
                subList: [],
              },
              {
                header: list{
                  {
                    message: "Any Toll charge incurred during the order is not covered ",
                    decorationType: Orange,
                  },
                  {
                    message: "in this service, it has to be separately borne by the customer",
                    decorationType: None,
                  },
                },
                bulletType: Circle,
                subList: [],
              },
            ],
          },
        ],
      },
    ],
  },
  {
    header: list{{message: "Goods and Items details", decorationType: None}},
    bulletType: Roman,
    subList: [
      {
        header: list{{message: "Restricted Items", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "The following goods are not acceptable for movement: Construction materials, Agricultural Items, jewellery, arms and ammunition, hazardous materials such as crackers, explosives, chemicals, battery acids, inflammable oils (e.g., diesel, petrol, kerosene, gasoline), narcotics, and counterfeit items.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "Heavy items like Sofa, Almirah, Double Cot can’t be moved in this service",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "Fragile items like Mirrors, Pots, Glasswares can’t be moved in this service",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "Please keep all valuable items like cash and jewelry under your custody before the shifting process begins.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Technical Assistance", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "If any machines, appliances, or electronic gadgets require the technical assistance of the manufacturer or their authorized dealer for locking/unlocking, it is the customer's responsibility to arrange for this assistance.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
    ],
  },
  {
    header: list{{message: "Other important information", decorationType: None}},
    bulletType: Roman,
    subList: [
      {
        header: list{{message: "Delays and Restricted Entry", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "Due to No Entry Hours in specific cities, restricted movement, festival days, or peak days, there might be delays in the arrival of the vehicle.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "It is essential to be aware of the timings during which external vehicles are allowed inside the premises. Some societies have shifting restrictions in the morning, evening, or on Sundays. Please check with the society before the shifting date.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
          {
            header: list{
              {
                message: "If any permissions are required, the customer should take them in advance from the Resident Welfare Association.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Disputes and Changes", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "Porter will not entertain disputes regarding aspects that are not included in the quote and were not officially communicated to the Porter Support team when changes were made. It is important to get the quote updated accordingly.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
      {
        header: list{{message: "Rope Pulling Requirements", decorationType: None}},
        bulletType: Number,
        subList: [
          {
            header: list{
              {
                message: "This service does not include item movement via Rope Pulling, Customer will have to arrange for it separately.",
                decorationType: None,
              },
            },
            bulletType: Disc,
            subList: [],
          },
        ],
      },
    ],
  },
]

// let newList2 = [
//   {
//     header: "Order Booking Details and Modifications",
//     subList: [
//       {
//         header: "Quotation and Changes",
//         subList: [
//           {
//             header: "The provided quotation is based on the details provided by the customer, including the movement date, pickup and drop location.",
//             subList: [],
//           },
//           {
//             header: "If there are any deviations in the movement date, or pickup and drop location revising the distance a revised quotation will be offered based on the changes.",
//             subList: [],
//           },
//           {
//             header: "For any issues with respect to the revised quotation, the customer is expected to contact Porter customer care directly at 022 4410 4444 / 022 6268 4444.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Cancellation",
//         subList: [
//           {
//             header: "Free cancellation is allowed up to 1 hour before the scheduled time slot.",
//             subList: [],
//           },
//           {
//             header: "If the cancellation is made after this timeframe, a cancellation fee will be charged.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Partner Assignment and Details",
//         subList: [
//           {
//             header: "For advance bookings, the partner will be assigned roughly 24 hours before the scheduled time slot.",
//             subList: [],
//           },
//           {
//             header: "The details of the partner will be shared 1 hour prior to the scheduled time slot.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Price and Taxes",
//         subList: [
//           {
//             header: "The price mentioned in the quotation is inclusive of any applicable taxes excluding any toll charges.",
//             subList: [],
//           },
//           {
//             header: "Please note that the price is subject to change based on slot availability at the time of any modification.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Warehousing",
//         subList: [
//           {
//             header: "Warehousing facilities can be provided at an additional cost of Rs. 300 per day, subject to availability.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Waiting Charges",
//         subList: [
//           {
//             header: "This service includes 60 minutes of free loading and unloading time.",
//             subList: [],
//           },
//           {
//             header: "Any extra waiting or Loading/Unloading time will be charged extra at Rs. 3/- per minute.",
//             subList: [],
//           },
//         ],
//       },
//     ],
//   },
//   {
//     header: "Payment Guidelines",
//     subList: [
//       {
//         header: "Within City and Outstation Orders",
//         subList: [
//           {
//             header: "Please ensure that following payment terms are followed to facilitate a smooth and hassle-free experience.",
//             subList: [
//               {
//                 header: "The remaining amount should be paid to the Partner at the destination once the order is completed.",
//                 subList: [],
//               },
//               {
//                 header: "Any Toll charge incurred during the order is not covered in this service, it has to be separately borne by the customer",
//                 subList: [],
//               },
//             ],
//           },
//         ],
//       },
//     ],
//   },
//   {
//     header: "Goods and Items details",
//     subList: [
//       {
//         header: "Restricted Items",
//         subList: [
//           {
//             header: "The following goods are not acceptable for movement: Construction materials, Agricultural Items, jewellery, arms and ammunition, hazardous materials such as crackers, explosives, chemicals, battery acids, inflammable oils (e.g., diesel, petrol, kerosene, gasoline), narcotics, and counterfeit items.",
//             subList: [],
//           },
//           {
//             header: "Heavy items like Sofa, Almirah, Double Cot can’t be moved in this service",
//             subList: [],
//           },
//           {
//             header: "Fragile items like Mirrors, Pots, Glasswares can’t be moved in this service",
//             subList: [],
//           },
//           {
//             header: "Please keep all valuable items like cash and jewelry under your custody before the shifting process begins.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Technical Assistance",
//         subList: [
//           {
//             header: "If any machines, appliances, or electronic gadgets require the technical assistance of the manufacturer or their authorized dealer for locking/unlocking, it is the customer's responsibility to arrange for this assistance.",
//             subList: [],
//           },
//         ],
//       },
//     ],
//   },
//   {
//     header: "Other important information",
//     subList: [
//       {
//         header: "Delays and Restricted Entry",
//         subList: [
//           {
//             header: "Due to No Entry Hours in specific cities, restricted movement, festival days, or peak days, there might be delays in the arrival of the vehicle.",
//             subList: [],
//           },
//           {
//             header: "It is essential to be aware of the timings during which external vehicles are allowed inside the premises. Some societies have shifting restrictions in the morning, evening, or on Sundays. Please check with the society before the shifting date.",
//             subList: [],
//           },
//           {
//             header: "If any permissions are required, the customer should take them in advance from the Resident Welfare Association.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Disputes and Changes",
//         subList: [
//           {
//             header: "Porter will not entertain disputes regarding aspects that are not included in the quote and were not officially communicated to the Porter Support team when changes were made. It is important to get the quote updated accordingly.",
//             subList: [],
//           },
//         ],
//       },
//       {
//         header: "Rope Pulling Requirements",
//         subList: [
//           {
//             header: "This service does not include item movement via Rope Pulling, Customer will have to arrange for it separately.",
//             subList: [],
//           },
//         ],
//       },
//     ],
//   },
// ]

let newList = [
  {
    mainHeader: "Order Booking Details and Modifications",
    subList: [
      {
        subHeader: "Quotation and Changes:",
        pointList: [
          {
            point: "The provided quotation is based on the details provided by the customer, including the movement date, pickup and drop location.",
            subPointList: [],
          },
          {
            point: "If there are any deviations in the movement date, or pickup and drop location revising the distance a revised quotation will be offered based on the changes.",
            subPointList: [],
          },
          {
            point: "For any issues with respect to the revised quotation, the customer is expected to contact Porter customer care directly at 022 4410 4444 / 022 6268 4444.",
            subPointList: [],
          },
        ],
      },
      {
        subHeader: "Cancellation",
        pointList: [
          {
            point: "Free cancellation is allowed up to 1 hour before the scheduled time slot",
            subPointList: ["test", "test2"],
          },
          {
            point: "If the cancellation is made after this timeframe, a cancellation fee will be charged.",
            subPointList: [],
          },
        ],
      },
    ],
  },
  {
    mainHeader: "Payment Guidelines",
    subList: [
      {
        subHeader: "Within City and Outstation Orders",
        pointList: [
          {
            point: "The remaining amount should be paid to the Partner at the destination once the order is completed.",
            subPointList: [],
          },
          {
            point: "Any Toll charge incurred during the order is not covered in this service, it has to be separately borne by the customer",
            subPointList: [],
          },
        ],
      },
    ],
  },
]
