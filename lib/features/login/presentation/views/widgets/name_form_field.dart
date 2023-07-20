import 'package:flutter/material.dart';

class NameFormField extends StatefulWidget {
  const NameFormField({
    super.key, this.onChanged,
  });

  final void Function(String?)? onChanged;


  @override
  State<NameFormField> createState() => _NameFormFieldState();
}

class _NameFormFieldState extends State<NameFormField> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .1,
        top:MediaQuery.of(context).size.width * .07,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.655,
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          child: TextFormField(
            controller: controller,
            onChanged: widget.onChanged,
            //onEditingComplete: widget.onEditingComplete,
            validator: (data) {
              if (data!.isEmpty) {
                return 'field is required';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Enter your Full Name',
              hintStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB1B1B1),
              ),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              border:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
