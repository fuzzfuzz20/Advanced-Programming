import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: '포트폴리오',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('포트폴리오'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.description),
            title: Text('설문조사'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              Navigator.push(
              context,
                MaterialPageRoute(
                  builder: (context)=>ScreenA()
                )
              );
              },
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            title: Text('Game'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>ScreenB()
                )
              );
              },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('학점 계산기'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>ScreenC()
                )
              );
              },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('개발자 정보'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>ScreenD()
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title : Text('설문조사'),
        ),
      body: Column(
          children: [
            Container(
              child: Image.asset('assets/question.gif', height: 550, width: 500,),
            ),
            OutlinedButton(
                child: Text('Next'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>ScreenA2()
                      )
                  );
                }
            ),
          ]
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text('Game'),
      ),
      body: Column(
          children: [
            Container(
              child: Image.asset('assets/game.gif', height: 550, width: 500,),
            ),
            OutlinedButton(
                child: Text('Next'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>ScreenB2()
                      )
                  );
                }
            ),
          ]
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title : Text('학점 계산기'),
        ),
      body: Column(
          children: [
            Container(
              child: Image.asset('assets/calculator.gif', height: 550, width: 800,),
            ),
            OutlinedButton(
              child: Text('Next'),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>ScreenC2()
                  )
              );
            }
            ),
          ]
        ),
      );
  }
}

class ScreenD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text('개발자 정보'),
      ),
      body: Center(
        child : Column(
          children: [
            Container(
              child: Image.asset('assets/university.jpg', height: 300, width: 300,),
            ),
            Text(
            "소프트웨어학과\n2019663053\n백고은\n\n",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            OutlinedButton(
                child: Text('처음으로'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>MyHomePage()
                      )
                  );
                }
            ),
          ]
        ),
      ),
    );
  }
}

class ScreenA2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('설문 조사'),
      ),
      body: Center(
        child: Column(
            children: [
              Text(
                "\n프로젝트 설명 :\n\n이 프로젝트는 반려동물과 유기 동물에 대한 인식을 주제로 한 설문 조사 프로젝트입니다.\nVisual Studio에서 C# 기반의 Window form을 사용해서 프로젝트를 제작하였습니다.\n\n\n\n",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              OutlinedButton(
                  child: Text('처음으로'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>MyHomePage()
                        )
                    );
                  }
              ),
            ]
        ),
      ),
    );
  }
}

class ScreenB2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text('Game'),
      ),
      body: Center(
        child : Column(
          children: [
            Text(
              "\n프로젝트 설명 :\n\n이 프로젝트는 뱀을 피해서 도착 지점에 있는 하트를 먹으면 클리어하는 게임입니다.\nUnity에서 C#을 사용하여 게임 프로젝트를 제작하였습니다.\n\n\n\n",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            OutlinedButton(
                child: Text('처음으로'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>MyHomePage()
                      )
                  );
                }
            ),
          ]
        ),
      ),
    );
  }
}

class ScreenC2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text('학점 계산기'),
      ),
      body: Center(
        child : Column(
          children: [
            Text(
              "\n프로젝트 설명 :\n\n이 프로젝트는 Android Studio에서 제작한 대학교 학점을 계산할 수 있는 학점 계산기 앱입니다.\n\n\n\n\n\n",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            OutlinedButton(
                child: Text('처음으로'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>MyHomePage()
                      )
                  );
                }
            ),
          ]
        ),
      ),
    );
  }
}