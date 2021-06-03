import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freelancer_project/models/blog_model.dart';

class BlogSection extends StatefulWidget {
  @override
  _BlogSectionState createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
  List<BlogModel> bloglist;

  @override
  void initState() {
    bloglist = [
      BlogModel(
        title: '1950 Black & Whiye Award-Winning TV-Shows',
        date: 'Jun 27, 2019',
        readTime: '2 min read',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout…',
        imgur: 'assets/images/card-box5.png',
      ),
      BlogModel(
        title: '1950 Black & Whiye Award-Winning TV-Shows',
        date: 'Jun 27, 2019',
        readTime: '2 min read',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout…',
        imgur: 'assets/images/card-box4.png',
      ),
      BlogModel(
        title: '1950 Black & Whiye Award-Winning TV-Shows',
        date: 'Jun 27, 2019',
        readTime: '2 min read',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout…',
        imgur: 'assets/images/card-box5.png',
      ),
      BlogModel(
        title: '1950 Black & Whiye Award-Winning TV-Shows',
        date: 'Jun 27, 2019',
        readTime: '2 min read',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout…',
        imgur: 'assets/images/card-box4.png',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.only(top: 12),
      crossAxisCount: 4,
      mainAxisSpacing: 24,
      crossAxisSpacing: 12,
      itemCount: bloglist.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                bloglist[index].imgur,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bloglist[index].title,
                  style: TextStyle(
                    fontSize: 11.94,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  '${bloglist[index].date}·${bloglist[index].readTime}',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 10.61,
                    color: Colors.black,
                    wordSpacing: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bloglist[index].description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 11.94,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      label: Text('Read More'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
    );
  }
}
