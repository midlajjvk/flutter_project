// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: StaggerdGridView(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class StaggerdGridView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: StaggeredGrid.count(
//           crossAxisCount: 4,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           children: [
//             StaggeredGridTile.count(
//               crossAxisCellCount: 2,
//               mainAxisCellCount: 3,
//               child: Container(
//                 color: Colors.blueGrey,
//                 child: Center(
//                   child: Image(
//                     image: AssetImage("assets/images/deadpool.jpg"),
//                   ),
//                 ),
//               ),
//             ),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.orange,
//                   child: Center(
//                       child: Image(
//                     image: AssetImage("assets/images/delhi.jpeg"),
//                     fit: BoxFit.fill,
//                   )),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 2,
//                 child: Container(
//                   color: Colors.yellow,
//                   child: Center(child: Text("yellow")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.purple,
//                   child: Center(child: Text("purple")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 2,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.brown,
//                   child: Center(
//                       child: Image(
//                     image: AssetImage("assets/images/deadpool.jpg"),
//                     fit: BoxFit.fill,
//                   )),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 4,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(child: Text("blue")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 2,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.pink,
//                   child: Center(child: Text("pink")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 2,
//                 mainAxisCellCount: 3,
//                 child: Container(
//                   color: Colors.cyan,
//                   child: Center(child: Text("cyan")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 2,
//                 child: Container(
//                   color: Colors.grey,
//                   child: Center(child: Text("grey")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.lightBlue,
//                   child: Center(child: Text("lightBlue")),
//                 )),
//             StaggeredGridTile.count(
//                 crossAxisCellCount: 1,
//                 mainAxisCellCount: 1,
//                 child: Container(
//                   color: Colors.red,
//                   child: Center(child: Text("red")),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGridViewExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class StaggeredGridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            _buildTile('assets/images/deadpool.jpg', "Deadpool", 2, 3),
            _buildTile('assets/images/deadpool.jpg', 'Deadpool', 2, 2),
            _buildTile('assets/images/deadpool.jpg', 'Deadpool', 2, 2),
            _buildTile('assets/images/deadpool.jpg', 'Deadpool', 2, 2),
            _buildTile('assets/images/deadpool.jpg', 'Deadpool', 2, 2),
            _buildTile('assets/images/deadpool.jpg', 'Deadpool', 2, 2),
          ],
        ),
      ),
       bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),color: Colors.blue,
        notchMargin: 1.0,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.circle_outlined, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(
      String imagePath, String title, int crossAxisCount, int mainAxisCount) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCount,
      mainAxisCellCount: mainAxisCount,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
