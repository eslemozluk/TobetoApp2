import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/login_screen/password/create_Account.dart';
import 'package:tobeto_app/screens/login_screen/password/forgot_password.dart';
import 'package:tobeto_app/screens/login_screen/logincard.dart';
import 'package:tobeto_app/screens/login_screen/my_button.dart';
import 'package:tobeto_app/screens/login_screen/mytextfield.dart';
import 'package:tobeto_app/screens/login_screen/square_tile.dart';
import 'package:tobeto_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void googleLogin() {}
  void appleLogin() {}

  @override
  Widget build(BuildContext context) {
    void singUserIn() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/color-bacground.png"),
          fit: BoxFit.fill,
        )),
        alignment: Alignment.center,
        child: Logincard(
          theHeight: MediaQuery.of(context).size.width * 1.4,
          theWidth: MediaQuery.of(context).size.height * 0.4,
          theChild: Container(
            child: Column(
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Image.asset("assets/image/tobeto-white-logo.png"),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),

                //Mytextfield.dart sayfasında oluşturdugun constructor'ı çağırıyorum. böylece iki sayfa arasındaki veri aktarımı sağlanıyor

                Mytextfield(
                  controller: usernameController,
                  hintText: "Kullanıcı Adı",
                  obscureText: false,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.02 // mediaquery farklı cihazların çeşitli ekran boyutlarına sahip olması durumunda bile uygulamanın boyutlarını ayarlamak içindirç.iki kutucuk arasındaki yüksekliği düzenledim.
                    ),
                Mytextfield(
                  controller: passwordController,
                  hintText: "Parola",
                  obscureText: true,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                //Text widget'ını yazdıktan sonra kutunun soluna hizalamak istedim, ama 'align' özelliğini kullanamadım. Çünkü çalışmanın başından beri 'center' kullanıyorum. Bu yüzden, 'Text' widget'ını yatayda 'Row' ile sardım ve 'mainAxisAlignment' özelliğini 'end' olarak ayarlayarak 'Card' ile mesafe oluşturmak için 'padding' kullandım
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                        },
                        child: Text(
                          "Şifremi Unuttum",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                MyButton(
                    onTap:
                        singUserIn), // şimdilik bu sayfayı oluşturmadım bu uzden sadece kullanıcı girişi yap diyeceğim. bunun için boş bir fonksiyon oluşturuğ tanımlıyorum.
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                //divider  çizgiyle ayrılmış "Hesap Oluştur"  bir metnin düzenlenmesini sağladı. Bu düzen, metni iki çizgiye ihtiyacım olduğu için driver kullandım row ile sarmallayarak ve genel bir ayrım sağlandı.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CreateAccount()));
                          },
                          child: Text(
                            "Hesap Oluştur",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    fontSize: 20),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                //google + apple button
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: "assets/image/google_logo.png",
                      onTap: googleLogin,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SquareTile(
                        imagePath: "assets/image/apple_logo.png",
                        onTap: appleLogin),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "üye Değilsen,",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " Şimdi Kayıt Ol ",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
