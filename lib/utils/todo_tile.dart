import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 24),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(), 
          children: [            
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 34, 34, 34),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,        
                checkColor: const Color.fromARGB(255, 34, 34, 34),
                activeColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              const SizedBox(width: 8,),
              Text(
                taskName,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
