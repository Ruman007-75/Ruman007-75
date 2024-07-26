import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _descriptionTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home', style: Theme.of(context).textTheme.bodySmall),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                enabled: true,
                decoration: InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  hintText: 'enter your name',
                  hintStyle: TextStyle(
                    color: Colors.green.shade200,
                  ),
                  icon: Icon(Icons.add),
                  prefix: Icon(Icons.search),
                  suffixIcon: TextButton(
                    child: Text('search'),
                    onPressed: (){},
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                  ),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                enabled: true,
                controller: _descriptionTEController,
                maxLines: 5,
                maxLength: 200,
                onTap: (){
                  print('Taped on taxed field');
                },
                onChanged: (String value){
                  print('value');
                },
                decoration: InputDecoration(
                  label: Text('Description'),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  hintText: 'Enter your Description',
                  hintStyle: TextStyle(
                    color: Colors.green.shade200,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                  ),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                enabled: true,

                onChanged: (String value){
                  print('value');
                },
                obscureText: true,
                controller: TextEditingController(// etr dekte pare,update kore,re save kore

                ),
                decoration: InputDecoration(
                  label: Text('Passward'),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  hintText: 'Enter your Passward',
                ),
              ),
              SizedBox(height: 16,),
              TextField(),
              TextButton(onPressed: (){
                //  _descriptionTEController.text= 'Clear';
                _descriptionTEController.clear();
              }, child: Text('Cear description', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                // jodi extra kitchu add kortechi >>copywith (?)pore diye korte hobe
              ),
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}