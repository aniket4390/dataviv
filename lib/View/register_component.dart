
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRegister extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             // ElevatedButton(onPressed: (){}, child: Text('Login')),
              GestureDetector(
                 onTap: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(40),
                       bottomLeft: Radius.circular(40),
                    ),
                    boxShadow: [new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                  child: Text("login",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w500,color: Colors.red),),
                ),
              )
            ],
          ),
          SizedBox(height: 70.0,),
          Text("Register",style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.w700,color: Colors.blueGrey[700],letterSpacing: 1.5),),
          SizedBox(height: 60.0,),
          MyContainer(),
          SizedBox(height: 120.0,),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height * 0.22,
        child: Stack(
          children: [
            Container(
                  width: MediaQuery.of(context).size.width*0.9,height: MediaQuery.of(context).size.height * 0.22,
                              padding:const EdgeInsets.all(8.0) ,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                ),],
                                borderRadius: BorderRadius.horizontal(
                                  right : Radius.circular(100.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right:60),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder:InputBorder.none ,
                                        icon: Icon(CupertinoIcons.person),
                                        hintText: 'UserName',
                                        // labelText: 'Name *',
                                      ),
                                      validator: (String? value) {
                                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                      },
                                    ),
                                    const SizedBox(height: 6.0),
                                    Divider(color: Colors.grey,height: 1,),
                                    const SizedBox(height: 6.0),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder:InputBorder.none ,
                                        icon: Icon(CupertinoIcons.lock),
                                        hintText: 'Password',
                                        // labelText: 'Name *',
                                      ),
                                      obscureText: true,
                                      validator: (String? value) {
                                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                      },
                                    ),
                                    const SizedBox(height: 6.0),
                                    Divider(color: Colors.grey,height: 1,),
                                    const SizedBox(height: 6.0),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder:InputBorder.none ,
                                        icon: Icon(CupertinoIcons.at),
                                        hintText: 'Email',
                                      ),
                                      validator: (String? value) {
                                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(top:MediaQuery.of(context).size.width*0.9 /6  ,right : 18,
                       child: CircleAvatar(radius: 30,backgroundColor: Colors.lightBlueAccent,child:Icon(CupertinoIcons.check_mark),)),

          ]
        ),
    );
  }
}