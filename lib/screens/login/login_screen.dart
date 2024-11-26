import 'package:design_test/constants.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:design_test/shared/custom_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.string(logo),
            Row(
              children: [
                const Text(
                  'Get Started Now',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                SvgPicture.string(
                  handIcon,
                  width: 28,
                ),
              ],
            ),
            Text(
              'Enter Your credentials to access your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomSocialButton(
                    text: 'Log in with Google',
                    onPressed: () {},
                    imgUrl: 'assets/images/google_icon.svg',
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: CustomSocialButton(
                    text: 'Log in with Apple',
                    onPressed: () {},
                    imgUrl: 'assets/images/apple_icon.svg',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.white.withOpacity(0.1)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Or',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.white.withOpacity(0.1)),
                ),
              ],
            ),
            const CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: const TextStyle(color: Color(0xFF757575)),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 8,
          ), // Add padding around the icon
          child: SvgPicture.asset(
            'assets/images/email_icon.svg',
          ),
        ),
        fillColor: const Color(0xff10161C),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}

const logo = '''<svg width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M44.9506 13.8228C44.9506 8.38221 42.0447 3.62049 37.7003 1.00503C40.0098 3.54894 41.7481 6.60075 42.6239 9.86923C44.1809 15.6802 42.6052 21.5926 38.932 25.8131C42.5852 23.0873 44.9506 18.7313 44.9506 13.8228Z" fill="url(#paint0_linear_1_821)"/>
<path d="M37.5442 23.6436C40.3672 20.0651 41.5244 15.2454 40.254 10.5042C38.846 5.24936 34.807 1.40212 29.9341 0C32.8199 1.85747 35.2865 4.35193 36.9781 7.27813L36.9836 7.28765C39.9915 12.4975 39.9998 18.6162 37.5442 23.6436Z" fill="url(#paint1_linear_1_821)"/>
<path d="M34.8589 8.51437C37.3131 12.7653 37.4427 17.7205 35.6419 21.9078C36.7125 16.4163 35.1208 10.5085 30.867 6.25474C28.4738 3.86161 25.442 2.08744 22.1694 1.03902C27.2401 1.13132 32.1383 3.8022 34.8589 8.51437Z" fill="url(#paint2_linear_1_821)"/>
<path d="M33.3552 20.7225C34.0105 16.2124 32.6027 11.4602 29.1321 7.98959C25.2855 4.14297 19.8644 2.83058 14.9435 4.05244C18.3714 4.21821 21.7545 5.14522 24.6825 6.83347L24.692 6.83896C29.9017 9.84674 32.968 15.1412 33.3552 20.7225Z" fill="url(#paint3_linear_1_821)"/>
<path d="M30.8399 20.1705C30.3057 15.6441 27.716 11.4178 23.4653 8.96371C18.7537 6.24345 13.177 6.37924 8.73979 8.83392C12.0979 8.10586 15.6102 8.12647 18.8788 9.00228C24.6894 10.5592 29.0214 14.8796 30.8399 20.1705Z" fill="url(#paint4_linear_1_821)"/>
<path d="M28.2676 20.2888C26.5803 16.0547 22.985 12.6425 18.2438 11.3721C12.9888 9.96406 7.63736 11.5384 3.9866 15.0576C7.04149 13.4853 10.4391 12.5962 13.8228 12.5962C19.8387 12.5962 25.1417 15.6484 28.2676 20.2888Z" fill="url(#paint5_linear_1_821)"/>
<path d="M25.8127 21.0677C23.087 17.4148 18.7311 15.0496 13.8228 15.0496C8.38216 15.0496 3.62038 17.9556 1.00493 22.3001C3.54889 19.9904 6.60084 18.252 9.86954 17.3761C15.6803 15.8191 21.5924 17.3947 25.8127 21.0677Z" fill="url(#paint6_linear_1_821)"/>
<path d="M23.644 22.4561C20.0656 19.6329 15.2458 18.4755 10.5045 19.746C5.24928 21.1541 1.40186 25.1936 0 30.067C1.85976 27.1778 4.35799 24.7089 7.28854 23.0169C12.4984 20.009 18.6168 20.0006 23.644 22.4561Z" fill="url(#paint7_linear_1_821)"/>
<path d="M21.9072 24.358C17.7204 22.5578 12.7659 22.6876 8.51527 25.1417C3.80353 27.862 1.1327 32.7596 1.03994 37.8298C2.08844 34.5574 3.86248 31.5257 6.25531 29.1329C10.5089 24.8792 16.4162 23.2876 21.9072 24.358Z" fill="url(#paint8_linear_1_821)"/>
<path d="M7.99016 30.8677C4.14372 34.7142 2.83127 40.1349 4.05285 45.0557C4.21881 41.6243 5.14754 38.2377 6.83913 35.3078C9.84694 30.0981 15.1413 27.0319 20.7226 26.6448C16.2127 25.9895 11.4607 27.3972 7.99016 30.8677Z" fill="url(#paint9_linear_1_821)"/>
<path d="M20.1713 29.16C15.6447 29.6939 11.4182 32.2836 8.96388 36.5345C6.24346 41.2464 6.37936 46.8235 8.83439 51.2609C8.10614 47.9027 8.12662 44.3903 9.00247 41.1216C10.5595 35.3106 14.8801 30.9784 20.1713 29.16Z" fill="url(#paint10_linear_1_821)"/>
<path d="M20.2891 31.7325C16.055 33.4198 12.6428 37.0152 11.3723 41.7566C9.96412 47.0121 11.539 52.3643 15.0589 56.0153C13.4862 52.9601 12.5968 49.5619 12.5968 46.1776C12.5968 40.1616 15.6488 34.8585 20.2891 31.7325Z" fill="url(#paint11_linear_1_821)"/>
<path d="M21.0674 34.1879C17.415 36.9137 15.0503 41.2694 15.0503 46.1776C15.0503 51.618 17.956 56.3796 22.3003 58.9951C19.9908 56.451 18.2525 53.399 17.3767 50.1304C15.8198 44.3199 17.3949 38.4082 21.0674 34.1879Z" fill="url(#paint12_linear_1_821)"/>
<path d="M19.7466 49.4954C21.1547 54.7507 25.1943 58.5982 30.0678 60C27.1783 58.1403 24.7091 55.6421 23.0171 52.7114C20.0093 47.5017 20.0007 41.3836 22.4559 36.3566C19.6332 39.9349 18.4762 44.7543 19.7466 49.4954Z" fill="url(#paint13_linear_1_821)"/>
<path d="M24.358 38.0929C22.5579 42.2796 22.6878 47.2341 25.1418 51.4847C27.8618 56.1957 32.7583 58.8664 37.8276 58.9599C34.5561 57.9115 31.5252 56.1378 29.1329 53.7455C24.8792 49.4918 23.2875 43.5842 24.358 38.0929Z" fill="url(#paint14_linear_1_821)"/>
<path d="M26.6449 39.2768C25.9893 43.7873 27.3969 48.5399 30.8677 52.0107C34.7149 55.8579 40.137 57.1701 45.0586 55.9473C41.6264 55.7816 38.239 54.8527 35.3084 53.1607C30.0985 50.1528 27.032 44.8583 26.6449 39.2768Z" fill="url(#paint15_linear_1_821)"/>
<path d="M36.5351 51.0359C41.2467 53.7562 46.8235 53.6204 51.2609 51.1657C47.9031 51.8939 44.3909 51.8734 41.1224 50.9975C35.3115 49.4405 30.9788 45.1199 29.1602 39.8287C29.6943 44.3552 32.2841 48.5816 36.5351 51.0359Z" fill="url(#paint16_linear_1_821)"/>
<path d="M31.7333 39.7122C33.421 43.9457 37.0164 47.3574 41.7574 48.6277C47.0126 50.0358 52.3642 48.4613 56.0149 44.9419C52.9597 46.5143 49.5616 47.4034 46.1776 47.4034C40.1622 47.4034 34.8594 44.3519 31.7333 39.7122Z" fill="url(#paint17_linear_1_821)"/>
<path d="M46.1776 44.95C51.618 44.95 56.3796 42.0443 58.9951 37.7001C56.451 40.0094 53.3991 41.7475 50.1307 42.6233C44.32 44.1802 38.4079 42.605 34.1875 38.9323C36.9133 42.585 41.2692 44.95 46.1776 44.95Z" fill="url(#paint18_linear_1_821)"/>
<path d="M36.3571 37.5445C39.9354 40.3669 44.7548 41.5238 49.4957 40.2534C54.7507 38.8454 58.5979 34.8064 60 29.9333C58.1406 32.8226 55.6427 35.2916 52.7123 36.9834C47.5027 39.9912 41.3843 39.9997 36.3571 37.5445Z" fill="url(#paint19_linear_1_821)"/>
<path d="M51.4856 34.8587C56.1971 32.1385 58.8678 27.2414 58.9609 22.1715C57.9125 25.4433 56.1387 28.4743 53.7461 30.867C49.4922 35.1208 43.584 36.7126 38.0923 35.6419C42.2795 37.4426 47.2347 37.313 51.4856 34.8587Z" fill="url(#paint20_linear_1_821)"/>
<path d="M39.2767 33.3551C43.7874 34.0107 48.5404 32.603 52.0113 29.1321C55.8588 25.2846 57.1709 19.8618 55.9475 14.9399C55.7818 18.3724 54.8528 21.7602 53.1605 24.6913C50.1527 29.9011 44.8581 32.9678 39.2767 33.3551Z" fill="url(#paint21_linear_1_821)"/>
<path d="M51.0358 23.4645C53.7557 18.7535 53.6204 13.1776 51.1666 8.74056C51.8945 12.0981 51.8738 15.6099 50.9981 18.8781C49.4412 24.6885 45.121 29.0208 39.8302 30.8396C44.3561 30.3049 48.5818 27.715 51.0358 23.4645Z" fill="url(#paint22_linear_1_821)"/>
<path d="M39.7122 28.267C43.946 26.5794 47.3579 22.9841 48.6283 18.2431C50.0363 12.9883 48.4621 7.63738 44.9431 3.98683C46.5151 7.04177 47.4041 10.4393 47.4041 13.8228C47.4041 19.8383 44.3522 25.141 39.7122 28.267Z" fill="url(#paint23_linear_1_821)"/>
<path d="M30.096 22.0338C30.0324 22.0238 29.9676 22.0238 29.904 22.0338L27.6296 22.3941C27.566 22.4042 27.5044 22.4242 27.4471 22.4534L25.3952 23.4988C25.3379 23.5281 25.2855 23.5661 25.24 23.6116L23.6116 25.24C23.5661 25.2855 23.5281 25.3379 23.4988 25.3952L22.4534 27.4471C22.4242 27.5044 22.4041 27.566 22.3941 27.6296L22.0338 29.904C22.0238 29.9676 22.0238 30.0324 22.0338 30.096L22.3941 32.3704C22.4041 32.434 22.4242 32.4956 22.4534 32.5529L23.4988 34.6048C23.5281 34.6621 23.5661 34.7145 23.6116 34.76L25.24 36.3884C25.2855 36.4339 25.3379 36.4719 25.3952 36.5012L27.4471 37.5466C27.5044 37.5758 27.566 37.5958 27.6296 37.6059L29.904 37.9662C29.9676 37.9762 30.0324 37.9762 30.096 37.9662L32.3704 37.6059C32.434 37.5958 32.4956 37.5758 32.5529 37.5466L34.6048 36.5012C34.6621 36.4719 34.7145 36.4339 34.76 36.3884L36.3884 34.76C36.4339 34.7145 36.4719 34.6621 36.5012 34.6048L37.5466 32.5529C37.5758 32.4956 37.5959 32.434 37.6059 32.3704L37.9662 30.096C37.9762 30.0324 37.9762 29.9676 37.9662 29.904L37.6059 27.6296C37.5959 27.566 37.5758 27.5044 37.5466 27.4471L36.5012 25.3952C36.4719 25.3379 36.4339 25.2855 36.3884 25.24L34.76 23.6116C34.7145 23.5661 34.6621 23.5281 34.6048 23.4988L32.5529 22.4534C32.4956 22.4242 32.434 22.4042 32.3704 22.3941L30.096 22.0338Z" fill="url(#paint24_linear_1_821)"/>
<defs>
<linearGradient id="paint0_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint1_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint2_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint3_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint4_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint5_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint6_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint7_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint8_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint9_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint10_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint11_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint12_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint13_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint14_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint15_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint16_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint17_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint18_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint19_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint20_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint21_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint22_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint23_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
<linearGradient id="paint24_linear_1_821" x1="0" y1="30" x2="60" y2="30" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
</defs>
</svg>
''';

const handIcon = '''<svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.5839 0.749579C13.5836 0.749257 13.5835 0.748782 13.5836 0.748346C13.7464 0.196705 14.3263 -0.118579 14.8761 0.0417685C16.7959 0.604266 18.1198 1.92614 18.7063 3.86571C18.8729 4.41675 18.5605 4.998 18.0105 5.16466C17.9105 5.19487 17.8084 5.20946 17.7084 5.20946C17.2615 5.20946 16.848 4.91883 16.7115 4.46883C16.323 3.18342 15.5542 2.41259 14.2917 2.0428C13.7399 1.88141 13.4233 1.30268 13.5842 0.750809C13.5844 0.750374 13.5842 0.7499 13.5839 0.749579ZM25 8.31674V14.7438C25 17.224 23.9906 19.6479 22.2313 21.3958L21.3823 22.2396C19.5896 24.0198 17.1073 25 14.5844 25C12.0282 24.9781 9.66258 23.9521 7.8803 22.1188L0.877213 14.9125C-0.126948 13.9073 -0.288405 12.3021 0.512632 11.1876C0.659001 10.9846 0.828972 10.8038 1.0174 10.6482C1.21371 10.486 1.25622 10.1832 1.07617 10.0032C0.0605509 8.98757 -0.100906 7.38132 0.702214 6.26779C1.31668 5.41416 1.93427 4.35523 2.40982 3.41709C2.46966 3.29906 2.53892 3.18472 2.61783 3.07509C3.11158 2.38968 3.87303 1.95739 4.7074 1.89072C5.33437 1.84222 5.94343 2.00797 6.45936 2.34119C6.60561 2.43565 6.79771 2.39061 6.89906 2.24905C7.3928 1.56364 8.15426 1.13239 8.98759 1.06468C9.83029 0.998015 10.6397 1.29801 11.2313 1.88968L18.0584 8.71676C18.3136 8.97199 18.75 8.79123 18.75 8.43028C18.75 6.85008 19.8709 5.47716 21.3584 5.2355C22.274 5.08862 23.2 5.34279 23.899 5.93758C24.599 6.53237 25 7.40007 25 8.31882V8.31674ZM22.9167 8.31674C22.9167 8.01049 22.7833 7.7209 22.549 7.52299C22.3115 7.32195 22.0063 7.2407 21.6917 7.28966C21.2104 7.36778 20.8323 7.86778 20.8323 8.42819V11.9219C20.8323 12.3428 20.5781 12.723 20.1896 12.8844C19.799 13.0448 19.3521 12.9563 19.0542 12.6584L9.75842 3.36155C9.59904 3.20217 9.37925 3.12509 9.15529 3.14071C9.02404 3.15113 8.77509 3.20738 8.58967 3.46571C8.38134 3.7553 8.45009 4.21467 8.74592 4.5105L14.0073 9.77194C14.4146 10.1792 14.4146 10.8376 14.0073 11.2448C13.8042 11.448 13.5376 11.5501 13.2709 11.5501C13.0042 11.5501 12.7376 11.448 12.5344 11.2448L5.47719 4.18863C5.31886 4.03029 5.10323 3.95009 4.87407 3.96779C4.74282 3.97821 4.49386 4.03446 4.30844 4.29279C4.10011 4.58237 4.16886 5.04071 4.46469 5.33758L11.4542 12.3271C11.8615 12.7344 11.8615 13.3928 11.4542 13.8C11.2511 14.0032 10.9845 14.1053 10.7178 14.1053C10.4511 14.1053 10.1845 14.0032 9.98133 13.8L3.56157 7.38028C3.40324 7.22195 3.17408 7.1407 2.95949 7.15945C2.82824 7.16986 2.57929 7.22611 2.39283 7.48549C2.1845 7.77507 2.25325 8.2334 2.54908 8.53028L8.90009 14.8813C9.30738 15.2886 9.30738 15.9469 8.90009 16.3542C8.4928 16.7615 7.83447 16.7615 7.42718 16.3542L3.37407 12.3011C3.21574 12.1428 2.99491 12.0636 2.77095 12.0803C2.6397 12.0907 2.39075 12.1469 2.20429 12.4053C1.99596 12.6948 2.06471 13.1542 2.36158 13.45L9.37404 20.6677C10.7647 22.099 12.6292 22.8969 14.6251 22.9146C16.5886 22.9177 18.498 22.1677 19.9146 20.7625L20.7636 19.9188C22.1323 18.5594 22.9167 16.674 22.9167 14.7448V8.31674ZM4.45949 21.9167C3.19699 21.5469 2.4272 20.7761 2.03971 19.4906C1.87304 18.9396 1.29179 18.6313 0.740756 18.7948C0.189717 18.9615 -0.12174 19.5427 0.0449261 20.0938C0.63034 22.0333 1.95533 23.3552 3.87511 23.9177C3.97303 23.9458 4.07095 23.9604 4.16782 23.9604C4.61886 23.9604 5.03448 23.6656 5.16677 23.2104C5.32823 22.6583 5.01157 22.0792 4.45949 21.9167Z" fill="url(#paint0_linear_1_920)"/>
<defs>
<linearGradient id="paint0_linear_1_920" x1="0" y1="12.5" x2="25" y2="12.5" gradientUnits="userSpaceOnUse">
<stop stop-color="#00FEFF"/>
<stop offset="1" stop-color="#003EC1"/>
</linearGradient>
</defs>
</svg>''';
