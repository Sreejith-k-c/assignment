import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(home: Stag_Grid(),));
}

class Stag_Grid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered GridView"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,//width
              mainAxisCellCount: 4,//height
              child: Container(
                  child: const Center(
                    child:Image(image: NetworkImage("https://images.unsplash.com/photo-1509773896068-7fd415d91e2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80")),
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,//width
              mainAxisCellCount: 4,//height
              child: Container(
                  child: const Center(
                    child:Image(image: NetworkImage("https://images.unsplash.com/photo-1611243017235-84454d0491aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")),
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,//width
              mainAxisCellCount: 5,//height
              child: Container(
                  child: const Center(
                    child:Image(image: NetworkImage("https://images.unsplash.com/photo-1535909339361-ef56e179d637?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")),
                  ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,//width
              mainAxisCellCount: 3,//height
              child: Container(
                  child: const Center(
                    child:Image(image: NetworkImage("https://images.unsplash.com/photo-1613310023042-ad79320c00ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}