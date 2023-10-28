import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_flutter/calendrier_page.dart';


const d_green = Color(0xFF54D3C2);
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My hotel',
      home:HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_green,
      appBar: MyAppBar(),
      body: SingleChildScrollView(// pour gerer la resolution de l'ecran
        child: Column(
        children: [
          SearchSection(),
          HotelSection(),
        ],
        
      ),
      )
      
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(50);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
         icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[8000],
          size: 20,
           ),
         onPressed:null,
         ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
        ),
        actions: [
          IconButton(
         icon: Icon(
          Icons.favorite_outline_rounded,
          color: Colors.grey[8000],
          size: 20,
           ),
         onPressed:null,
         ),
         IconButton(
         icon: Icon(
          Icons.place,
          color: Colors.grey[8000],
          size: 20,
           ),
         onPressed:null,
         ),
        ],
      centerTitle: true,// centrer le title explore
      backgroundColor: Colors.white,
      );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.grey[200],
            padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left:5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [// widget pour creer de l'ombre
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                              offset: Offset(0, 3)
                            ),
                          ]
                        ),
                        child: TextField(
                          decoration:InputDecoration(
                            hintText: 'Lubumbashi',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ) ,
                        ),
                      )
                      ),
                      SizedBox(
                  width: 10,
                ),
                    Container(// icon de recherche
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [// widget pour creer de l'ombre
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                            ),
                      ),
                      child: ElevatedButton(
                        onPressed:(){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context){
                              return CalendrierPage();
                            },
                            ),
                            );
                        } , 
                        child: Icon(
                          Icons.search,
                          size: 25,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: d_green,
                          ),
                        ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,//aligner la column à gauche
                        children: [
                          Text(
                            'choisi la date',
                            style: GoogleFonts.nunito(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            ),
                          SizedBox(height: 8,),
                          Text(
                            '26 oct - 30 oct',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nombre de chambres',
                            style: GoogleFonts.nunito(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            ),
                          SizedBox(height: 8,),
                          Text(
                            '1 chambre - 2 adultes',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                            ),
                        ],
                      ),
                    ),
                   ],
                )
              ],

            ),
          );
  }
}

class HotelSection extends StatelessWidget {
  final List hotelList=[
    {
      'title': 'Park hotel',
      'place': 'Lubumbashi, Ville',
      'distance': 2,
      'vues':36,
      'picture':'images/hotel1.jpg',
      'price': '150'

    },
     {
      'title': 'Hotel Lubumbashi',
      'place': 'Lubumbashi, Ville',
      'distance': 3,
      'vues':51,
      'picture':'images/hotel2.jpg',
      'price': '120'

    },
     {
      'title': 'guest house anglicane',
      'place': 'Lubumbashi, Bel air',
      'distance': 5,
      'vues':63,
      'picture':'images/hotel3.jpg',
      'price': '110'

    },
     {
      'title': 'benita lodge',
      'place': 'Lubumbashi, Bel air',
      'distance': 4,
      'vues':48,
      'picture':'images/hotel4.jpg',
      'price': '155'

    },
  ];
  //const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child:Column(
              children: [
                Container(
                  height: 50,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,// cree de l'espace entre les deux rows
                    children: [
                      Text(
                        '150 hotels trouvés',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                        'Filtrer',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: null, 
                        icon: Icon(
                          Icons.filter_list_off_outlined,
                          color: d_green,
                          size: 25,
                          )
                        )
                        ],
                      ),
                    ],
                  ) ,
                ),
                Column(
                  children: hotelList.map((hotel) {
                    return HotelCard(hotelData: hotel);
                  }).toList(),
                )
              ],
            ) ,
          );
  }
}
class HotelCard extends StatelessWidget {
  final Map hotelData;
  const HotelCard({super.key, required this.hotelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height:230 ,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3)
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture']
                ),
                fit: BoxFit.cover,// remplir la column de l'image
                )
            ),
            child: Stack(// il va se supperposer au widget 
            children: [
              Positioned(
                top: 5,
                right: -15,// amener l'icone à droite
                child: MaterialButton(
                  color: Colors.white,
                  shape: CircleBorder(),// arrondir l'icon
                  onPressed: (){},
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: d_green,
                    size: 20,
                  ),
                  ),
                )
            ],

            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                  ),
                  ),
                Text(
                  '\$' + hotelData['price'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                  ),
                  ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: d_green,
                        size: 14.0,
                      ),
                      Text(
                        hotelData['distance' ].toString()+ 'km de la ville',
                        style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400
                  ),
                      ),
                    ],
                  ),
                  Text(
                    'per night',
                    style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400
                  ),
                    ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  width:20,
                ),
                Text(
                  hotelData['vues'].toString()+' vues',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}