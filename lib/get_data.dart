// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myproject/app_widget.dart';

class Getdata extends StatefulWidget {
  @override
  createState() => _GetdataState();
}

class _GetdataState extends State<Getdata> with TickerProviderStateMixin {
  late TabController _tabController;

  final _formKey1 = GlobalKey<FormState>();

  final _formKey2 = GlobalKey<FormState>();

  final _formKey3 = GlobalKey<FormState>();

  final txtStreetAddress = TextEditingController();

  final txtStreest2Address = TextEditingController();
  final txtCity = TextEditingController();
  final txtState = TextEditingController();
  final txtZipCode = TextEditingController();

  final txtZipCodePicker = TextEditingController();
  final txtCountry = TextEditingController();
  final txtpropertyTaxid = TextEditingController();
  final legaleIssu = TextEditingController();

  ///tenant
  final tenantFirstName = TextEditingController();
  final tenantLastName = TextEditingController();
  final tenantEmail = TextEditingController();
  final tenantMobile = TextEditingController();
  final tenantHomeNumber = TextEditingController();
  final tenantPagerNumber = TextEditingController();
  final tenantAlternateNumber = TextEditingController();
  final tenanttotlaterms = TextEditingController();
  final tenantmoveInFee = TextEditingController();
  final tenantmonthlyPayment = TextEditingController();
  final tenantMonthlyCredit = TextEditingController();

  int len = 3;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: len, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: const Text("Property Onboarding Form"),
            //bottom: _topnavigation(),
          ),
          body: _body(),
        ),
      ),
    );
  }

  Widget _body() {
    //return _tabBarview();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          _topnavigation(),
          SizedBox(height: 20),
          //webNavigator!,
          Expanded(
            child: _tabBarview(),
          )
        ],
      ),
    );
  }

  _topnavigation() {
    return TabBar(
      controller: _tabController,
      indicatorWeight: 3.0,
      indicatorColor: Colors.redAccent,
      labelColor: Colors.red,
      tabs: const [
        // ignore: prefer_const_constructors
        Tab(
          text: "1",
          //Property Info
        ),
        // ignore: prefer_const_constructors
        Tab(
          text: "2", //Property Details
        ),
        Tab(
          text: "2", //Property Details
        )
      ],
    );
  }

  Widget _tabBarview() {
    return TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _poprtyInfo(),
          _tenancyDetail(),
          _tenancyDetail1(),
        ]);
  }

  Widget _poprtyInfo() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Form(
            key: _formKey1,

//          autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                const Text(
                  "Property info",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 16.0),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Ownership Type"),
                      SizedBox(height: 10),
                      // DropdownWidget(
                      //   title: 'Please select Ownership type',
                      //   isrequired: true,
                      //   dropdownModle: (filedsDatamodle != null)
                      //       ? filedsDatamodle!.ownershipTypeDropownList
                      //       : [],
                      //   val: _chosenValue,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _chosenValue = value;
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                ),
                AppWidgets.inputField(
                    context: context,
                    label: "Street Address",
                    textEditingController: txtStreetAddress,
                    hint: "Street",
                    isRequired: true),
                AppWidgets.inputField(
                    hint: "City",
                    context: context,
                    label: "Please Enter City ",
                    textEditingController: txtCity,
                    isRequired: true),
                AppWidgets.inputField(
                    hint: "Postal Code",
                    context: context,
                    label: "Please Enter Postal code",
                    textEditingController: txtZipCode,
                    isRequired: true),
                AppWidgets.inputField(
                    hint: "County",
                    context: context,
                    label: "Please Enter County",
                    textEditingController: txtCountry,
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Property Tax ID",
                    textEditingController: txtpropertyTaxid,
                    hint: "Property Tax ID",
                    isRequired: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    keyboardType: TextInputType.number),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Legal Issues",
                    //
                    textEditingController: legaleIssu,
                    hint: "Legal Issues (If Any)",
                    isRequired: false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tenancyDetail() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Form(
            key: _formKey2,
//          autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                const Text(
                  "Tenancy Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 16.0),
                ),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant First Name",
                    textEditingController: tenantFirstName,
                    hint: "Tenant First Name",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Last Name",
                    textEditingController: tenantLastName,
                    hint: "Tenant Last Name",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Email",
                    textEditingController: tenantEmail,
                    hint: "Tenant Email",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Mobile Numebr",
                    textEditingController: tenantMobile,
                    hint: "Tenant Mobile Number",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Home Numebr",
                    //validator: Validate.blank,
                    textEditingController: tenantHomeNumber,
                    hint: "Tenant Home Number",
                    isRequired: false),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Pager Numebr",
                    //validator: Validate.blank,
                    textEditingController: tenantPagerNumber,
                    hint: "Tenant pager Number",
                    isRequired: false),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Alternate Numebr",
                    // validator: Validate.blank,
                    textEditingController: tenantAlternateNumber,
                    hint: "Tenant Alternate Number",
                    isRequired: false),
                AppWidgets.inputField(
                  context: context,
                  label: "Please enter Total Terms",
                  textEditingController: tenanttotlaterms,
                  hint: "Total Terms",
                  isRequired: true,
                ),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Move In Fee",
                    textEditingController: tenantmoveInFee,
                    hint: "Move In Fee",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Monthly Pmt",
                    textEditingController: tenantmonthlyPayment,
                    hint: "Monthly Pmt",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Monthly Credit",
                    textEditingController: tenantMonthlyCredit,
                    hint: "Monthly Credit",
                    isRequired: true),
                _buttons(title: 'Submit')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tenancyDetail1() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Form(
            key: _formKey3,
//          autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                const Text(
                  "Tenancy Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 16.0),
                ),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant First Name",
                    textEditingController: tenantFirstName,
                    hint: "Tenant First Name",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Last Name",
                    textEditingController: tenantLastName,
                    hint: "Tenant Last Name",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Email",
                    textEditingController: tenantEmail,
                    hint: "Tenant Email",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Mobile Numebr",
                    textEditingController: tenantMobile,
                    hint: "Tenant Mobile Number",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Home Numebr",
                    //validator: Validate.blank,
                    textEditingController: tenantHomeNumber,
                    hint: "Tenant Home Number",
                    isRequired: false),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Pager Numebr",
                    //validator: Validate.blank,
                    textEditingController: tenantPagerNumber,
                    hint: "Tenant pager Number",
                    isRequired: false),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Tenant Alternate Numebr",
                    // validator: Validate.blank,
                    textEditingController: tenantAlternateNumber,
                    hint: "Tenant Alternate Number",
                    isRequired: false),
                AppWidgets.inputField(
                  context: context,
                  label: "Please enter Total Terms",
                  textEditingController: tenanttotlaterms,
                  hint: "Total Terms",
                  isRequired: true,
                ),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Move In Fee",
                    textEditingController: tenantmoveInFee,
                    hint: "Move In Fee",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Monthly Pmt",
                    textEditingController: tenantmonthlyPayment,
                    hint: "Monthly Pmt",
                    isRequired: true),
                AppWidgets.inputField(
                    context: context,
                    label: "Please enter Monthly Credit",
                    textEditingController: tenantMonthlyCredit,
                    hint: "Monthly Credit",
                    isRequired: true),
                _buttons(title: 'Submit')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttons({required title}) {
    //callPropertyOnboardfield();
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: AppWidgets.buildButton(
                fontWeight: FontWeight.w600,
                width: double.maxFinite,
                context: context,
                buttonHeight: 54,
                buttonTextColour: Colors.white,
                buttonBackgroundColour: Colors.redAccent,
                buttonText: title,
                buttonTextSize: 16,
                buttonShapeRoundSize: 10,
                onPressed: () {
                  print("checking current state 1 ${_formKey1.currentState}");
                  print("checking current state 2 ${_formKey2.currentState}");
                  print("checking current state 3 ${_formKey3.currentState}");
                  print(txtCity.text);
                  //postonboardForm();
                }),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
