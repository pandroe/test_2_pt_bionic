import 'package:flutter/material.dart';
import 'package:test_dua_pt_bionic/utils/constant.dart';
import 'package:test_dua_pt_bionic/widgets/custom_field_form_widgets.dart';

class Contact {
  String fullName;
  String phoneNumber;

  Contact({required this.fullName, required this.phoneNumber});
}

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? _fullName = TextEditingController();
  TextEditingController? _numberPhone = TextEditingController();

  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    Constant constant = Constant(context);

    void _submitForm() {
      if (_formKey.currentState!.validate()) {
        Contact newContact = Contact(
          fullName: _fullName!.text,
          phoneNumber: _numberPhone!.text,
        );

        setState(() {
          contacts.add(newContact);
          _fullName!.clear();
          _numberPhone!.clear();
        });
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,
                        size: constant.size.height * 0.040),
                  ),
                  SizedBox(
                    width: constant.size.width * 0.050,
                  ),
                  Text(
                    'Add Contact',
                    style: TextStyle(
                      fontSize: Constant.fontExtraBig,
                      fontWeight: FontWeight.bold,
                      color: Color(Constant.blackColorLight),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              CustomTextFormFieldWidgets(
                hintText: 'Nama Lengkap',
                controller: _fullName,
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              CustomTextFormFieldWidgets(
                hintText: 'Nomor Telepon',
                controller: _numberPhone,
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(Constant.purpleColorLight),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                height: constant.size.height * 0.080,
                width: constant.size.width * 0.550,
                child: GestureDetector(
                  onTap: _submitForm,
                  child: Center(
                    child: Text(
                      'Start'.toUpperCase(),
                      style: TextStyle(
                        fontSize: Constant.fontSemiRegular,
                        fontWeight: FontWeight.bold,
                        color: Color(Constant.whiteColorBase),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Text(
                'List Contact',
                style: TextStyle(
                  fontSize: Constant.fontExtraBig,
                  fontWeight: FontWeight.bold,
                  color: Color(Constant.blackColorLight),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(contacts[index].fullName),
                      subtitle: Text(contacts[index].phoneNumber),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
