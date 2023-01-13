import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List qu = [
    "Grand Central Terminal, Park Avenue, New York is the world's",
    "Entomology is the science that studies",
    "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
    "Garampani sanctuary is located at",
    "For which of the following disciplines is Nobel Prize awarded?",
    "Hitler party which came into power in 1933 is known as",
    "FFC stands for",
    "Fastest shorthand writer was",
    "Epsom (England) is the place associated with",
    "First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in",
  ];
  List an = [
    1,
    2,
    2,
    2,
    4,
    2,
    2,
    1,
    1,
    1,
  ];
  List a = [
    "largest railway station",
    "Behavior of human beings",
    "Asia",
    "Junagarh, Gujarat",
    "Physics and Chemistry",
    "Labour Party",
    "Foreign Finance Corporation",
    "Dr. G. D. Bist",
    "Horse racing",
    "1967",
  ];
  List b = [
    "highest railway station",
    "Insects",
    "Africa",
    "Diphu, Assam",
    "Physiology or Medicine",
    "Nazi Party",
    "Film Finance Corporation",
    "J.R.D. Tata",
    "Polo",
    "1968",
  ];
  List c = [
    "longest railway station",
    "The formation of rocks",
    "Europe",
    "Kohima, Nagaland",
    "Literature, Peace and Economics",
    "Ku-Klux-Klan",
    "Federation of Football Council",
    "J.M. Tagore",
    "Shooting",
    "1958",
  ];
  List d = [
    "None of the above",
    "All of the above",
    "Australia",
    "Gangtok, Sikkim",
    "All of the above",
    "Democratic Party",
    "None of the above",
    "Khudada Khan",
    "Snooker",
    "1922",
  ];
  List pr = [
    1000,
    5000,
    10000,
    20000,
    50000,
    75000,
    100000,
    125000,
    150000,
    500000,
  ];
  int i = 0;
  int w=0;
  List ua=[];
  List box=[0,0,0,0,0,0,0,0,0];
  int z=0;
  int x=0;
  int y=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff242A40),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text("Quetion",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                    Text(" ${ua.length+1}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                    Text(" / ${qu.length}",style: TextStyle(color: Colors.white,fontSize: 25)),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(width: 24,height: 5,color: Colors.blue),
                  ),
                  Row(
                   children: ua.map((e) => Padding(
                     padding: EdgeInsets.all(5),
                     child: Container(width: 20,height: 5,color: Colors.blue),
                   )).toList()
                  ),
                  Row(
                      children: box.asMap().entries.map((e) => Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(width: 20,height: 5,color: Colors.white),
                      )).toList()
                  ),
                ],
              ),
              SizedBox(height: 80),
              Center(
                child: Box()
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("${qu[i]}",style: TextStyle(fontSize: 25,color: Colors.white)),
        ),
        SizedBox(height: 35),
        InkWell(
          onTap: () {
            setState(() {
              if(y==0||y==4||y==2||y==3)
                {
                  y=1;
                }
              else
                {
                  y=0;
                }
              z=1;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==1)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffE88331)),
                    alignment: Alignment.center,
                    child: Text("A",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${a[i]}",style: TextStyle(fontSize: 22,color: (y==1)?Color(0xffCEDCE7):Color(0xffE88331))),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==4||y==3)
              {
                y=2;
              }
              else
              {
                y=0;
              }
              z=2;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==2)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffE88331)),
                    alignment: Alignment.center,
                    child: Text("B",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${b[i]}",style: TextStyle(fontSize: 22,color: (y==2)?Color(0xffCEDCE7):Color(0xffE88331))),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==2||y==4)
              {
                y=3;
              }
              else
              {
                y=0;
              }
              z=3;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==3)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffE88331)),
                    alignment: Alignment.center,
                    child: Text("C",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${c[i]}",style: TextStyle(fontSize: 22,color: (y==3)?Color(0xffCEDCE7):Color(0xffE88331))),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==2||y==3)
              {
                y=4;
              }
              else
              {
                y=0;
              }
              z=4;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==4)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffE88331)),
                    alignment: Alignment.center,
                    child: Text("D",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${d[i]}",style: TextStyle(fontSize: 22,color: (y==4)?Color(0xffCEDCE7):Color(0xffE88331))),
              ],
            ),
          ),
        ),
        SizedBox(height: 100),
        Visibility(
          visible: (z!=0)?(qu.length==ua.length)?false:true :false,
          child: InkWell(
            onTap: (){
              setState(() {
                int c=10;
                y=0;
                if(i<qu.length)
                {
                  if(z==an[x])
                    {
                      print(c);
                      ua.add(z);
                      print(ua);
                      Navigator.pushNamed(context, 'Second',arguments: pr[x]);
                      for(c=9;c>=0;c--)
                        {
                          box.remove(c);
                        }
                    }
                  else
                  {
                    ua.add(0);
                    Navigator.pushReplacementNamed(context, 'Third',arguments: (pr[x]==0) ?0 :pr[x-1]);
                    ua.clear();
                  }
                  x++;
                }
                z=0;
              });
              i++;
            },
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color(0xffE88331),borderRadius: BorderRadius.circular(12)),
              child: Text("Submit",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
