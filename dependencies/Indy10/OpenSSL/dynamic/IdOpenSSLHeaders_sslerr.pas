{******************************************************************************}
{                                                                              }
{            Indy (Internet Direct) - Internet Protocols Simplified            }
{                                                                              }
{            https://www.indyproject.org/                                      }
{            https://gitter.im/IndySockets/Indy                                }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  This file is part of the Indy (Internet Direct) project, and is offered     }
{  under the dual-licensing agreement described on the Indy website.           }
{  (https://www.indyproject.org/license/)                                      }
{                                                                              }
{  Copyright:                                                                  }
{   (c) 1993-2020, Chad Z. Hower and the Indy Pit Crew. All rights reserved.   }
{                                                                              }
{******************************************************************************}
{                                                                              }
{        Originally written by: Fabian S. Biehn                                }
{                               fbiehn@aagon.com (German & English)            }
{                                                                              }
{        Contributers:                                                         }
{                               Here could be your name                        }
{                                                                              }
{******************************************************************************}

// This File is auto generated!
// Any change to this file should be made in the
// corresponding unit in the folder "intermediate"!

// Generation date: 28.10.2020 15:24:13

unit IdOpenSSLHeaders_sslerr;

interface

// Headers for OpenSSL 1.1.1
// sslerr.h

{$i IdCompilerDefines.inc}

uses
  Classes,
  IdCTypes,
  IdGlobal,
  IdOpenSSLConsts;

(*
 * SSL function codes.
 *)
const
  SSL_F_ADD_CLIENT_KEY_SHARE_EXT = 438;
  SSL_F_ADD_KEY_SHARE = 512;
  SSL_F_BYTES_TO_CIPHER_LIST = 519;
  SSL_F_CHECK_SUITEB_CIPHER_LIST = 331;
  SSL_F_CIPHERSUITE_CB = 622;
  SSL_F_CONSTRUCT_CA_NAMES = 552;
  SSL_F_CONSTRUCT_KEY_EXCHANGE_TBS = 553;
  SSL_F_CONSTRUCT_STATEFUL_TICKET = 636;
  SSL_F_CONSTRUCT_STATELESS_TICKET = 637;
  SSL_F_CREATE_SYNTHETIC_MESSAGE_HASH = 539;
  SSL_F_CREATE_TICKET_PREQUEL = 638;
  SSL_F_CT_MOVE_SCTS = 345;
  SSL_F_CT_STRICT = 349;
  SSL_F_CUSTOM_EXT_ADD = 554;
  SSL_F_CUSTOM_EXT_PARSE = 555;
  SSL_F_D2I_SSL_SESSION = 103;
  SSL_F_DANE_CTX_ENABLE = 347;
  SSL_F_DANE_MTYPE_SET = 393;
  SSL_F_DANE_TLSA_ADD = 394;
  SSL_F_DERIVE_SECRET_KEY_AND_IV = 514;
  SSL_F_DO_DTLS1_WRITE = 245;
  SSL_F_DO_SSL3_WRITE = 104;
  SSL_F_DTLS1_BUFFER_RECORD = 247;
  SSL_F_DTLS1_CHECK_TIMEOUT_NUM = 318;
  SSL_F_DTLS1_HEARTBEAT = 305;
  SSL_F_DTLS1_HM_FRAGMENT_NEW = 623;
  SSL_F_DTLS1_PREPROCESS_FRAGMENT = 288;
  SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS = 424;
  SSL_F_DTLS1_PROCESS_RECORD = 257;
  SSL_F_DTLS1_READ_BYTES = 258;
  SSL_F_DTLS1_READ_FAILED = 339;
  SSL_F_DTLS1_RETRANSMIT_MESSAGE = 390;
  SSL_F_DTLS1_WRITE_APP_DATA_BYTES = 268;
  SSL_F_DTLS1_WRITE_BYTES = 545;
  SSL_F_DTLSV1_LISTEN = 350;
  SSL_F_DTLS_CONSTRUCT_CHANGE_CIPHER_SPEC = 371;
  SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST = 385;
  SSL_F_DTLS_GET_REASSEMBLED_MESSAGE = 370;
  SSL_F_DTLS_PROCESS_HELLO_VERIFY = 386;
  SSL_F_DTLS_RECORD_LAYER_NEW = 635;
  SSL_F_DTLS_WAIT_FOR_DRY = 592;
  SSL_F_EARLY_DATA_COUNT_OK = 532;
  SSL_F_FINAL_EARLY_DATA = 556;
  SSL_F_FINAL_EC_PT_FORMATS = 485;
  SSL_F_FINAL_EMS = 486;
  SSL_F_FINAL_KEY_SHARE = 503;
  SSL_F_FINAL_MAXFRAGMENTLEN = 557;
  SSL_F_FINAL_RENEGOTIATE = 483;
  SSL_F_FINAL_SERVER_NAME = 558;
  SSL_F_FINAL_SIG_ALGS = 497;
  SSL_F_GET_CERT_VERIFY_TBS_DATA = 588;
  SSL_F_NSS_KEYLOG_INT = 500;
  SSL_F_OPENSSL_INIT_SSL = 342;
  SSL_F_OSSL_STATEM_CLIENT13_READ_TRANSITION = 436;
  SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION = 598;
  SSL_F_OSSL_STATEM_CLIENT_CONSTRUCT_MESSAGE = 430;
  SSL_F_OSSL_STATEM_CLIENT_POST_PROCESS_MESSAGE = 593;
  SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE = 594;
  SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION = 417;
  SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION = 599;
  SSL_F_OSSL_STATEM_SERVER13_READ_TRANSITION = 437;
  SSL_F_OSSL_STATEM_SERVER13_WRITE_TRANSITION = 600;
  SSL_F_OSSL_STATEM_SERVER_CONSTRUCT_MESSAGE = 431;
  SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE = 601;
  SSL_F_OSSL_STATEM_SERVER_POST_WORK = 602;
  SSL_F_OSSL_STATEM_SERVER_PROCESS_MESSAGE = 603;
  SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION = 418;
  SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION = 604;
  SSL_F_PARSE_CA_NAMES = 541;
  SSL_F_PITEM_NEW = 624;
  SSL_F_PQUEUE_NEW = 625;
  SSL_F_PROCESS_KEY_SHARE_EXT = 439;
  SSL_F_READ_STATE_MACHINE = 352;
  SSL_F_SET_CLIENT_CIPHERSUITE = 540;
  SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET = 595;
  SSL_F_SRP_GENERATE_SERVER_MASTER_SECRET = 589;
  SSL_F_SRP_VERIFY_SERVER_PARAM = 596;
  SSL_F_SSL3_CHANGE_CIPHER_STATE = 129;
  SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM = 130;
  SSL_F_SSL3_CTRL = 213;
  SSL_F_SSL3_CTX_CTRL = 133;
  SSL_F_SSL3_DIGEST_CACHED_RECORDS = 293;
  SSL_F_SSL3_DO_CHANGE_CIPHER_SPEC = 292;
  SSL_F_SSL3_ENC = 608;
  SSL_F_SSL3_FINAL_FINISH_MAC = 285;
  SSL_F_SSL3_FINISH_MAC = 587;
  SSL_F_SSL3_GENERATE_KEY_BLOCK = 238;
  SSL_F_SSL3_GENERATE_MASTER_SECRET = 388;
  SSL_F_SSL3_GET_RECORD = 143;
  SSL_F_SSL3_INIT_FINISHED_MAC = 397;
  SSL_F_SSL3_OUTPUT_CERT_CHAIN = 147;
  SSL_F_SSL3_READ_BYTES = 148;
  SSL_F_SSL3_READ_N = 149;
  SSL_F_SSL3_SETUP_KEY_BLOCK = 157;
  SSL_F_SSL3_SETUP_READ_BUFFER = 156;
  SSL_F_SSL3_SETUP_WRITE_BUFFER = 291;
  SSL_F_SSL3_WRITE_BYTES = 158;
  SSL_F_SSL3_WRITE_PENDING = 159;
  SSL_F_SSL_ADD_CERT_CHAIN = 316;
  SSL_F_SSL_ADD_CERT_TO_BUF = 319;
  SSL_F_SSL_ADD_CERT_TO_WPACKET = 493;
  SSL_F_SSL_ADD_CLIENTHELLO_RENEGOTIATE_EXT = 298;
  SSL_F_SSL_ADD_CLIENTHELLO_TLSEXT = 277;
  SSL_F_SSL_ADD_CLIENTHELLO_USE_SRTP_EXT = 307;
  SSL_F_SSL_ADD_DIR_CERT_SUBJECTS_TO_STACK = 215;
  SSL_F_SSL_ADD_FILE_CERT_SUBJECTS_TO_STACK = 216;
  SSL_F_SSL_ADD_SERVERHELLO_RENEGOTIATE_EXT = 299;
  SSL_F_SSL_ADD_SERVERHELLO_TLSEXT = 278;
  SSL_F_SSL_ADD_SERVERHELLO_USE_SRTP_EXT = 308;
  SSL_F_SSL_BAD_METHOD = 160;
  SSL_F_SSL_BUILD_CERT_CHAIN = 332;
  SSL_F_SSL_BYTES_TO_CIPHER_LIST = 161;
  SSL_F_SSL_CACHE_CIPHERLIST = 520;
  SSL_F_SSL_CERT_ADD0_CHAIN_CERT = 346;
  SSL_F_SSL_CERT_DUP = 221;
  SSL_F_SSL_CERT_NEW = 162;
  SSL_F_SSL_CERT_SET0_CHAIN = 340;
  SSL_F_SSL_CHECK_PRIVATE_KEY = 163;
  SSL_F_SSL_CHECK_SERVERHELLO_TLSEXT = 280;
  SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO = 606;
  SSL_F_SSL_CHECK_SRVR_ECC_CERT_AND_ALG = 279;
  SSL_F_SSL_CHOOSE_CLIENT_VERSION = 607;
  SSL_F_SSL_CIPHER_DESCRIPTION = 626;
  SSL_F_SSL_CIPHER_LIST_TO_BYTES = 425;
  SSL_F_SSL_CIPHER_PROCESS_RULESTR = 230;
  SSL_F_SSL_CIPHER_STRENGTH_SORT = 231;
  SSL_F_SSL_CLEAR = 164;
  SSL_F_SSL_CLIENT_HELLO_GET1_EXTENSIONS_PRESENT = 627;
  SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD = 165;
  SSL_F_SSL_CONF_CMD = 334;
  SSL_F_SSL_CREATE_CIPHER_LIST = 166;
  SSL_F_SSL_CTRL = 232;
  SSL_F_SSL_CTX_CHECK_PRIVATE_KEY = 168;
  SSL_F_SSL_CTX_ENABLE_CT = 398;
  SSL_F_SSL_CTX_MAKE_PROFILES = 309;
  SSL_F_SSL_CTX_NEW = 169;
  SSL_F_SSL_CTX_SET_ALPN_PROTOS = 343;
  SSL_F_SSL_CTX_SET_CIPHER_LIST = 269;
  SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE = 290;
  SSL_F_SSL_CTX_SET_CT_VALIDATION_CALLBACK = 396;
  SSL_F_SSL_CTX_SET_SESSION_ID_CONTEXT = 219;
  SSL_F_SSL_CTX_SET_SSL_VERSION = 170;
  SSL_F_SSL_CTX_SET_TLSEXT_MAX_FRAGMENT_LENGTH = 551;
  SSL_F_SSL_CTX_USE_CERTIFICATE = 171;
  SSL_F_SSL_CTX_USE_CERTIFICATE_ASN1 = 172;
  SSL_F_SSL_CTX_USE_CERTIFICATE_FILE = 173;
  SSL_F_SSL_CTX_USE_PRIVATEKEY = 174;
  SSL_F_SSL_CTX_USE_PRIVATEKEY_ASN1 = 175;
  SSL_F_SSL_CTX_USE_PRIVATEKEY_FILE = 176;
  SSL_F_SSL_CTX_USE_PSK_IDENTITY_HINT = 272;
  SSL_F_SSL_CTX_USE_RSAPRIVATEKEY = 177;
  SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_ASN1 = 178;
  SSL_F_SSL_CTX_USE_RSAPRIVATEKEY_FILE = 179;
  SSL_F_SSL_CTX_USE_SERVERINFO = 336;
  SSL_F_SSL_CTX_USE_SERVERINFO_EX = 543;
  SSL_F_SSL_CTX_USE_SERVERINFO_FILE = 337;
  SSL_F_SSL_DANE_DUP = 403;
  SSL_F_SSL_DANE_ENABLE = 395;
  SSL_F_SSL_DERIVE = 590;
  SSL_F_SSL_DO_CONFIG = 391;
  SSL_F_SSL_DO_HANDSHAKE = 180;
  SSL_F_SSL_DUP_CA_LIST = 408;
  SSL_F_SSL_ENABLE_CT = 402;
  SSL_F_SSL_GENERATE_PKEY_GROUP = 559;
  SSL_F_SSL_GENERATE_SESSION_ID = 547;
  SSL_F_SSL_GET_NEW_SESSION = 181;
  SSL_F_SSL_GET_PREV_SESSION = 217;
  SSL_F_SSL_GET_SERVER_CERT_INDEX = 322;
  SSL_F_SSL_GET_SIGN_PKEY = 183;
  SSL_F_SSL_HANDSHAKE_HASH = 560;
  SSL_F_SSL_INIT_WBIO_BUFFER = 184;
  SSL_F_SSL_KEY_UPDATE = 515;
  SSL_F_SSL_LOAD_CLIENT_CA_FILE = 185;
  SSL_F_SSL_LOG_MASTER_SECRET = 498;
  SSL_F_SSL_LOG_RSA_CLIENT_KEY_EXCHANGE = 499;
  SSL_F_SSL_MODULE_INIT = 392;
  SSL_F_SSL_NEW = 186;
  SSL_F_SSL_NEXT_PROTO_VALIDATE = 565;
  SSL_F_SSL_PARSE_CLIENTHELLO_RENEGOTIATE_EXT = 300;
  SSL_F_SSL_PARSE_CLIENTHELLO_TLSEXT = 302;
  SSL_F_SSL_PARSE_CLIENTHELLO_USE_SRTP_EXT = 310;
  SSL_F_SSL_PARSE_SERVERHELLO_RENEGOTIATE_EXT = 301;
  SSL_F_SSL_PARSE_SERVERHELLO_TLSEXT = 303;
  SSL_F_SSL_PARSE_SERVERHELLO_USE_SRTP_EXT = 311;
  SSL_F_SSL_PEEK = 270;
  SSL_F_SSL_PEEK_EX = 432;
  SSL_F_SSL_PEEK_INTERNAL = 522;
  SSL_F_SSL_READ = 223;
  SSL_F_SSL_READ_EARLY_DATA = 529;
  SSL_F_SSL_READ_EX = 434;
  SSL_F_SSL_READ_INTERNAL = 523;
  SSL_F_SSL_RENEGOTIATE = 516;
  SSL_F_SSL_RENEGOTIATE_ABBREVIATED = 546;
  SSL_F_SSL_SCAN_CLIENTHELLO_TLSEXT = 320;
  SSL_F_SSL_SCAN_SERVERHELLO_TLSEXT = 321;
  SSL_F_SSL_SESSION_DUP = 348;
  SSL_F_SSL_SESSION_NEW = 189;
  SSL_F_SSL_SESSION_PRINT_FP = 190;
  SSL_F_SSL_SESSION_SET1_ID = 423;
  SSL_F_SSL_SESSION_SET1_ID_CONTEXT = 312;
  SSL_F_SSL_SET_ALPN_PROTOS = 344;
  SSL_F_SSL_SET_CERT = 191;
  SSL_F_SSL_SET_CERT_AND_KEY = 621;
  SSL_F_SSL_SET_CIPHER_LIST = 271;
  SSL_F_SSL_SET_CT_VALIDATION_CALLBACK = 399;
  SSL_F_SSL_SET_FD = 192;
  SSL_F_SSL_SET_PKEY = 193;
  SSL_F_SSL_SET_RFD = 194;
  SSL_F_SSL_SET_SESSION = 195;
  SSL_F_SSL_SET_SESSION_ID_CONTEXT = 218;
  SSL_F_SSL_SET_SESSION_TICKET_EXT = 294;
  SSL_F_SSL_SET_TLSEXT_MAX_FRAGMENT_LENGTH = 550;
  SSL_F_SSL_SET_WFD = 196;
  SSL_F_SSL_SHUTDOWN = 224;
  SSL_F_SSL_SRP_CTX_INIT = 313;
  SSL_F_SSL_START_ASYNC_JOB = 389;
  SSL_F_SSL_UNDEFINED_FUNCTION = 197;
  SSL_F_SSL_UNDEFINED_VOID_FUNCTION = 244;
  SSL_F_SSL_USE_CERTIFICATE = 198;
  SSL_F_SSL_USE_CERTIFICATE_ASN1 = 199;
  SSL_F_SSL_USE_CERTIFICATE_FILE = 200;
  SSL_F_SSL_USE_PRIVATEKEY = 201;
  SSL_F_SSL_USE_PRIVATEKEY_ASN1 = 202;
  SSL_F_SSL_USE_PRIVATEKEY_FILE = 203;
  SSL_F_SSL_USE_PSK_IDENTITY_HINT = 273;
  SSL_F_SSL_USE_RSAPRIVATEKEY = 204;
  SSL_F_SSL_USE_RSAPRIVATEKEY_ASN1 = 205;
  SSL_F_SSL_USE_RSAPRIVATEKEY_FILE = 206;
  SSL_F_SSL_VALIDATE_CT = 400;
  SSL_F_SSL_VERIFY_CERT_CHAIN = 207;
  SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE = 616;
  SSL_F_SSL_WRITE = 208;
  SSL_F_SSL_WRITE_EARLY_DATA = 526;
  SSL_F_SSL_WRITE_EARLY_FINISH = 527;
  SSL_F_SSL_WRITE_EX = 433;
  SSL_F_SSL_WRITE_INTERNAL = 524;
  SSL_F_STATE_MACHINE = 353;
  SSL_F_TLS12_CHECK_PEER_SIGALG = 333;
  SSL_F_TLS12_COPY_SIGALGS = 533;
  SSL_F_TLS13_CHANGE_CIPHER_STATE = 440;
  SSL_F_TLS13_ENC = 609;
  SSL_F_TLS13_FINAL_FINISH_MAC = 605;
  SSL_F_TLS13_GENERATE_SECRET = 591;
  SSL_F_TLS13_HKDF_EXPAND = 561;
  SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA = 617;
  SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA = 618;
  SSL_F_TLS13_SETUP_KEY_BLOCK = 441;
  SSL_F_TLS1_CHANGE_CIPHER_STATE = 209;
  SSL_F_TLS1_CHECK_DUPLICATE_EXTENSIONS = 341;
  SSL_F_TLS1_ENC = 401;
  SSL_F_TLS1_EXPORT_KEYING_MATERIAL = 314;
  SSL_F_TLS1_GET_CURVELIST = 338;
  SSL_F_TLS1_PRF = 284;
  SSL_F_TLS1_SAVE_U16 = 628;
  SSL_F_TLS1_SETUP_KEY_BLOCK = 211;
  SSL_F_TLS1_SET_GROUPS = 629;
  SSL_F_TLS1_SET_RAW_SIGALGS = 630;
  SSL_F_TLS1_SET_SERVER_SIGALGS = 335;
  SSL_F_TLS1_SET_SHARED_SIGALGS = 631;
  SSL_F_TLS1_SET_SIGALGS = 632;
  SSL_F_TLS_CHOOSE_SIGALG = 513;
  SSL_F_TLS_CLIENT_KEY_EXCHANGE_POST_WORK = 354;
  SSL_F_TLS_COLLECT_EXTENSIONS = 435;
  SSL_F_TLS_CONSTRUCT_CERTIFICATE_AUTHORITIES = 542;
  SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST = 372;
  SSL_F_TLS_CONSTRUCT_CERT_STATUS = 429;
  SSL_F_TLS_CONSTRUCT_CERT_STATUS_BODY = 494;
  SSL_F_TLS_CONSTRUCT_CERT_VERIFY = 496;
  SSL_F_TLS_CONSTRUCT_CHANGE_CIPHER_SPEC = 427;
  SSL_F_TLS_CONSTRUCT_CKE_DHE = 404;
  SSL_F_TLS_CONSTRUCT_CKE_ECDHE = 405;
  SSL_F_TLS_CONSTRUCT_CKE_GOST = 406;
  SSL_F_TLS_CONSTRUCT_CKE_PSK_PREAMBLE = 407;
  SSL_F_TLS_CONSTRUCT_CKE_RSA = 409;
  SSL_F_TLS_CONSTRUCT_CKE_SRP = 410;
  SSL_F_TLS_CONSTRUCT_CLIENT_CERTIFICATE = 484;
  SSL_F_TLS_CONSTRUCT_CLIENT_HELLO = 487;
  SSL_F_TLS_CONSTRUCT_CLIENT_KEY_EXCHANGE = 488;
  SSL_F_TLS_CONSTRUCT_CLIENT_VERIFY = 489;
  SSL_F_TLS_CONSTRUCT_CTOS_ALPN = 466;
  SSL_F_TLS_CONSTRUCT_CTOS_CERTIFICATE = 355;
  SSL_F_TLS_CONSTRUCT_CTOS_COOKIE = 535;
  SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA = 530;
  SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS = 467;
  SSL_F_TLS_CONSTRUCT_CTOS_EMS = 468;
  SSL_F_TLS_CONSTRUCT_CTOS_ETM = 469;
  SSL_F_TLS_CONSTRUCT_CTOS_HELLO = 356;
  SSL_F_TLS_CONSTRUCT_CTOS_KEY_EXCHANGE = 357;
  SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE = 470;
  SSL_F_TLS_CONSTRUCT_CTOS_MAXFRAGMENTLEN = 549;
  SSL_F_TLS_CONSTRUCT_CTOS_NPN = 471;
  SSL_F_TLS_CONSTRUCT_CTOS_PADDING = 472;
  SSL_F_TLS_CONSTRUCT_CTOS_POST_HANDSHAKE_AUTH = 619;
  SSL_F_TLS_CONSTRUCT_CTOS_PSK = 501;
  SSL_F_TLS_CONSTRUCT_CTOS_PSK_KEX_MODES = 509;
  SSL_F_TLS_CONSTRUCT_CTOS_RENEGOTIATE = 473;
  SSL_F_TLS_CONSTRUCT_CTOS_SCT = 474;
  SSL_F_TLS_CONSTRUCT_CTOS_SERVER_NAME = 475;
  SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET = 476;
  SSL_F_TLS_CONSTRUCT_CTOS_SIG_ALGS = 477;
  SSL_F_TLS_CONSTRUCT_CTOS_SRP = 478;
  SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST = 479;
  SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS = 480;
  SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS = 481;
  SSL_F_TLS_CONSTRUCT_CTOS_USE_SRTP = 482;
  SSL_F_TLS_CONSTRUCT_CTOS_VERIFY = 358;
  SSL_F_TLS_CONSTRUCT_ENCRYPTED_EXTENSIONS = 443;
  SSL_F_TLS_CONSTRUCT_END_OF_EARLY_DATA = 536;
  SSL_F_TLS_CONSTRUCT_EXTENSIONS = 447;
  SSL_F_TLS_CONSTRUCT_FINISHED = 359;
  SSL_F_TLS_CONSTRUCT_HELLO_REQUEST = 373;
  SSL_F_TLS_CONSTRUCT_HELLO_RETRY_REQUEST = 510;
  SSL_F_TLS_CONSTRUCT_KEY_UPDATE = 517;
  SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET = 428;
  SSL_F_TLS_CONSTRUCT_NEXT_PROTO = 426;
  SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE = 490;
  SSL_F_TLS_CONSTRUCT_SERVER_HELLO = 491;
  SSL_F_TLS_CONSTRUCT_SERVER_KEY_EXCHANGE = 492;
  SSL_F_TLS_CONSTRUCT_STOC_ALPN = 451;
  SSL_F_TLS_CONSTRUCT_STOC_CERTIFICATE = 374;
  SSL_F_TLS_CONSTRUCT_STOC_COOKIE = 613;
  SSL_F_TLS_CONSTRUCT_STOC_CRYPTOPRO_BUG = 452;
  SSL_F_TLS_CONSTRUCT_STOC_DONE = 375;
  SSL_F_TLS_CONSTRUCT_STOC_EARLY_DATA = 531;
  SSL_F_TLS_CONSTRUCT_STOC_EARLY_DATA_INFO = 525;
  SSL_F_TLS_CONSTRUCT_STOC_EC_PT_FORMATS = 453;
  SSL_F_TLS_CONSTRUCT_STOC_EMS = 454;
  SSL_F_TLS_CONSTRUCT_STOC_ETM = 455;
  SSL_F_TLS_CONSTRUCT_STOC_HELLO = 376;
  SSL_F_TLS_CONSTRUCT_STOC_KEY_EXCHANGE = 377;
  SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE = 456;
  SSL_F_TLS_CONSTRUCT_STOC_MAXFRAGMENTLEN = 548;
  SSL_F_TLS_CONSTRUCT_STOC_NEXT_PROTO_NEG = 457;
  SSL_F_TLS_CONSTRUCT_STOC_PSK = 504;
  SSL_F_TLS_CONSTRUCT_STOC_RENEGOTIATE = 458;
  SSL_F_TLS_CONSTRUCT_STOC_SERVER_NAME = 459;
  SSL_F_TLS_CONSTRUCT_STOC_SESSION_TICKET = 460;
  SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST = 461;
  SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS = 544;
  SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_VERSIONS = 611;
  SSL_F_TLS_CONSTRUCT_STOC_USE_SRTP = 462;
  SSL_F_TLS_EARLY_POST_PROCESS_CLIENT_HELLO = 521;
  SSL_F_TLS_FINISH_HANDSHAKE = 597;
  SSL_F_TLS_GET_MESSAGE_BODY = 351;
  SSL_F_TLS_GET_MESSAGE_HEADER = 387;
  SSL_F_TLS_HANDLE_ALPN = 562;
  SSL_F_TLS_HANDLE_STATUS_REQUEST = 563;
  SSL_F_TLS_PARSE_CERTIFICATE_AUTHORITIES = 566;
  SSL_F_TLS_PARSE_CLIENTHELLO_TLSEXT = 449;
  SSL_F_TLS_PARSE_CTOS_ALPN = 567;
  SSL_F_TLS_PARSE_CTOS_COOKIE = 614;
  SSL_F_TLS_PARSE_CTOS_EARLY_DATA = 568;
  SSL_F_TLS_PARSE_CTOS_EC_PT_FORMATS = 569;
  SSL_F_TLS_PARSE_CTOS_EMS = 570;
  SSL_F_TLS_PARSE_CTOS_KEY_SHARE = 463;
  SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN = 571;
  SSL_F_TLS_PARSE_CTOS_POST_HANDSHAKE_AUTH = 620;
  SSL_F_TLS_PARSE_CTOS_PSK = 505;
  SSL_F_TLS_PARSE_CTOS_PSK_KEX_MODES = 572;
  SSL_F_TLS_PARSE_CTOS_RENEGOTIATE = 464;
  SSL_F_TLS_PARSE_CTOS_SERVER_NAME = 573;
  SSL_F_TLS_PARSE_CTOS_SESSION_TICKET = 574;
  SSL_F_TLS_PARSE_CTOS_SIG_ALGS = 575;
  SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT = 615;
  SSL_F_TLS_PARSE_CTOS_SRP = 576;
  SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST = 577;
  SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS = 578;
  SSL_F_TLS_PARSE_CTOS_USE_SRTP = 465;
  SSL_F_TLS_PARSE_STOC_ALPN = 579;
  SSL_F_TLS_PARSE_STOC_COOKIE = 534;
  SSL_F_TLS_PARSE_STOC_EARLY_DATA = 538;
  SSL_F_TLS_PARSE_STOC_EARLY_DATA_INFO = 528;
  SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS = 580;
  SSL_F_TLS_PARSE_STOC_KEY_SHARE = 445;
  SSL_F_TLS_PARSE_STOC_MAXFRAGMENTLEN = 581;
  SSL_F_TLS_PARSE_STOC_NPN = 582;
  SSL_F_TLS_PARSE_STOC_PSK = 502;
  SSL_F_TLS_PARSE_STOC_RENEGOTIATE = 448;
  SSL_F_TLS_PARSE_STOC_SCT = 564;
  SSL_F_TLS_PARSE_STOC_SERVER_NAME = 583;
  SSL_F_TLS_PARSE_STOC_SESSION_TICKET = 584;
  SSL_F_TLS_PARSE_STOC_STATUS_REQUEST = 585;
  SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS = 612;
  SSL_F_TLS_PARSE_STOC_USE_SRTP = 446;
  SSL_F_TLS_POST_PROCESS_CLIENT_HELLO = 378;
  SSL_F_TLS_POST_PROCESS_CLIENT_KEY_EXCHANGE = 384;
  SSL_F_TLS_PREPARE_CLIENT_CERTIFICATE = 360;
  SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST = 610;
  SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST = 361;
  SSL_F_TLS_PROCESS_CERT_STATUS = 362;
  SSL_F_TLS_PROCESS_CERT_STATUS_BODY = 495;
  SSL_F_TLS_PROCESS_CERT_VERIFY = 379;
  SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC = 363;
  SSL_F_TLS_PROCESS_CKE_DHE = 411;
  SSL_F_TLS_PROCESS_CKE_ECDHE = 412;
  SSL_F_TLS_PROCESS_CKE_GOST = 413;
  SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE = 414;
  SSL_F_TLS_PROCESS_CKE_RSA = 415;
  SSL_F_TLS_PROCESS_CKE_SRP = 416;
  SSL_F_TLS_PROCESS_CLIENT_CERTIFICATE = 380;
  SSL_F_TLS_PROCESS_CLIENT_HELLO = 381;
  SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE = 382;
  SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS = 444;
  SSL_F_TLS_PROCESS_END_OF_EARLY_DATA = 537;
  SSL_F_TLS_PROCESS_FINISHED = 364;
  SSL_F_TLS_PROCESS_HELLO_REQ = 507;
  SSL_F_TLS_PROCESS_HELLO_RETRY_REQUEST = 511;
  SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT = 442;
  SSL_F_TLS_PROCESS_KEY_EXCHANGE = 365;
  SSL_F_TLS_PROCESS_KEY_UPDATE = 518;
  SSL_F_TLS_PROCESS_NEW_SESSION_TICKET = 366;
  SSL_F_TLS_PROCESS_NEXT_PROTO = 383;
  SSL_F_TLS_PROCESS_SERVER_CERTIFICATE = 367;
  SSL_F_TLS_PROCESS_SERVER_DONE = 368;
  SSL_F_TLS_PROCESS_SERVER_HELLO = 369;
  SSL_F_TLS_PROCESS_SKE_DHE = 419;
  SSL_F_TLS_PROCESS_SKE_ECDHE = 420;
  SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE = 421;
  SSL_F_TLS_PROCESS_SKE_SRP = 422;
  SSL_F_TLS_PSK_DO_BINDER = 506;
  SSL_F_TLS_SCAN_CLIENTHELLO_TLSEXT = 450;
  SSL_F_TLS_SETUP_HANDSHAKE = 508;
  SSL_F_USE_CERTIFICATE_CHAIN_FILE = 220;
  SSL_F_WPACKET_INTERN_INIT_LEN = 633;
  SSL_F_WPACKET_START_SUB_PACKET_LEN__ = 634;
  SSL_F_WRITE_STATE_MACHINE = 586;
  SSL_R_APPLICATION_DATA_AFTER_CLOSE_NOTIFY = 291;
  SSL_R_APP_DATA_IN_HANDSHAKE = 100;
  SSL_R_ATTEMPT_TO_REUSE_SESSION_IN_DIFFERENT_CONTEXT = 272;
  SSL_R_AT_LEAST_TLS_1_0_NEEDED_IN_FIPS_MODE = 143;
  SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE = 158;
  SSL_R_BAD_CHANGE_CIPHER_SPEC = 103;
  SSL_R_BAD_CIPHER = 186;
  SSL_R_BAD_DATA = 390;
  SSL_R_BAD_DATA_RETURNED_BY_CALLBACK = 106;
  SSL_R_BAD_DECOMPRESSION = 107;
  SSL_R_BAD_DH_VALUE = 102;
  SSL_R_BAD_DIGEST_LENGTH = 111;
  SSL_R_BAD_EARLY_DATA = 233;
  SSL_R_BAD_ECC_CERT = 304;
  SSL_R_BAD_ECPOINT = 306;
  SSL_R_BAD_EXTENSION = 110;
  SSL_R_BAD_HANDSHAKE_LENGTH = 332;
  SSL_R_BAD_HANDSHAKE_STATE = 236;
  SSL_R_BAD_HELLO_REQUEST = 105;
  SSL_R_BAD_HRR_VERSION = 263;
  SSL_R_BAD_KEY_SHARE = 108;
  SSL_R_BAD_KEY_UPDATE = 122;
  SSL_R_BAD_LEGACY_VERSION = 292;
  SSL_R_BAD_LENGTH = 271;
  SSL_R_BAD_PACKET = 240;
  SSL_R_BAD_PACKET_LENGTH = 115;
  SSL_R_BAD_PROTOCOL_VERSION_NUMBER = 116;
  SSL_R_BAD_PSK = 219;
  SSL_R_BAD_PSK_IDENTITY = 114;
  SSL_R_BAD_RECORD_TYPE = 443;
  SSL_R_BAD_RSA_ENCRYPT = 119;
  SSL_R_BAD_SIGNATURE = 123;
  SSL_R_BAD_SRP_A_LENGTH = 347;
  SSL_R_BAD_SRP_PARAMETERS = 371;
  SSL_R_BAD_SRTP_MKI_VALUE = 352;
  SSL_R_BAD_SRTP_PROTECTION_PROFILE_LIST = 353;
  SSL_R_BAD_SSL_FILETYPE = 124;
  SSL_R_BAD_VALUE = 384;
  SSL_R_BAD_WRITE_RETRY = 127;
  SSL_R_BINDER_DOES_NOT_VERIFY = 253;
  SSL_R_BIO_NOT_SET = 128;
  SSL_R_BLOCK_CIPHER_PAD_IS_WRONG = 129;
  SSL_R_BN_LIB = 130;
  SSL_R_CALLBACK_FAILED = 234;
  SSL_R_CANNOT_CHANGE_CIPHER = 109;
  SSL_R_CA_DN_LENGTH_MISMATCH = 131;
  SSL_R_CA_KEY_TOO_SMALL = 397;
  SSL_R_CA_MD_TOO_WEAK = 398;
  SSL_R_CCS_RECEIVED_EARLY = 133;
  SSL_R_CERTIFICATE_VERIFY_FAILED = 134;
  SSL_R_CERT_CB_ERROR = 377;
  SSL_R_CERT_LENGTH_MISMATCH = 135;
  SSL_R_CIPHERSUITE_DIGEST_HAS_CHANGED = 218;
  SSL_R_CIPHER_CODE_WRONG_LENGTH = 137;
  SSL_R_CIPHER_OR_HASH_UNAVAILABLE = 138;
  SSL_R_CLIENTHELLO_TLSEXT = 226;
  SSL_R_COMPRESSED_LENGTH_TOO_LONG = 140;
  SSL_R_COMPRESSION_DISABLED = 343;
  SSL_R_COMPRESSION_FAILURE = 141;
  SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE = 307;
  SSL_R_COMPRESSION_LIBRARY_ERROR = 142;
  SSL_R_CONNECTION_TYPE_NOT_SET = 144;
  SSL_R_CONTEXT_NOT_DANE_ENABLED = 167;
  SSL_R_COOKIE_GEN_CALLBACK_FAILURE = 400;
  SSL_R_COOKIE_MISMATCH = 308;
  SSL_R_CUSTOM_EXT_HANDLER_ALREADY_INSTALLED = 206;
  SSL_R_DANE_ALREADY_ENABLED = 172;
  SSL_R_DANE_CANNOT_OVERRIDE_MTYPE_FULL = 173;
  SSL_R_DANE_NOT_ENABLED = 175;
  SSL_R_DANE_TLSA_BAD_CERTIFICATE = 180;
  SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE = 184;
  SSL_R_DANE_TLSA_BAD_DATA_LENGTH = 189;
  SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH = 192;
  SSL_R_DANE_TLSA_BAD_MATCHING_TYPE = 200;
  SSL_R_DANE_TLSA_BAD_PUBLIC_KEY = 201;
  SSL_R_DANE_TLSA_BAD_SELECTOR = 202;
  SSL_R_DANE_TLSA_NULL_DATA = 203;
  SSL_R_DATA_BETWEEN_CCS_AND_FINISHED = 145;
  SSL_R_DATA_LENGTH_TOO_LONG = 146;
  SSL_R_DECRYPTION_FAILED = 147;
  SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC = 281;
  SSL_R_DH_KEY_TOO_SMALL = 394;
  SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG = 148;
  SSL_R_DIGEST_CHECK_FAILED = 149;
  SSL_R_DTLS_MESSAGE_TOO_BIG = 334;
  SSL_R_DUPLICATE_COMPRESSION_ID = 309;
  SSL_R_ECC_CERT_NOT_FOR_SIGNING = 318;
  SSL_R_ECDH_REQUIRED_FOR_SUITEB_MODE = 374;
  SSL_R_EE_KEY_TOO_SMALL = 399;
  SSL_R_EMPTY_SRTP_PROTECTION_PROFILE_LIST = 354;
  SSL_R_ENCRYPTED_LENGTH_TOO_LONG = 150;
  SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST = 151;
  SSL_R_ERROR_SETTING_TLSA_BASE_DOMAIN = 204;
  SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE = 194;
  SSL_R_EXCESSIVE_MESSAGE_SIZE = 152;
  SSL_R_EXTENSION_NOT_RECEIVED = 279;
  SSL_R_EXTRA_DATA_IN_MESSAGE = 153;
  SSL_R_EXT_LENGTH_MISMATCH = 163;
  SSL_R_FAILED_TO_INIT_ASYNC = 405;
  SSL_R_FRAGMENTED_CLIENT_HELLO = 401;
  SSL_R_GOT_A_FIN_BEFORE_A_CCS = 154;
  SSL_R_HTTPS_PROXY_REQUEST = 155;
  SSL_R_HTTP_REQUEST = 156;
  SSL_R_ILLEGAL_POINT_COMPRESSION = 162;
  SSL_R_ILLEGAL_SUITEB_DIGEST = 380;
  SSL_R_INAPPROPRIATE_FALLBACK = 373;
  SSL_R_INCONSISTENT_COMPRESSION = 340;
  SSL_R_INCONSISTENT_EARLY_DATA_ALPN = 222;
  SSL_R_INCONSISTENT_EARLY_DATA_SNI = 231;
  SSL_R_INCONSISTENT_EXTMS = 104;
  SSL_R_INSUFFICIENT_SECURITY = 241;
  SSL_R_INVALID_ALERT = 205;
  SSL_R_INVALID_CCS_MESSAGE = 260;
  SSL_R_INVALID_CERTIFICATE_OR_ALG = 238;
  SSL_R_INVALID_COMMAND = 280;
  SSL_R_INVALID_COMPRESSION_ALGORITHM = 341;
  SSL_R_INVALID_CONFIG = 283;
  SSL_R_INVALID_CONFIGURATION_NAME = 113;
  SSL_R_INVALID_CONTEXT = 282;
  SSL_R_INVALID_CT_VALIDATION_TYPE = 212;
  SSL_R_INVALID_KEY_UPDATE_TYPE = 120;
  SSL_R_INVALID_MAX_EARLY_DATA = 174;
  SSL_R_INVALID_NULL_CMD_NAME = 385;
  SSL_R_INVALID_SEQUENCE_NUMBER = 402;
  SSL_R_INVALID_SERVERINFO_DATA = 388;
  SSL_R_INVALID_SESSION_ID = 999;
  SSL_R_INVALID_SRP_USERNAME = 357;
  SSL_R_INVALID_STATUS_RESPONSE = 328;
  SSL_R_INVALID_TICKET_KEYS_LENGTH = 325;
  SSL_R_LENGTH_MISMATCH = 159;
  SSL_R_LENGTH_TOO_LONG = 404;
  SSL_R_LENGTH_TOO_SHORT = 160;
  SSL_R_LIBRARY_BUG = 274;
  SSL_R_LIBRARY_HAS_NO_CIPHERS = 161;
  SSL_R_MISSING_DSA_SIGNING_CERT = 165;
  SSL_R_MISSING_ECDSA_SIGNING_CERT = 381;
  SSL_R_MISSING_FATAL = 256;
  SSL_R_MISSING_PARAMETERS = 290;
  SSL_R_MISSING_RSA_CERTIFICATE = 168;
  SSL_R_MISSING_RSA_ENCRYPTING_CERT = 169;
  SSL_R_MISSING_RSA_SIGNING_CERT = 170;
  SSL_R_MISSING_SIGALGS_EXTENSION = 112;
  SSL_R_MISSING_SIGNING_CERT = 221;
  SSL_R_MISSING_SRP_PARAM = 358;
  SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION = 209;
  SSL_R_MISSING_TMP_DH_KEY = 171;
  SSL_R_MISSING_TMP_ECDH_KEY = 311;
  SSL_R_MIXED_HANDSHAKE_AND_NON_HANDSHAKE_DATA = 293;
  SSL_R_NOT_ON_RECORD_BOUNDARY = 182;
  SSL_R_NOT_REPLACING_CERTIFICATE = 289;
  SSL_R_NOT_SERVER = 284;
  SSL_R_NO_APPLICATION_PROTOCOL = 235;
  SSL_R_NO_CERTIFICATES_RETURNED = 176;
  SSL_R_NO_CERTIFICATE_ASSIGNED = 177;
  SSL_R_NO_CERTIFICATE_SET = 179;
  SSL_R_NO_CHANGE_FOLLOWING_HRR = 214;
  SSL_R_NO_CIPHERS_AVAILABLE = 181;
  SSL_R_NO_CIPHERS_SPECIFIED = 183;
  SSL_R_NO_CIPHER_MATCH = 185;
  SSL_R_NO_CLIENT_CERT_METHOD = 331;
  SSL_R_NO_COMPRESSION_SPECIFIED = 187;
  SSL_R_NO_COOKIE_CALLBACK_SET = 287;
  SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER = 330;
  SSL_R_NO_METHOD_SPECIFIED = 188;
  SSL_R_NO_PEM_EXTENSIONS = 389;
  SSL_R_NO_PRIVATE_KEY_ASSIGNED = 190;
  SSL_R_NO_PROTOCOLS_AVAILABLE = 191;
  SSL_R_NO_RENEGOTIATION = 339;
  SSL_R_NO_REQUIRED_DIGEST = 324;
  SSL_R_NO_SHARED_CIPHER = 193;
  SSL_R_NO_SHARED_GROUPS = 410;
  SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS = 376;
  SSL_R_NO_SRTP_PROFILES = 359;
  SSL_R_NO_SUITABLE_KEY_SHARE = 101;
  SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM = 118;
  SSL_R_NO_VALID_SCTS = 216;
  SSL_R_NO_VERIFY_COOKIE_CALLBACK = 403;
  SSL_R_NULL_SSL_CTX = 195;
  SSL_R_NULL_SSL_METHOD_PASSED = 196;
  SSL_R_OLD_SESSION_CIPHER_NOT_RETURNED = 197;
  SSL_R_OLD_SESSION_COMPRESSION_ALGORITHM_NOT_RETURNED = 344;
  SSL_R_OVERFLOW_ERROR = 237;
  SSL_R_PACKET_LENGTH_TOO_LONG = 198;
  SSL_R_PARSE_TLSEXT = 227;
  SSL_R_PATH_TOO_LONG = 270;
  SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE = 199;
  SSL_R_PEM_NAME_BAD_PREFIX = 391;
  SSL_R_PEM_NAME_TOO_SHORT = 392;
  SSL_R_PIPELINE_FAILURE = 406;
  SSL_R_POST_HANDSHAKE_AUTH_ENCODING_ERR = 278;
  SSL_R_PRIVATE_KEY_MISMATCH = 288;
  SSL_R_PROTOCOL_IS_SHUTDOWN = 207;
  SSL_R_PSK_IDENTITY_NOT_FOUND = 223;
  SSL_R_PSK_NO_CLIENT_CB = 224;
  SSL_R_PSK_NO_SERVER_CB = 225;
  SSL_R_READ_BIO_NOT_SET = 211;
  SSL_R_READ_TIMEOUT_EXPIRED = 312;
  SSL_R_RECORD_LENGTH_MISMATCH = 213;
  SSL_R_RECORD_TOO_SMALL = 298;
  SSL_R_RENEGOTIATE_EXT_TOO_LONG = 335;
  SSL_R_RENEGOTIATION_ENCODING_ERR = 336;
  SSL_R_RENEGOTIATION_MISMATCH = 337;
  SSL_R_REQUEST_PENDING = 285;
  SSL_R_REQUEST_SENT = 286;
  SSL_R_REQUIRED_CIPHER_MISSING = 215;
  SSL_R_REQUIRED_COMPRESSION_ALGORITHM_MISSING = 342;
  SSL_R_SCSV_RECEIVED_WHEN_RENEGOTIATING = 345;
  SSL_R_SCT_VERIFICATION_FAILED = 208;
  SSL_R_SERVERHELLO_TLSEXT = 275;
  SSL_R_SESSION_ID_CONTEXT_UNINITIALIZED = 277;
  SSL_R_SHUTDOWN_WHILE_IN_INIT = 407;
  SSL_R_SIGNATURE_ALGORITHMS_ERROR = 360;
  SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE = 220;
  SSL_R_SRP_A_CALC = 361;
  SSL_R_SRTP_COULD_NOT_ALLOCATE_PROFILES = 362;
  SSL_R_SRTP_PROTECTION_PROFILE_LIST_TOO_LONG = 363;
  SSL_R_SRTP_UNKNOWN_PROTECTION_PROFILE = 364;
  SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH = 232;
  SSL_R_SSL3_EXT_INVALID_SERVERNAME = 319;
  SSL_R_SSL3_EXT_INVALID_SERVERNAME_TYPE = 320;
  SSL_R_SSL3_SESSION_ID_TOO_LONG = 300;
  SSL_R_SSLV3_ALERT_BAD_CERTIFICATE = 1042;
  SSL_R_SSLV3_ALERT_BAD_RECORD_MAC = 1020;
  SSL_R_SSLV3_ALERT_CERTIFICATE_EXPIRED = 1045;
  SSL_R_SSLV3_ALERT_CERTIFICATE_REVOKED = 1044;
  SSL_R_SSLV3_ALERT_CERTIFICATE_UNKNOWN = 1046;
  SSL_R_SSLV3_ALERT_DECOMPRESSION_FAILURE = 1030;
  SSL_R_SSLV3_ALERT_HANDSHAKE_FAILURE = 1040;
  SSL_R_SSLV3_ALERT_ILLEGAL_PARAMETER = 1047;
  SSL_R_SSLV3_ALERT_NO_CERTIFICATE = 1041;
  SSL_R_SSLV3_ALERT_UNEXPECTED_MESSAGE = 1010;
  SSL_R_SSLV3_ALERT_UNSUPPORTED_CERTIFICATE = 1043;
  SSL_R_SSL_COMMAND_SECTION_EMPTY = 117;
  SSL_R_SSL_COMMAND_SECTION_NOT_FOUND = 125;
  SSL_R_SSL_CTX_HAS_NO_DEFAULT_SSL_VERSION = 228;
  SSL_R_SSL_HANDSHAKE_FAILURE = 229;
  SSL_R_SSL_LIBRARY_HAS_NO_CIPHERS = 230;
  SSL_R_SSL_NEGATIVE_LENGTH = 372;
  SSL_R_SSL_SECTION_EMPTY = 126;
  SSL_R_SSL_SECTION_NOT_FOUND = 136;
  SSL_R_SSL_SESSION_ID_CALLBACK_FAILED = 301;
  SSL_R_SSL_SESSION_ID_CONFLICT = 302;
  SSL_R_SSL_SESSION_ID_CONTEXT_TOO_LONG = 273;
  SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH = 303;
  SSL_R_SSL_SESSION_ID_TOO_LONG = 408;
  SSL_R_SSL_SESSION_VERSION_MISMATCH = 210;
  SSL_R_STILL_IN_INIT = 121;
  SSL_R_TLSV13_ALERT_CERTIFICATE_REQUIRED = 1116;
  SSL_R_TLSV13_ALERT_MISSING_EXTENSION = 1109;
  SSL_R_TLSV1_ALERT_ACCESS_DENIED = 1049;
  SSL_R_TLSV1_ALERT_DECODE_ERROR = 1050;
  SSL_R_TLSV1_ALERT_DECRYPTION_FAILED = 1021;
  SSL_R_TLSV1_ALERT_DECRYPT_ERROR = 1051;
  SSL_R_TLSV1_ALERT_EXPORT_RESTRICTION = 1060;
  SSL_R_TLSV1_ALERT_INAPPROPRIATE_FALLBACK = 1086;
  SSL_R_TLSV1_ALERT_INSUFFICIENT_SECURITY = 1071;
  SSL_R_TLSV1_ALERT_INTERNAL_ERROR = 1080;
  SSL_R_TLSV1_ALERT_NO_RENEGOTIATION = 1100;
  SSL_R_TLSV1_ALERT_PROTOCOL_VERSION = 1070;
  SSL_R_TLSV1_ALERT_RECORD_OVERFLOW = 1022;
  SSL_R_TLSV1_ALERT_UNKNOWN_CA = 1048;
  SSL_R_TLSV1_ALERT_USER_CANCELLED = 1090;
  SSL_R_TLSV1_BAD_CERTIFICATE_HASH_VALUE = 1114;
  SSL_R_TLSV1_BAD_CERTIFICATE_STATUS_RESPONSE = 1113;
  SSL_R_TLSV1_CERTIFICATE_UNOBTAINABLE = 1111;
  SSL_R_TLSV1_UNRECOGNIZED_NAME = 1112;
  SSL_R_TLSV1_UNSUPPORTED_EXTENSION = 1110;
  SSL_R_TLS_HEARTBEAT_PEER_DOESNT_ACCEPT = 365;
  SSL_R_TLS_HEARTBEAT_PENDING = 366;
  SSL_R_TLS_ILLEGAL_EXPORTER_LABEL = 367;
  SSL_R_TLS_INVALID_ECPOINTFORMAT_LIST = 157;
  SSL_R_TOO_MANY_KEY_UPDATES = 132;
  SSL_R_TOO_MANY_WARN_ALERTS = 409;
  SSL_R_TOO_MUCH_EARLY_DATA = 164;
  SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS = 314;
  SSL_R_UNABLE_TO_FIND_PUBLIC_KEY_PARAMETERS = 239;
  SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES = 242;
  SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES = 243;
  SSL_R_UNEXPECTED_CCS_MESSAGE = 262;
  SSL_R_UNEXPECTED_END_OF_EARLY_DATA = 178;
  SSL_R_UNEXPECTED_MESSAGE = 244;
  SSL_R_UNEXPECTED_RECORD = 245;
  SSL_R_UNINITIALIZED = 276;
  SSL_R_UNKNOWN_ALERT_TYPE = 246;
  SSL_R_UNKNOWN_CERTIFICATE_TYPE = 247;
  SSL_R_UNKNOWN_CIPHER_RETURNED = 248;
  SSL_R_UNKNOWN_CIPHER_TYPE = 249;
  SSL_R_UNKNOWN_CMD_NAME = 386;
  SSL_R_UNKNOWN_COMMAND = 139;
  SSL_R_UNKNOWN_DIGEST = 368;
  SSL_R_UNKNOWN_KEY_EXCHANGE_TYPE = 250;
  SSL_R_UNKNOWN_PKEY_TYPE = 251;
  SSL_R_UNKNOWN_PROTOCOL = 252;
  SSL_R_UNKNOWN_SSL_VERSION = 254;
  SSL_R_UNKNOWN_STATE = 255;
  SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED = 338;
  SSL_R_UNSOLICITED_EXTENSION = 217;
  SSL_R_UNSUPPORTED_COMPRESSION_ALGORITHM = 257;
  SSL_R_UNSUPPORTED_ELLIPTIC_CURVE = 315;
  SSL_R_UNSUPPORTED_PROTOCOL = 258;
  SSL_R_UNSUPPORTED_SSL_VERSION = 259;
  SSL_R_UNSUPPORTED_STATUS_TYPE = 329;
  SSL_R_USE_SRTP_NOT_NEGOTIATED = 369;
  SSL_R_VERSION_TOO_HIGH = 166;
  SSL_R_VERSION_TOO_LOW = 396;
  SSL_R_WRONG_CERTIFICATE_TYPE = 383;
  SSL_R_WRONG_CIPHER_RETURNED = 261;
  SSL_R_WRONG_CURVE = 378;
  SSL_R_WRONG_SIGNATURE_LENGTH = 264;
  SSL_R_WRONG_SIGNATURE_SIZE = 265;
  SSL_R_WRONG_SIGNATURE_TYPE = 370;
  SSL_R_WRONG_SSL_VERSION = 266;
  SSL_R_WRONG_VERSION_NUMBER = 267;
  SSL_R_X509_LIB = 268;
  SSL_R_X509_VERIFICATION_SETUP_PROBLEMS = 269;

procedure Load(const ADllHandle: TIdLibHandle; const AFailed: TStringList);
procedure UnLoad;

var
  ERR_load_SSL_strings: function: TIdC_INT cdecl = nil;

implementation

procedure Load(const ADllHandle: TIdLibHandle; const AFailed: TStringList);

  function LoadFunction(const AMethodName: string; const AFailed: TStringList): Pointer;
  begin
    Result := LoadLibFunction(ADllHandle, AMethodName);
    if not Assigned(Result) then
      AFailed.Add(AMethodName);
  end;

begin
  ERR_load_SSL_strings := LoadFunction('ERR_load_SSL_strings', AFailed);
end;

procedure UnLoad;
begin
  ERR_load_SSL_strings := nil;
end;

end.
