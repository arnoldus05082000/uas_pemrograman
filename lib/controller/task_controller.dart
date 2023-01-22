import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uas_43a87006190304/models/task.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:uas_43a87006190304/db/sqflite_db.dart';
import 'package:uas_43a87006190304/widgets/notif.dart';

class TaskController extends GetxController {
  RxList taskList = <Task>[].obs;
  DBHelper dbHelper = DBHelper();

  Future<void> getTasks() async {
    final tasks = await dbHelper.query();

    taskList.assignAll(tasks.map((e) => Task.fromMap(e)).toList());

    update();
  }

  void addTask({required Task? task}) async {
    await dbHelper.insert(task);
    getTasks();
  }

  void deletetask({required Task task}) async {
    await dbHelper.delete(task.id!);
    getTasks();
  }

  void markTaskAsCompleted({required Task task}) async {
    var value = await dbHelper.update(task.id!);
    getTasks();
  }

  void deleteAllTask() async {
    await NotifyHelper.cancelAllNotififcation();
    await dbHelper.deleteAll();
    taskList.clear();
    update();
  }
}
