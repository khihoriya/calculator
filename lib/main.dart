import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CalcApp(),
  ));
}

class CalcApp extends StatefulWidget {

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {

  String a = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('C A L C A P P', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black,Colors.blueGrey]
              ),
            ),
          )
      ),
      body: Column(
        children: [
          //////1
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 500,
                  color: Colors.blueGrey,
                  child: Text(a, style: TextStyle(fontSize: 40),),
                ),
              ),
            ],
          ),
          //////2
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 325,
                  width: 325,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 4.0, spreadRadius: 0, offset: Offset(2.0,2.0),
                      )
                      ],
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(width: 3,color: Colors.black),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(onTap: () {
                                  setState(() {
                                    getvalue('7');
                                  });
                                }, child: Text('7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,),)
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('8');
                                });
                              }, child: Text('8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('9');
                                });
                              }, child: Text('9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(width: 3,color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(onTap: () {}, child: InkWell(onTap: () { operator('%'); }, child: Text('%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,),),)),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 4,color: Colors.red),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  a='';
                                });
                              }, child: Text('C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('4');
                                });
                              }, child: Text('4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('5');
                                });
                              }, child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,),),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('6');
                                });
                              },  child: Text('6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.blueAccent),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {},
                                child: InkWell(onTap: () { operator('+'); },child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),),),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.blueAccent),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {},
                                child: InkWell(onTap: () { operator('-'); }, child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),),
                            ),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('1');
                                });
                              }, child: Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('2');
                                });
                              }, child: Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('3');
                                });
                              }, child: Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(width: 3,color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(onTap: () {}, child: InkWell(onTap: () { operator('*'); }, child: Text('*',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),)),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(width: 3,color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(onTap: () {}, child: InkWell(onTap: () { operator('~/'); }, child: Text('/',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),)),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('0');
                                });
                              }, child: Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('00');
                                });
                              }, child: Text('00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 3,color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                setState(() {
                                  getvalue('.');
                                });
                              }, child: Text('.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                            Container(margin: EdgeInsets.fromLTRB(0, 8, 0, 0),height: 60,width: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(width: 4,color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(onTap: () {
                                result();
                              }, child: Text('=',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                            ),
                          ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void getvalue(String values) {
    setState(() {
      a = a + values;
    });
  }

  String firstdata = "";
  String secondata = "";

  int cnt = 0;

  void result() {
    setState(() {
      secondata =a;
      a="";

      if(cnt == 1)//add
          {
        int add = int.parse(firstdata) + int.parse(secondata);
        a = add.toString();
      }
      if(cnt == 2)//sub
          {
        int sub = int.parse(firstdata) - int.parse(secondata);
        a = sub.toString();
      }
      if(cnt == 3)//multi
          {
        int multi = int.parse(firstdata) * int.parse(secondata);
        a = multi.toString();
      }
      if(cnt == 4)//divi
          {
        int divi = int.parse(firstdata) ~/ int.parse(secondata);
        a = divi.toString();
      }
      if(cnt == 5)//divi
          {
        int per = int.parse(firstdata) * int.parse(secondata);
        a = per.toString();
      }
    });
  }

  void operator(String k) {
    setState(() {
      firstdata =a;
      a="";

      if(k == '+')
      {
        cnt = 1;
      }
      if(k == '-')
      {
        cnt = 2;
      }
      if(k == '*')
      {
        cnt = 3;
      }
      if(k == '~/')
      {
        cnt = 4;
      }
      if(k == '%')
      {
        cnt = 5;
      }
    });
  }

}
