import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import 'package:flutter/widgets.dart';
// import 'package:flutter_application_2/culculetor_Aplitication.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: myapp()),
  );
}

class ooo extends StatefulWidget {
  const ooo({super.key});

  @override
  State<ooo> createState() => _oooState();
}

class _oooState extends State<ooo> {
  @override
  Widget build(BuildContext context) {
    return MyApp0();
  }
}

class MyApp0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 10, 208, 235),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(137, 83, 82, 82),
            title: Text(
              'Wolf.com',
              style: TextStyle(color: Colors.white),
            )),
        body: Column(
          children: [
            Image(
              image: AssetImage('images/kk.jpg'),
              fit: BoxFit.cover,
              height: 488,
              width: double.infinity,
            ),
            Text(
              'برای رفتن به وبسایت رسمی ما بالای دکمه ذیل کلیک کنید',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _launchURL(
                      'https://www.bing.com/search?q=wolf&cvid=d00f9c91899b488f9d3b8f330336c014&gs_lcrp=EgRlZGdlKgYIABBFGDkyBggAEEUYOTIGCAEQABhAMgYIAhAuGEAyBggDEAAYQDIGCAQQABhAMgYIBRAAGEAyBggGEC4YQDIGCAcQABhAMgYICBAuGEDSAQkxMDQzOWowajGoAgiwAgE&FORM=ANSPA1&PC=U531'); // URL مورد نظر
                },
                child: Text(
                  'رفتن به وبسایت',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url); // باز کردن URL
  } else {
    throw 'آدرس $url قابل باز شدن نیست';
  }
}

// myapp

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x();
  }

  x() async {
    await Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (f) => myapp1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.green,
      borderOnForeground: true,
      shape: CircleBorder(),
      color: Color.fromARGB(255, 7, 206, 34),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to program .Wolf',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Coding .Wolf',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 80,
                  backgroundImage: AssetImage('images/00.jpg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '.Wolof <<10>>',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '1.43.0.Wolf.01',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '''          Ten Form Famous Wolfs at World

         Creator : Najib Ullah Eskandary.<<W>>
                ''',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.flip_camera_android,
                color: Color.fromARGB(255, 238, 222, 222),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// myapp1

class myapp1 extends StatefulWidget {
  const myapp1({super.key});

  @override
  State<myapp1> createState() => _myapp1State();
}

class _myapp1State extends State<myapp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Share.share('ali');
                      });
                    },
                    child: Text(
                      'اشتراک گذاری برنامه',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (oo) => myapp150()));
                      });
                    },
                    child: Text(
                      'در باره ما',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      SystemNavigator.pop();
                    });
                  },
                  child: Text(
                    'خروج',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ];
            },
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text("List Of Wolfs"),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Image(
                image: AssetImage(
                  'images/0000.jpg',
                ),
                fit: BoxFit.cover),
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "1:بزرگترین گرگ ها",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/wolf.jpg',
              ),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp2()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "2:هوشیار ترین گرگ ها",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/2.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp4()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "3:زیبا ترین گرگ ها",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/3.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => myapp5()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "4:قوی ترین گرگ ها",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/4.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp6()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "5:گرگ های رام نشدنی",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/5.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp7()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "6:گرگ های سیاه",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/6.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => myapp8()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "7:گرگ های سفید",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/7.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp9()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "8:گرگ های اسکی",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/8.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (x) => myapp10()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "9:گرگ های کانگال",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/9.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => myapp11()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "10:گرگ های امریکایی",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/10.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => myapp12()));
              });
            },
          ),
          SizedBox(
            height: 3,
          ),
          ListTile(
            leading: Icon(Icons.star_border_sharp),
            tileColor: Color.fromARGB(255, 56, 247, 18),
            title: Center(
              child: Text(
                "در باره برنامه",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 252, 5, 5)),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.black,
              size: 20,
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => myapp13()));
              });
            },
          ),
        ],
      ),
    );
  }
}
//W1

class myapp2 extends StatefulWidget {
  const myapp2({super.key});

  @override
  State<myapp2> createState() => _myapp2State();
}

class _myapp2State extends State<myapp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/p.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 500,
          ),
          Text(
            '''            گرگ های روسیه به عنوان بزرگترین گرگ های جهان شناخته شده است 
            
          که وزن آن ها تا به 200کیلو می رسد از لحاظ قد از سر تا دم تا به 180 سانتی می 
                     
                       رسداین گونه گرگ ها به نودرت پیدا می شود ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(130, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),

        
        ],
      ),
    );
  }
}

//W2
class myapp3 extends StatefulWidget {
  const myapp3({super.key});

  @override
  State<myapp3> createState() => _myapp3State();
}

class _myapp3State extends State<myapp3> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//buton of appbar.---------------------

// هوشیار ترین-----------------------------------
class myapp4 extends StatefulWidget {
  const myapp4({super.key});

  @override
  State<myapp4> createState() => _myapp4State();
}

class _myapp4State extends State<myapp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 601,
          ),
          Text(
            '''            گرگ های ژرمن به عنوان هوشیار ترین گرگ های جهان شناخته شده است 
            
          که وزن آن ها تا به 100کیلو می رسد از لحاظ قد از سر تا دم تا به 100 سانتی می 
                     
    رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند که به خاطر همین در
                             
                              نظام استفاده می شوند و به نودرت پیدا می شود
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 201,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//زیباترین گرگ ها

class myapp5 extends StatefulWidget {
  const myapp5({super.key});

  @override
  State<myapp5> createState() => _myapp5State();
}

class _myapp5State extends State<myapp5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.blue,
            child: Image.asset(
              'images/3.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 400,
            ),
          ),
          Text(
            '''            گرگ های لوورس به عنوان زیبا ترین گرگ های جهان شناخته شده است 
            
          که وزن آن ها تا به 80 کیلو می رسد از لحاظ قد از سر تا دم تا به 90 سانتی می 
                     
                رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند ولی در
                             
                                               نظام استفاده نمی شوند 
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 51,
                width: 100,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//قوی ترین گرگ ها

class myapp6 extends StatefulWidget {
  const myapp6({super.key});

  @override
  State<myapp6> createState() => _myapp6State();
}

class _myapp6State extends State<myapp6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue,
            child: Image.asset(
              'images/4.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 400,
            ),
          ),
          Text(
            '''            گرگ های استرونگ  به عنوان قدرتمند ترین گرگ های جهان شناخته شده است 
            
          که وزن آن ها تا به 150کیلو می رسد از لحاظ قد از سر تا دم تا به 160 سانتی می 
                     
    رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند و بیشتر آنها در مناطق
                             
                              کوهستانی زنده گی می کنند  و به نودرت پیدا می شود
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//گرگ ها رام نشدنی

class myapp7 extends StatefulWidget {
  const myapp7({super.key});

  @override
  State<myapp7> createState() => _myapp7State();
}

class _myapp7State extends State<myapp7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '!تنها نژادی است که هیچ بشری تا اکنون آن را نتوانسته رام کند',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/5.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''         گرگ های رام نشدنی به عنوان محبوب ترین و پر طرفدار ترین گرگ های جهان 
          
                            شناخته شده است از لحاظ قد از سر تا دم تا به 120 سانتی می 
                  
                    رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند و بیشتر
                             
                  در مناطق کوهستانی وحنگلات زنده گی می کنند  و به نودرت پیدا می شود
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(130, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//گرگ های سیاه
class myapp8 extends StatefulWidget {
  const myapp8({super.key});

  @override
  State<myapp8> createState() => _myapp8State();
}

class _myapp8State extends State<myapp8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/6.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''              گرگ های سیاه: این نوع گرگ ها به طور کامل دارای رنگ سیاه اند 
            
          که وزن آن ها تا به 50کیلو می رسد از لحاظ قد از سر تا دم تا به 110 سانتی می 
                     
                رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند و بیشتر آنها
                 
                در مناطق کوهستانی زنده گی می کنند  و در شب زیاد قابل دیدن نیستن 
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//گرگ های سفید

class myapp9 extends StatefulWidget {
  const myapp9({super.key});

  @override
  State<myapp9> createState() => _myapp9State();
}

class _myapp9State extends State<myapp9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/7.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''               گرگ های سفید: این نوع گرگ ها به طور کامل دارای رنگ سفید اند 
            
          که وزن آن ها تا به 50کیلو می رسد از لحاظ قد از سر تا دم تا به 100 سانتی می 
                     
                رسداین گونه گرگ ها دارای هوش و حس بویایی خیلی قوی اند و بیشتر آنها
                 
              در مناطق کوهستانی و سرد زنده گی می کنند  و  زیاد دیده نمی شوند 
                              
                               ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// اسکی گرگها

class myapp10 extends StatefulWidget {
  const myapp10({super.key});

  @override
  State<myapp10> createState() => _myapp10State();
}

class _myapp10State extends State<myapp10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/8.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''
            گرگ های اسکی دارای رنگ خاکستری وسفید اند ودارای چشم های بسیارزیبا اند 
            
                      که وزن آن ها تا به 70کیلو می رسد از لحاظ قد از سر تا دم تا به 80 سانتی 
                     
                      می رسداین گونه گرگ ها معمولا در خانه ها نگهداری می شود 
                       
                        این گونه گرگ ها معمولا در مناطق  سرد بیشتر اند ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//گرگ های کانگال

class myapp11 extends StatefulWidget {
  const myapp11({super.key});

  @override
  State<myapp11> createState() => _myapp11State();
}

class _myapp11State extends State<myapp11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/9.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''
            گرگ های کانگال دارای رنگ خاکستری اند ودارای قدرت جسامت بسیارزیا اند 
            
                      که وزن آن ها تا به 80کیلو می رسد از لحاظ قد از سر تا دم تا به 90 سانتی 

                     رسده است این گونه گرگ ها معمولا در جنگل  ها زنده گی می می کنند 
                       
                        این گونه گرگ ها معمولا در مناطق  کشور هند پیدا می شوند ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//گرگ های امریکایی

class myapp12 extends StatefulWidget {
  const myapp12({super.key});

  @override
  State<myapp12> createState() => _myapp12State();
}

class _myapp12State extends State<myapp12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/10.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''
                           گرگ های امریکایی دارای قدرت جسامت خویی اند 
            
         که وزن آن ها تا به 50کیلو می رسد از لحاظ قد از سر تا دم تا به 90 سانتی 

         رسده است این گونه گرگ ها معمولا در جنگل  ها زنده گی می می کنند 
                       
               این گونه گرگ ها معمولا در مناطق  کشور امریکا پیدا می شوند ''',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (d) => ooo()));
              });
            },
            child: Card(
              color: Color.fromARGB(137, 205, 152, 240),
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "اطلاعات بیشتر",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 15, 226, 0.836),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Color.fromARGB(137, 205, 152, 240)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// در باره برنامه

class myapp13 extends StatefulWidget {
  const myapp13({super.key});

  @override
  State<myapp13> createState() => _myapp13State();
}

class _myapp13State extends State<myapp13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 53, 52, 52),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/ppp.jpg',
            fit: BoxFit.contain,
            width: double.infinity,
            height: 400,
          ),
          Text(
            '''
                این برنامه دارای اطلاعاتی در مورد ده گرگ مشهور دنیا می باشد
            
                     .که هر کدام به شکل خلاسه توضیع داده شده است

                 ''',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: GestureDetector(
              onTap: () {},
              child: Card(
                color: Colors.white,
                child: Container(
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          backgroundColor: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///در باره ما
class myapp150 extends StatefulWidget {
  const myapp150({super.key});

  @override
  State<myapp150> createState() => _myapp14State();
}

class _myapp14State extends State<myapp150> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 155, 153, 153),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Image(
            image: AssetImage('images/100.jpg'),
            fit: BoxFit.cover,
            height: 400,
            width: double.infinity,
          ),
          Text(
            '''
                  سازنده این برنامه شخصی به نام نجیب الله 
                   اسکندری است این شخص در سال 2005 در 
                  هرات متولد شده  توسط ابزاری به  نام فلاتر 
                    ا ین برنامه معلوماتی را ساخته است''',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
