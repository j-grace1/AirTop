import 'package:airtop/AllImports.dart';

class sideDrawer extends StatefulWidget {
  const sideDrawer({Key? key}) : super(key: key);

  @override
  State<sideDrawer> createState() => _sideDrawerState();
}

class _sideDrawerState extends State<sideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 5,
                      child: CircleAvatar(
                        radius: 85,
                      )),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'UserName',
                  style: TextStyle(fontSize: Fonts.sectionHeaderFontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
