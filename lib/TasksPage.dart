import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:log_in_page/models/MyChip.dart';
import 'package:log_in_page/models/TodayTaskModel.dart';
import 'package:log_in_page/models/User.dart';
import './models/WeeklyTaskModel.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        type: MaterialType.transparency,
        child: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          child: ListView(
            children: [
              _buildHeader(),
              _buildWeeklyTasks(),
              _buildTodayTasks(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("source/images/home.png"),
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("source/images/projects.png"),
              color: Colors.black,
            ),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("source/images/calendar.png"),
              color: Colors.black,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("source/images/message.png"),
              color: Colors.black,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("source/images/groups.png"),
               color: Colors.black,
            ),
            label: 'Members'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 87, 124, 255),
        selectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 87, 124, 255),
          
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget _buildHeader() => Container(
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 40),
      child: Row(
        children: [
          Container(
            child: Image.asset('source/images/avatar.png'),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Good Evening!',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                        fontFamily: 'WorkSansLight'),
                  ),
                  Text(
                    'Dan Smith',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 40,
            height: 40,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: Center(
              child: IconButton(
                icon: Image.asset('source/images/search.png'),
                onPressed: null,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 40,
            height: 40,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: Center(
              child: IconButton(
                icon: Image.asset('source/images/notification.png'),
                onPressed: null,
              ),
            ),
          ),
        ],
      ),
    );

Widget _buildWeeklyTasks() => Container(
      child: Column(
        children: [
          _buildHeaderTasks('My Weekly Tasks', '18 Tasks Pending'),
          new Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 240.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildWeeklyTask(
                        WeeklyTaskModel(
                          'Create a Landing Page',
                          'Mon, 12 July 2022',
                          [
                            MyChip(
                              'UI/UX Design',
                              Color.fromARGB(20, 142, 97, 233),
                              Color.fromARGB(255, 142, 97, 233),
                            ),
                            MyChip(
                              'High',
                              Color.fromARGB(20, 233, 97, 97),
                              Color.fromARGB(255, 233, 97, 97),
                            ),
                          ],
                          [
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar2.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                 
                
                          ],
                        ),
                      ),
                      _buildWeeklyTask(
                        WeeklyTaskModel(
                          'Develop a Website',
                          'Mon, 30 July 2022',
                          [
                            MyChip(
                              'Development',
                              Color.fromARGB(20, 255, 160, 17),
                              Color.fromARGB(255, 236, 142, 0),
                            ),
                            MyChip(
                              'Low',
                              Color.fromARGB(20, 97, 233, 143),
                              Color.fromARGB(255, 29, 192, 84),
                            ),
                          ],
                          [
                            new User('source/images/avatar3.png'),
                            new User('source/images/avatar4.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                          ],
                        ),
                      ),
                      _buildWeeklyTask(
                        WeeklyTaskModel(
                          'Create a Landing Page',
                          'Mon, 12 July 2022',
                          [
                            MyChip(
                              'UI/UX Design',
                              Color.fromARGB(20, 142, 97, 233),
                              Color.fromARGB(255, 142, 97, 233),
                            ),
                            MyChip(
                              'High',
                              Color.fromARGB(20, 233, 97, 97),
                              Color.fromARGB(255, 233, 97, 97),
                            ),
                          ],
                          [
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar2.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                          ],
                        ),
                      ),
                      _buildWeeklyTask(
                        WeeklyTaskModel(
                          'Develop a Website',
                          'Mon, 30 July 2022',
                          [
                            MyChip(
                              'Development',
                              Color.fromARGB(20, 255, 160, 17),
                              Color.fromARGB(255, 236, 142, 0),
                            ),
                            MyChip(
                              'Low',
                              Color.fromARGB(20, 97, 233, 143),
                              Color.fromARGB(255, 29, 192, 84),
                            ),
                          ],
                          [
                            new User('source/images/avatar3.png'),
                            new User('source/images/avatar4.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                          ],
                        ),
                      ),
                      _buildWeeklyTask(
                        WeeklyTaskModel(
                          'Develop a Website',
                          'Mon, 30 July 2022',
                          [
                            MyChip(
                              'Development',
                              Color.fromARGB(20, 255, 160, 17),
                              Color.fromARGB(255, 236, 142, 0),
                            ),
                            MyChip(
                              'Low',
                              Color.fromARGB(20, 97, 233, 143),
                              Color.fromARGB(255, 29, 192, 84),
                            ),
                          ],
                          [
                            new User('source/images/avatar3.png'),
                            new User('source/images/avatar4.png'),
                            new User('source/images/avatar1.png'),
                            new User('source/images/avatar1.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );

Widget _buildHeaderTasks(String title, String pending) => Container(
      child: new Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, top: 25, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  Text(
                    pending,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                        fontFamily: 'WorkSansLight'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: IconButton(
                        onPressed: null,
                        iconSize: 72,
                        icon: Image.asset('source/images/settings.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: const VerticalDivider(
                      width: 40,
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: IconButton(
                        onPressed: null,
                        iconSize: 72,
                        icon: Image.asset('source/images/add.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget _buildWeeklyTask(WeeklyTaskModel model) => Container(
      margin: EdgeInsets.only(left: 10),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                  itemCount: model.chips.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildChips(model.chips[index]);
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Text(
              model.title,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'WorkSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: _buildPeoples(model.users, model.users.length - 2),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: _buildDeadline(model.deadLine),
          )
        ],
      ),
    );

Widget _buildTodayTasks() => Container(
      child: Column(
        children: [
          _buildHeaderTasks('Today’s Tasks', '18 Tasks Pending'),
          Column(
            children: [
              _buildTodayTask(
                TodayTaskModel(
                  'Design 2 App Screens',
                  'Mon, 10 July 2022',
                  'Crypto Wallet App',
                  true,
                  [
                    new User('source/images/avatar1.png'),
                    new User('source/images/avatar2.png'),
                    new User('source/images/avatar1.png'),
                    new User('source/images/avatar1.png'),
                  ],
                ),
              ),
              _buildTodayTask(
                TodayTaskModel(
                  'Design Homepage',
                  'Mon, 10 July 2022',
                  'Water Company Website',
                  false,
                  [
                    new User('source/images/avatar3.png'),
                    new User('source/images/avatar4.png'),
                    new User('source/images/avatar1.png'),
                    new User('source/images/avatar1.png'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );

Widget _buildTodayTask(TodayTaskModel model) => Container(
      alignment: Alignment.center,
      height: 130,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: LayoutBuilder(builder: (builder, constraints) {
                          if (model.isComplited) {
                            return Text(
                              model.title,
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 16.0,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          } else {
                            return Text(
                              model.title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }
                        }),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          model.description,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: LayoutBuilder(builder: (builder, constraints) {
                  if (model.isComplited) {
                    return Image.asset('source/images/button_ok.png');
                  }
                  return Text('');
                }),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: const Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Expanded(
                  child: _buildDeadline('Mon, 10 July 2022'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: _buildPeoples(model.users, model.users.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );

//Пусть будет, моя реализация чипс
Widget _buildChips(MyChip model) => Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: model.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Text(
        model.title,
        style: TextStyle(
          color: model.textColor,
        ),
      ),
    );

Widget _buildPeoples(List<User> list, int length) => Container(
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          Container(
            child: Image.asset(list[0].pathAvatar),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.white, width: 3)),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Image.asset(list[1].pathAvatar),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.white, width: 3)),
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('source/images/orange_ellipse.png'),
                Text(
                  '$length+',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.white, width: 3)),
          ),
        ],
      ),
    );

Widget _buildDeadline(String dateTime) => Container(
      child: Row(
        children: [
          Image.asset('source/images/calendar.png'),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              dateTime,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
