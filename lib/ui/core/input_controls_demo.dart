import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget{
  const InputControlsDemo({super.key});
  @override
  State<InputControlsDemo> createState() {
    return _InputControlsDemoState();
  }
}
class _InputControlsDemoState extends State<InputControlsDemo>{
  double rating=50;
  bool isMovieActive= false;
  String? selectedGenre;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 2 - Input Controls'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating (Slider)', style: TextStyle(fontWeight: FontWeight.bold),),
              Slider(
                  value: rating,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (value){
                    setState(() {
                      rating = value;

                    });
                  }),
              Text('Current value: ${rating.toInt()}'),
              const SizedBox(height: 16,),
              const Text('Active (Switch)', style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Expanded(child: Text('Is movie active?'),),
                  Switch(value: isMovieActive, onChanged: (value){
                    setState(() {
                      isMovieActive= value;
                    });
                  })
                ],
              ),
              const Text('Genre (RadioListTile)', style: TextStyle(fontWeight: FontWeight.bold,),),
              RadioGroup<String>(
                groupValue: selectedGenre,
                onChanged: (value) {
                  setState(() {
                    selectedGenre = value;
                  });
                },
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: const Text('Action'),
                      value: 'Action',
                    ),

                    RadioListTile<String>(
                      title: const Text('Comedy'),
                      value: 'Comedy',
                    ),
                  ],
                ),
              ),
              Text('Selected genre: ${selectedGenre??'None'} '),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async{
                      final DateTime? pickedDate= await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2020), lastDate: DateTime(2030));
                      if (pickedDate != null){
                        setState(() {
                          selectedDate=pickedDate;
                        });
                      }
                    },
                    child: const Text('Open Date Picker')),
              )




            ],
          ),
      ),
    );
  }
}