import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Object cube;
  //late Object earth;

  @override
  void initState() {
    cube = Object(fileName: "assets/cube/cube.obj");
    //earth = Object(fileName: "assets/astronaut/earth.obj");
    //earth.rotation.setValues(0, 90, 0);
    //earth.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Vikings 2022',

        ),
      ),

      body: Container(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(cube);
                  scene.camera.zoom= 5;

                },
              ),
            ),
            /*Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(cube);

                  scene.camera.zoom = 5;
                },
              ),
            ),*/


    );
  }
}
