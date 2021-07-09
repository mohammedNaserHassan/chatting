import 'package:chatting/Taps/chat_screen.dart';
import 'package:chatting/View/constants.dart';
import 'package:chatting/components/textfield.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
class Sign_up extends StatefulWidget {
  Sign_up();

  @override
  _Sign_upState createState() => _Sign_upState();
}
enum SingingCharacter { Male, Female }
class _Sign_upState extends State<Sign_up> {
  var bbm=1;
  String _country;
  var x = TextEditingController();
  var y = TextEditingController();
  String birthDateInString;
  DateTime birthDate;
  bool isDateSelected=false;
  int value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            body:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      my_textfield(label: 'First Name',hint:'Enter F Name ',bo: false),
                      my_textfield(label: 'Second Name',hint:'Enter S Name ',bo: false),
                      my_textfield(label: 'Last Name',hint:'Enter L Name ',bo: false),
                      my_textfield(label: 'Password',hint:'Enter Password ',bo: true,textEditingController: x),
                      my_textfield(label: 'Confirm Passord',hint:'Confirm ',bo: true,textEditingController: y),
                      Container(margin: EdgeInsets.only(right: 300),child: Text('Sex:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),

                      RadioListTile(
                        value: 1,
                        groupValue: value,
                        onChanged: (ind) => setState(() => value = ind),
                        title: Text("Male"),
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: value,
                        onChanged: (ind) => setState(() => value = ind),
                        title: Text("Femal"),
                      ),

                      GestureDetector(
                          child:  Container(
                              color: kPrimaryColor,
                              child: Text('Select Birthday',style: TextStyle(fontSize: 20),)),
                          onTap: ()async{
                            final datePick= await showDatePicker(
                                context: context,
                                initialDate: new DateTime.now(),
                                firstDate: new DateTime(1900),
                                lastDate: new DateTime(2100)
                            );
                            if(datePick!=null && datePick!=birthDate){
                              setState(() {
                                birthDate=datePick;
                                isDateSelected=true;

                                birthDateInString = "${birthDate.day}/${birthDate.month}/${birthDate.year}"; // 08/14/2019

                              });
                            }
                          }
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.5),
                            shape: BoxShape.rectangle
                        ),
                        child: Text('Your Birthday is: ${birthDateInString}')

                      ),


                      Container(
                        color: kPrimaryColor,
                        child: TextButton(
                          onPressed: () {
                            showCountryPicker(
                              context: context,
                              exclude: <String>['KN', 'MF'],
                              showPhoneCode: false,
                              onSelect: (Country country) {
                                _country=country.displayName;

                              },
                              // Optional. Sets the theme for the country list picker.
                              countryListTheme: CountryListThemeData(
                                // Optional. Sets the border radius for the bottomsheet.
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                // Optional. Styles the search field.
                                inputDecoration: InputDecoration(
                                  labelText: 'Search',
                                  hintText: 'Start typing to search',
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF8C98A8).withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: const Text('Select country',style: TextStyle(color: Colors.black),),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.5),
                            shape: BoxShape.rectangle
                          ),
                          child: Text('your country is: ${_country}')),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(80)
                        ),
                        child: TextButton(onPressed: (){
                          if(x.text==y.text){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (x)=>chat_screen()));
                          }
                          else {
                            setState(() {
                              x.text='';
                              y.text='';
                            });

                          }

                        }, child: Text('Start chating',style: TextStyle(fontSize: 25,color: Colors.amberAccent.withOpacity(0.8)),)),
                      )
                    ],
                  ),
                ),
              ),

          )


    );
  }


}
