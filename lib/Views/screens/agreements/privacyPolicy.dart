import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:jared/view_model/apiServices.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  
  bool isLoading = true;
  bool isError = false;
  bool emptyData = false;

  getPrivPolicy(){
    ApiRepository.shared.privacyPolicy(
      (List)=>{
         if (this.mounted)
                {
                  if (List.status == 0)
                    {
                      setState((){
                        isLoading = false;
                        emptyData = true;
                        isError = false;
                      })
                    }
                  else
                    {
                     setState((){
                        isLoading = false;
                        emptyData = false;
                        isError = false;
                      })
                    }
                }
      }, 
      (error)=>{
          if (error != null)
                {
                  setState(() {
                   isLoading = false;
                   isError = true;
                   emptyData = false;
                  }),
                },
      });
  }

  void initState(){
    getPrivPolicy();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Privacy Policy',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Icon(
                Icons.arrow_back,
            color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              isLoading ?
              Container(child: Text('Loading'),) :
              Container(
                child: 
          Html(data: ApiRepository.shared.getPrivacyPolicyModelList!.data![0].description.toString(),)),
              // Container(
              //   child: Text( isLoading ? "Loading" :
              //     ApiRepository.shared.getPrivacyPolicyModelList!.data![0].description.toString(),
              //     style: TextStyle(
              //       fontSize: 17,
              //       color: Color(0xff524034),
              //     ),
              //     textAlign: TextAlign.justify,
              //   ),
              // ),
              SizedBox(height: res_height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
