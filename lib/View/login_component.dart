
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 70.0,),
          Text("Login",style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.w700,color: Colors.blueGrey[700],letterSpacing: 1.5),),
          SizedBox(height: 60.0,),
          MyContainer(),
          SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Text("Forgot ?",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w500,color: Colors.grey))
              ],
            ),
          ),
          SizedBox(height: 120.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/register');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                       topRight: Radius.circular(40),
                       bottomRight: Radius.circular(40),
                    ),
                    boxShadow: [new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                  child: Text("Register",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w500,color: Colors.red),),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height * 0.15,
        child: Stack(
          children: [
            Container(
                  width: MediaQuery.of(context).size.width*0.9,height: MediaQuery.of(context).size.height * 0.15,
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
                                    const SizedBox(height: 6,),
                                    Divider(color: Colors.grey,height: 1,),
                                    const SizedBox(height: 6,),
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
                                  
                                  ],
                                ),
                              ),
                            ),
                            Positioned(top:MediaQuery.of(context).size.width*0.9 /12  ,right : 18,
                       child: CircleAvatar(radius: 30,backgroundColor: Colors.lightBlueAccent,child:Icon(CupertinoIcons.arrow_right),)),
          ]
        ),
    );
  }
}