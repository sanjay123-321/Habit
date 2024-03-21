import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';

class CreateHabit extends StatefulWidget {
  const CreateHabit({Key? key});

  @override
  State<CreateHabit> createState() => _CreateHabitState();
}

class _CreateHabitState extends State<CreateHabit> {
  late TextEditingController titleController;
  late ExpansionTileController controller;
  double width = 0.0;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    controller = ExpansionTileController();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.93;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              automaticallyImplyLeading: true,
              expandedHeight: 150,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Create Habit",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                color: themeBlackColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                controller: titleController,
                cursorColor: themeBlueColor,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: blackColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blackColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: textFieldBgColor,
                  hintText: 'Title',
                  hintStyle: TextStyle(color: textFieldTextColor),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15.0),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                color: Color(0xFF161618),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Color",
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ExpansionTile(
              collapsedBackgroundColor: Color(0xFF161618),
              backgroundColor: Color(0xFF161618),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                    if (isExpanded) {
                      controller.expand();
                    } else {
                      controller.collapse();
                    }
                  });
                },
                child: Switch(
                  value: isExpanded,
                  onChanged: (value) {
                    setState(() {
                      isExpanded = value;
                      if (isExpanded) {
                        controller.expand();
                      } else {
                        controller.collapse();
                      }
                    });
                  },
                  activeColor: themeBlueColor,
                ),
              ),
              onExpansionChanged:
                  null, // Disable expansion by clicking the tile
              controller: controller,
              title: const Text(
                'Repeat',
                style: TextStyle(color: whiteColor),
              ),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24),
                  child: const Text(
                    'ExpansionTile Contents',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }
}
