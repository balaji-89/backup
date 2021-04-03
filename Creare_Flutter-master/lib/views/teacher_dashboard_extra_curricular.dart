import 'package:Creare_Flutter/models/extra_curricular_data.dart';
import 'package:Creare_Flutter/screens/extra_curriculars_details_screen.dart';
import 'package:Creare_Flutter/widgets/extra_curricular_grid.dart';
import 'package:flutter/material.dart';

class TeacherDashboardExtraCurricular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: EXTRA_CURRICULARS.length,
      itemBuilder: (context, index) => ExtraCurricularGrid(
        EXTRA_CURRICULARS[index].title,
        EXTRA_CURRICULARS[index].imageUrl,
        () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => ExtraCurricularsDetailsScreen(
              title: EXTRA_CURRICULARS[index].title,
              topics: EXTRA_CURRICULARS[index].topics,
            ),
          ),
        ),
      ),
    );
  }
}
