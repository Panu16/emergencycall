import 'package:flutter/material.dart';
import 'package:kinkun_app/models/food_list.dart';
import 'package:kinkun_app/views/detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<FoodList> foodListInfo = [
    FoodList(
      name: 'เหตุด่วน-เหตุร้าย',
      mobile: '191',
      image: 'เหตุด่วน เหตุร้าย.png',
    ),
    FoodList(
      name: 'ตำรวจทางหลวง',
      mobile: '1193',
      image: 'ตำรวจทางหลวง.png',
    ),
    FoodList(
      name: 'อุบัติเหตุทางน้ำ',
      mobile: '1196',
      image: 'อุบัติเหตุทางน้ำ.jpg',
    ),
    FoodList(
      name: 'สอบถามข้อมูลจราจร',
      mobile: '1997',
      image: 'สอบถามข้อมูลจราจร.jpg',
    ),
    FoodList(
      name: 'ดับเพลิง',
      mobile: '199',
      image: 'ดับเพลิง.png',
    ),
    FoodList(
      name: 'สอบถามเส้นทาง',
      mobile: '1543',
      image: 'สอบถามเส้นทาง.jpg',
    ),
    FoodList(
      name: 'ตำรวจท่องเที่ยว',
      mobile: '1155',
      image: 'ตำรวจท่องเที่ยว.png',
    ),
    FoodList(
      name: 'กรมทางหลวงชนบท',
      mobile: '1146',
      image: 'กรมทางหลวงชนบท.jpg',
    ),
    FoodList(
      name: 'หน่วยแพทย์ฉุกเฉิน',
      mobile: '1669',
      image: 'หน่วยแพทย์ฉุกเฉิน.png',
    ),
    FoodList(
      name: 'แจ้งรถหาย',
      mobile: '1192',
      image: 'แจ้งรถหาย.png',
    ),
    FoodList(
      name: 'กองปราบปราม',
      mobile: '1195',
      image: 'กองปราบปราม.jpg',
    ),
    FoodList(
      name: 'สถานีร่วมด้วยช่วยกัน',
      mobile: '1677',
      image: 'สถานีร่วมด้วยช่วยกัน.jpg',
    ),
    FoodList(
      name: 'จส.100',
      mobile: '1137',
      image: 'จส.100.png',
    ),
    FoodList(
      name: 'สายด่วนสุขภาพจิต',
      mobile: '1323',
      image: 'สายด่วนสุขภาพจิต.png',
    ),
    FoodList(
      name: 'กรมควบคุมโรค',
      mobile: '1422',
      image: 'กรมควบคุมโรค.png',
    ),
    FoodList(
      name: 'สปสช.',
      mobile: '1330',
      image: 'สปสช..png',
    ),
    FoodList(
      name: 'สำนักนายกรัฐมนตรี',
      mobile: '1612',
      image: 'สำนักนายกรัฐมนตรี.png',
    ),
    FoodList(
      name: 'เลิกบุหรี่',
      mobile: '1612',
      image: 'เลิกบุหรี่.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 140, 0),
        title: Text(
          'Emergency Call',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(
                'assets/images/Emergency.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Color.fromARGB(255, 255, 157, 0),
                  );
                },
                itemCount: foodListInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: foodListInfo[index].name!,
                            mobile: foodListInfo[index].mobile!,
                            image: foodListInfo[index].image!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + foodListInfo[index].image!,
                    ),
                    title: Text(
                      foodListInfo[index].name!,
                    ),
                    subtitle: Text(
                      foodListInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
