import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/cupertino.dart';

const String BASE_URL = "https://api.jobo.uz";
const int CONNECT_TIME_OUT = 10000;
const int SEND_TIME_OUT = 10000;
const int RECEIVE_TIME_OUT = 10000;

const String KEY_ROLE="key_role";
const String KEY_TOKEN = "key_token";
const String KEY_USER_TOKEN = "key_user_token";
const String KEY_USER_DATA = "key_user_data";
const String KEY_COMPANY = "key_company_data";
const String KEY_CHANGE_ROLE = "key_change_role";
const String KEY_WORK = "work";
const String KEY_EDUCATION = "education";
const String ROLE_CUSTOMER = "customer";
const String ROLE_CONDIDATE = "candidate";
const int CODE_CUSTOMER = 2;
const int CODE_CONDIDATE = 1;
      GlobalKey<NavigatorState>? NAVIGATOR_KEY = Chuck().getNavigatorKey();
const String KEY_ADDITIONAL_EDUCATION = "additional_education";
 String? EMAILERROR;

 bool isLoading=false;
