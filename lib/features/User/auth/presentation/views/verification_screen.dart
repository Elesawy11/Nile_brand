import '../../../../../core/routing/exports.dart';
import 'widgets/custom_verify_button_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key, required this.email});
  final String email;
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Timer? _timer;
  int _start = 45;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void resendCode() {
    setState(() {
      _start = 45;
    });
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPassCubit>();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            30.vs,
            Text(
              "verification",
              style: Styles.font35W700,
            ),
            40.vs,
            Text(
              textAlign: TextAlign.center,
              "Please enter the code we just end to Email",
              style: Styles.font20W400,
            ),
            Text(
              widget.email,
              style: Styles.font20W400.copyWith(
                color: ColorManager.blue33,
              ),
            ),
            30.vs,
            const VerificationCodeInput(),
            30.vs,
            Text(
              "00:$_start",
              style: Styles.font20W400,
            ),
            _start == 0
                ? TextButton(
                    onPressed: () {
                      resendCode();
                      cubit.emailController.text = widget.email;
                      cubit.emitforgotPassState();
                    },
                    child: Text(
                      "Resend Code",
                      style: Styles.font14W400.copyWith(
                        color: ColorManager.gray8C,
                      ),
                    ),
                  )
                : 30.vs,
            const CustomVerifyButton(),
            const VerificationBlocListener(),
          ],
        ),
      ),
    ));
  }
}
