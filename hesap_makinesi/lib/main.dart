import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesap Makinesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Hesap(),
    );
  }
}

class Hesap extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget 
{
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> 
{

  num sayi1=0, sayi2=0, sonuc=0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController(); 

  sayiTopla()
  {
    setState(() 
    {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar()
  {
    setState(() 
    {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp()
  {
    setState(() 
    {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol()
  {
    setState(() 
    {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            SizedBox(height:10,),
            ElevatedButton(onPressed: sayiTopla, child: Text("Topla"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: sayiCarp, child: Text("Çarp"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: sayiBol, child: Text("Böl"),),
            SizedBox(height: 10,),
            Text("$sonuc"),
          ],
        ),
      ),
    );
  }
}

  
