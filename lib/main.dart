import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok:  38',
            ),
            const Text(
              'Mhs 1:  2317414, Tiara Iffatunadia',
            ),
            const Text(
              'Mhs 2:  2317155, Budi Agung Fajariyanto',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 54, 99),
      ),
      body: Stack( //+ scaffold +child diisi stack
        children: [
          //profil
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  //border: Border.all(),
                  color: Color.fromARGB(255, 0, 54, 99),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              padding:
                  EdgeInsets.only(top: 10, bottom: 100, right: 80, left: 20),
              child: Text(
                'Profil',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          //kotak main
          Positioned(
              top: 80,
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width - 30,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //kolom kiri
                            Container(
                              height: 130,
                              decoration: BoxDecoration(color: Colors.white,),
                              padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 70,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5))),
                                      padding: EdgeInsets.only(bottom: 15, top: 5),
                                      child: Text('Masukkan Foto Profil', style: TextStyle(fontSize: 12), textAlign: TextAlign.center,)),
                                  Container(
                                    width: 100,
                                    height: 20,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 0, 54, 99),
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5))),
                                      //padding: EdgeInsets.all(14),
                                      child: Text('Ubah', style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center,)),
                                ],
                              ),
                            ),
                            //kolom kanan
                            Container(
                              height: 130,
                              decoration: BoxDecoration(color: Colors.white,
                              ),
                              padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nama Panjang', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(14),
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: TextField(decoration: InputDecoration(hintText: 'Masukkan nama lengkap anda', border: InputBorder.none, ), style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //kolom kanan
                            Container(
                              height: 80,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              padding: EdgeInsets.all(2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('NIK', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 400,
                                    height: 35,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: TextField(decoration: InputDecoration(hintText: 'Masukkan NIK anda', border: InputBorder.none, ), style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                    ),
                    Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //kolom kiri
                            Container(
                              height: 80,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tanggal Lahir', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 180,
                                    height: 35,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: TextField(decoration: InputDecoration(hintText: 'DD/MM/YYYY', border: InputBorder.none, prefixIcon: Icon(Icons.calendar_month_outlined)), style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //kolom kanan
                            Container(
                              height: 80,
                              decoration: BoxDecoration(color: Colors.white,
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Gender', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 180,
                                    height: 35,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: DropdownButton <String>(
                                      items: [
                                        DropdownMenuItem <String>(value: "Perempuan", child: Text("Perempuan", style: TextStyle(fontSize: 12),),)
                                      ],
                                      onChanged: (value) {},),
                                    //Text('Masukkan nama lengkap', style: TextStyle(fontSize: 12),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                    //email
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //kolom kanan
                            Container(
                              height: 80,
                              decoration: BoxDecoration(color: Colors.white,
                              ),
                              //padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Email', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 400,
                                    height: 35,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: TextField(decoration: InputDecoration(hintText: 'Masukkan email anda', border: InputBorder.none, ), style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //kolom kanan
                            Container(
                              height: 80,
                              decoration: BoxDecoration(color: Colors.white,
                              ),
                              //padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Alamat Rumah', textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 54, 99), fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 400,
                                    height: 35,
                                    decoration: BoxDecoration(border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                    //padding: EdgeInsets.only(right: 10),
                                    child: TextField(decoration: InputDecoration(hintText: 'Masukkan alamat rumah anda', border: InputBorder.none, ), style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                    ),
                  Center(child: Column(children: [ElevatedButton(onPressed: (){}, child: Text('Simpan', style: 
                  TextStyle(color: Color.fromARGB(255, 0, 54, 99)),))],),),
                  ],
                ),
              )),
              
        ],
      ),
    );
  }

  //jaawaban no 2
  Widget soalNo2() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 247, 207, 28),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: constraints.maxHeight * 0.28,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(220, 247, 207, 28),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.28 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
                child: Card(
                  elevation: 5,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth * 0.8,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Cari pemeriksaan kesehatan",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.03,
                left: constraints.maxWidth * 0.05,
                right: constraints.maxWidth * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image.network(
                      //"https://pbs.twimg.com/profile_images/1741998749348737024/OcdvccPr_400x400.jpg",
                      //width: constraints.maxWidth * 0.4,
                     // height: constraints.maxHeight * 0.09,
                      //fit: BoxFit.fill,
                   // ),
                      Image.asset(
                      'assets/images/prodiaa.png',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxHeight * 0.05,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.shopping_cart,
                      size: constraints.maxHeight * 0.025,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.15,
                left: constraints.maxWidth * 0.11,
                child: Text(
                  'Hai Budi Martami',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.19,
                left: constraints.maxWidth * 0.15,
                child: Text(
                  'Tetap jaga kesehatan ya',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.08,
                right: constraints.maxWidth * 0.13,
                child: 
                Image.asset(
                  'assets/images/dokter.png',
                  width: constraints.maxWidth * 0.25,
                  height: constraints.maxHeight * 0.15,
                  fit: BoxFit.fill,
                ),
                //Image.network(
                 // "data:image/jpeg;base64,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",
                //  width: constraints.maxWidth * 0.25,
                //  height: constraints.maxHeight * 0.15,
                //  fit: BoxFit.fill,
               // ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                left: MediaQuery.of(context).size.width * 0.05,
                child: Text(
                  'Layanan Prodiax',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.48,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.orange,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Cari dan Pesan',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.message,
                            color: Colors.orange,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Chat dengan CS',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.edit_document,
                            color: Colors.orange,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hasil Pemeriksaan',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.65,
                left: MediaQuery.of(context).size.width * 0.05,
                child: ElevatedButton(
                  onPressed: () {
                    print('Tombol ditekan!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * 0.04,
                      horizontal: MediaQuery.of(context).size.width * 0.06,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Color.fromARGB(220, 247, 207, 28),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.orange,
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Text(
                        'Gunakan Kode Rujukan Dokter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.orange,
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 1,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.file_open),
            label: 'Pesanan Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_searching),
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Kontak Kami',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );

  }
}
