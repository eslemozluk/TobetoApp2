import 'package:flutter/material.dart';
import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/screens/home_screen/footer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/tobeto-white-logo.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      endDrawer: const CompDrawer(),
      floatingActionButton: buildSpeedDial(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Yetkinlik',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Color.fromRGBO(119, 16, 147, 1)),
                    ),
                    TextSpan(
                      text: 'lerini ücretsiz ölç, ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'bilgi',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Color.fromRGBO(119, 16, 147, 1)),
                    ),
                    TextSpan(
                      text: 'lerini test et. ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(94, 42, 163, 1),
                          Color.fromRGBO(125, 71, 184, 1),
                          Color.fromRGBO(168, 111, 213, 0),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Tobeto İşte Başarı",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          " Modeli",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: '80 soru ile yetkinliklerini',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              TextSpan(
                                text: ' ölç, ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'önerilen eğitimleri',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              TextSpan(
                                text: ' tamamla. ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'rozetini',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              TextSpan(
                                text: ' kazan. ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.6,
                              MediaQuery.of(context).size.height * 0.04,
                            ),
                          ),
                          child: Text(
                            "Raporu Görüntüle",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(90, 71, 184, 1),
                          Color.fromRGBO(98, 78, 189, 1),
                          Color.fromRGBO(93, 73, 184, 0),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Yazılımda Başarı Testi",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Çoktan seçmeli',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'sorular ile teknik',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'bilgini',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              TextSpan(
                                text: ' test et. ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(164, 142, 236, 1),
                      Color.fromRGBO(12, 57, 192, 1)
                    ], // İki renkli gradyan
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  color: Colors.blue, // Renkli kutu rengi
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.playlist_add_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Front End',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Butona tıklanınca yapılacak işlemler
                      },
                      child: Text('Başla'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(164, 142, 236, 1),
                      Color.fromRGBO(12, 57, 192, 1)
                    ], // İki renkli gradyan
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  color: Colors.blue, // Renkli kutu rengi
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.playlist_add_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Full Stack',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Butona tıklanınca yapılacak işlemler
                      },
                      child: Text('Başla'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(164, 142, 236, 1),
                      Color.fromRGBO(12, 57, 192, 1)
                    ], // İki renkli gradyan
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  color: Colors.blue, // Renkli kutu rengi
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.playlist_add_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Back End',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Butona tıklanınca yapılacak işlemler
                      },
                      child: Text('Başla'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(164, 142, 236, 1),
                      Color.fromRGBO(12, 57, 192, 1)
                    ], // İki renkli gradyan
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  color: const Color.fromARGB(
                      255, 75, 33, 243), // Renkli kutu rengi
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.playlist_add_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Microsoft SQL Server',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Butona tıklanınca yapılacak işlemler
                      },
                      child: Text('Başla'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(164, 142, 236, 1),
                      Color.fromRGBO(12, 57, 192, 1)
                    ], // İki renkli gradyan
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  color: Colors.blue, // Renkli kutu rengi
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.playlist_add_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Masaüstü Programlama',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Butona tıklanınca yapılacak işlemler
                      },
                      child: Text('Başla'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 16,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromRGBO(151, 51, 247, 1), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
              ), //********************************************************************************* */

              Text(
                "Aboneliğe Özel",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Color.fromRGBO(119, 16, 147, 1)),
              ),

              Text(
                "değerlendirme araçları için",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Color.fromRGBO(91, 91, 95, 1)),
              ),
              SizedBox(
                height: 20,
              ),
//******************************************************************************************************* */
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(115, 103, 246, 1),
                          Color.fromRGBO(125, 71, 184, 1),
                          Color.fromRGBO(173, 29, 235, 1),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Kazanım Odaklı Testler",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    'Dijital gelişim kategorisindeki eğitimlere başlamadan önce konuyla ilgili bilgin ölçülür ve seviyene göre yönlendirilirsin',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //************************************************************* */
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.55,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(125, 71, 184, 1),
                          Color.fromRGBO(173, 29, 235, 1),
                          Color.fromRGBO(115, 103, 246, 1),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Huawei Talent Interview Teknik Bilgi Sınavı*",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sertifika alabilmen için,',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    'eğitim yolculuğunun sonunda teknik yetkinliklerin ve kod bilgin ölçülür.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    '4400+ soru I 30+ programlama dili  4 zorluk seviyesi',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                        //***************************************** */
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    '*Türkiye Ar-Ge Merkezi tarafından tasarlanmıştır.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
