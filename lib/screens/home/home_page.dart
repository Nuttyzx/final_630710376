
import 'package:final_630710376/model/city.dart';
import 'package:final_630710376/repositories/City_repository.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? citys; 


  @override
  //  initState() โค้้ดในการ load ข้อมูล
  void initState() { //  initState() ห้ามใช้  async
    super.initState();
    getCitys();
  }


  getCitys() async {

      var citys = await CityRepository().getCitys();

      debugPrint('Number of city: ${citys.length}');

      setState(() {
        citys = citys;
      });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly, // จัดการจัดวางให้อยู่ตรงกลาง
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  child: Text('Bangkok'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  child: Text('Paris'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  child: Text('Nakhon Pathom'),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bangkok',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.w900),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Thailand',style: TextStyle(color: Colors.black87,fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('2023-10-26 09:00',style: TextStyle(color: Colors.black26,fontSize: 12.0,fontWeight: FontWeight.normal),),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.brightness_7,
                    //_citys.id,
                    size: 100.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Partly Cloudy',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('29',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.w900),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Feels like 34.7',style: TextStyle(color: Colors.black26,fontSize: 12.0,fontWeight: FontWeight.normal),),
                  ],
                ),

                //Text('°C',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                //Text('°F',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),

              ],
            ),

            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly, // จัดการจัดวางให้อยู่ตรงกลาง
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  icon: Icon(Icons.water_drop),
                  label: Text('HUMIDITY'),

                ),
                TextButton.icon(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  icon: Icon(Icons.air),
                  label: Text('WIND'),
                ),
                TextButton.icon(
                  onPressed: () {
                    // ทำอะไรเมื่อปุ่มถูกกด
                  },
                  icon: Icon(Icons.sunny),
                  label: Text('UV'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


