import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/bloc/register_form/bloc.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:formz/formz.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context
            .read<RegisterFormBloc>()
            .add(const RegisterFormEvent.emailUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context
            .read<RegisterFormBloc>()
            .add(const RegisterFormEvent.passwordUnfocused());
      }
    });
    _ageFocusNode.addListener(() {
      if (!_ageFocusNode.hasFocus) {
        context.read<RegisterFormBloc>().add(const AgeUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          showDialog<void>(
            context: context,
            builder: (_) => SuccessDialog(),
          );
        }
        if (state.status.isSubmissionInProgress) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Submitting...')),
            );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            EmailInput(focusNode: _emailFocusNode).p8(),
            PasswordInput(focusNode: _passwordFocusNode).p8(),
            AgeInput(focusNode: _ageFocusNode).p8(),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key, required this.focusNode}) : super(key: key);

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.email.value,
          focusNode: focusNode,
          style: FontStyle.regular,
          decoration: InputDecoration(
            icon: Assets.icons.uniconsLine.message.svg(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 5.0),
                borderRadius: BorderRadius.circular(23)),
            contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            labelText: 'Email',
            helperText: 'A complete, valid email e.g. joe@gmail.com',
            errorText: state.email.invalid
                ? 'Please ensure the email entered is valid'
                : null,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            context.read<RegisterFormBloc>().add(EmailChanged(value));
          },
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class AgeInput extends StatelessWidget {
  const AgeInput({Key? key, required this.focusNode}) : super(key: key);

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.age.value,
          focusNode: focusNode,
          style: FontStyle.regular,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 5.0),
                borderRadius: BorderRadius.circular(23)),
            contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            icon: Assets.icons.uniconsLine.user.svg(),
            labelText: 'Age',
            errorText: state.email.invalid
                ? 'Please ensure the age entered is valid'
                : null,
          ),
          keyboardType: const TextInputType.numberWithOptions(),
          onChanged: (value) {
            context.read<RegisterFormBloc>().add(AgeChanged(value));
          },
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key, required this.focusNode}) : super(key: key);

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.password.value,
          focusNode: focusNode,
          style: FontStyle.regular,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 5.0),
                borderRadius: BorderRadius.circular(23)),
            contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            icon: Assets.icons.uniconsLine.lockAlt.svg(),
            helperText:
                '''Password should be at least 8 characters with at least one letter and number''',
            helperMaxLines: 2,
            labelText: 'Password',
            floatingLabelBehavior: FloatingLabelBehavior.never,
            errorMaxLines: 2,
            errorText: state.password.invalid
                ? '''Password must be at least 8 characters and contain at least one letter and number'''
                : null,
          ),
          obscureText: true,
          onChanged: (value) {
            context.read<RegisterFormBloc>().add(PasswordChanged(value));
          },
          textInputAction: TextInputAction.done,
        );
      },
    );
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status.isValidated
              ? () =>
                  context.read<RegisterFormBloc>().add(const FormSubmitted())
              : null,
          child: const Text('Зарегестрировать'),
        );
      },
    );
  }
}

class SuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Assets.icons.uniconsLine.info.svg(),
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Form Submitted Successfully!',
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
