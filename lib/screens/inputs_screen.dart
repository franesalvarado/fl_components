import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Francisco',      
      'last_name'  : 'Alvarado',
      'email'      : 'fran@alvarado.com',
      'password'   : '123456',
      'role'       : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CostumInputField(labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
                
                CostumInputField(labelText: 'Apellido', hintText: 'Apellido de usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                
                CostumInputField(labelText: 'Correo', hintText: 'Correo de usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                
                CostumInputField(labelText: 'Contraseña', hintText: 'Contraseña de usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')) ,
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')) ,
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')) ,
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')) ,
                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),

                ElevatedButton(
                  onPressed: (){

                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    };

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  )
                )
          
              ],
            ),
          ),
        )
        )
    );
  }
}

