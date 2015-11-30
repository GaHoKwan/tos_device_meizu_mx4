.class public Lcom/meizu/telephony/MzPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MzPhoneNumberUtils.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = ""
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field private static final BRASIL_COUNTRY_CODE:I = 0x37

.field private static final CHINA_COUNTRY_CODE:I = 0x56

.field public static final CHINA_PHONE_NUMBER_SIZE:I = 0xb

.field private static final CN_IP_PREFIX_LENGTH:I = 0x5

.field private static final COUNTRY_CODES:[Ljava/lang/String;

.field private static final IP_DIAL_NUMBER:[Ljava/lang/String;

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

.field private static final SPECAIL_NUMBER_OF_CHINA_RES:[I

.field private static final TAG:Ljava/lang/String; = "MzPhoneNumberUtils"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 41
    const-string v0, "MzPhoneNumberUtils"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->VDBG:Z

    .line 43
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10000"

    aput-object v1, v0, v4

    const-string v1, "10010"

    aput-object v1, v0, v5

    const-string v1, "10011"

    aput-object v1, v0, v3

    const-string v1, "10050"

    aput-object v1, v0, v6

    const-string v1, "10086"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "10087"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12121"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12315"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "12348"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "12358"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12369"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12365"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12366"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "12310"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "12333"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "12345"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "4008111111"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "4006789000"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "4006781515"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "4009881888"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "8008208388"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "8008108000"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "4008108000"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "8008209868"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "4008209868"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "4008305555"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "11185"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "95519"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "95522"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "95528"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "95533"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "95555"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "95556"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "95558"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "95501"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "95502"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "95505"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "95508"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "95509"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "95510"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "95511"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "95512"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "95515"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "95516"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "95518"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "95559"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "95561"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "95565"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "95566"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "95567"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "95568"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "95569"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "95577"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "95580"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "95585"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "95586"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "95588"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "95589"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "95590"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "95591"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "95595"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "95596"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "95598"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "95599"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "4007883333"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    .line 113
    const/16 v0, 0x41

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    .line 182
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v4

    const-string v1, "17951"

    aput-object v1, v0, v5

    const-string v1, "17911"

    aput-object v1, v0, v3

    const-string v1, "17910"

    aput-object v1, v0, v6

    const-string v1, "17909"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "10131"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "96531"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "193"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "12589"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12598"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12520"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    .line 187
    const/16 v0, 0xe5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "86"

    aput-object v1, v0, v4

    const-string v1, "852"

    aput-object v1, v0, v5

    const-string v1, "853"

    aput-object v1, v0, v3

    const-string v1, "886"

    aput-object v1, v0, v6

    const-string v1, "93"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "355"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "213"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "684"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "376"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "244"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1264"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "672"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1268"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "374"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "297"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "994"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "973"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "880"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1246"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "375"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "501"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1441"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "975"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "387"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "267"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "1284"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "673"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "359"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "257"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "855"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "237"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "238"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "1345"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "236"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "235"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "243"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "242"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "682"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "385"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "420"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "253"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "1767"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "1809"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "503"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "291"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "251"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "500"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "298"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "679"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "594"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "689"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "241"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "995"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "233"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "350"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "299"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "1473"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "590"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "1671"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "502"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "1481"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "245"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "592"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "509"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "379"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "504"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "964"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "1876"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "962"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "254"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "686"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "850"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "965"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "996"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "856"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "961"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "266"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "423"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "389"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "261"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "265"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "960"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "692"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "596"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "222"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "230"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "269"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "691"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "373"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "976"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "1664"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "212"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "258"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "264"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "674"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "977"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "599"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "687"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "505"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "234"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "683"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, ",6723"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "968"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "680"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "507"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "675"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "595"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "1809"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "974"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "250"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "290"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "1869"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "1758"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "508"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "1784"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "685"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "378"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "239"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "966"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "221"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "381"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "232"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "677"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "252"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "249"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "597"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "963"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "992"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "1242"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "220"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "690"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "676"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "1868"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "993"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "1649"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "688"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "256"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "380"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "998"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "678"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "1340"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "681"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "967"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "263"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .line 404
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 113
    :array_0
    .array-data 4
        0x1040628
        0x1040629
        0x1040629
        0x104062a
        0x104062b
        0x104062b
        0x104062c
        0x104062d
        0x104062e
        0x104062f
        0x1040630
        0x1040631
        0x1040632
        0x1040633
        0x1040634
        0x1040635
        0x1040636
        0x1040637
        0x1040638
        0x1040639
        0x104063a
        0x104063b
        0x104063b
        0x104063c
        0x104063c
        0x104063d
        0x104063e
        0x104063f
        0x1040640
        0x1040641
        0x1040642
        0x1040643
        0x1040644
        0x1040645
        0x1040646
        0x1040647
        0x1040648
        0x1040649
        0x104064a
        0x104064b
        0x104064c
        0x104064d
        0x104064e
        0x104064f
        0x1040650
        0x1040651
        0x1040652
        0x1040653
        0x1040654
        0x1040655
        0x1040656
        0x1040657
        0x1040658
        0x1040659
        0x104065a
        0x104065b
        0x104065c
        0x104065d
        0x104065e
        0x104065f
        0x1040660
        0x1040661
        0x1040662
        0x1040663
        0x1040664
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 412
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 414
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 417
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 227
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/meizu/telephony/MzPhoneNumberUtils;->SPECAIL_NUMBER_OF_CHINA_RES:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_1
    return-object v1

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z

    .prologue
    .line 275
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/meizu/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZZ)Ljava/lang/String;
    .locals 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "needRemoveIpPrefix"    # Z
    .param p4, "needValidNumber"    # Z
    .param p5, "requestSpecailNumber"    # Z

    .prologue
    .line 295
    sget-boolean v9, Lcom/meizu/telephony/MzPhoneNumberUtils;->VDBG:Z

    if-eqz v9, :cond_0

    const-string v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getDescriptionForNumber()  number :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",countryIso :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",languageCode :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",needRemoveIpPrefix :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",needValidNumber :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",requestSpecailNumber :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    if-nez p0, :cond_2

    .line 300
    const-string v1, ""

    .line 362
    :cond_1
    :goto_0
    return-object v1

    .line 303
    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 304
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 306
    .local v8, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v7, 0x0

    .line 309
    .local v7, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v8, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 314
    :goto_1
    if-nez v7, :cond_3

    .line 315
    const-string v1, ""

    goto :goto_0

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_3
    const-string v1, ""

    .line 319
    .local v1, "desc":Ljava/lang/String;
    const/16 v9, 0x56

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v10

    if-eq v9, v10, :cond_4

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    if-nez v9, :cond_a

    .line 320
    :cond_4
    invoke-static {p0}, Lcom/meizu/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 322
    :cond_5
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "nationalNumberStr":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 324
    invoke-static {v6}, Lcom/meizu/telephony/MzPhoneNumberUtils;->removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    const-wide/16 v4, 0x0

    .line 327
    .local v4, "nationalNumber":J
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 331
    :goto_2
    invoke-virtual {v7, v4, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 334
    .end local v4    # "nationalNumber":J
    :cond_6
    if-eqz p5, :cond_7

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_7

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 336
    invoke-static {v6}, Lcom/meizu/telephony/MzPhoneNumberUtils;->getCNSpecailNumberDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 343
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "+"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "1"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-static {p0}, Lcom/meizu/telephony/MzPhoneNumberUtils;->isCNIpPrefix(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "10"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 345
    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 328
    .restart local v4    # "nationalNumber":J
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException : nationalNumber:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 347
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "nationalNumber":J
    .end local v6    # "nationalNumberStr":Ljava/lang/String;
    :cond_a
    const/16 v9, 0x37

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 348
    invoke-static {p0}, Lcom/meizu/telephony/MzPhoneNumberUtils;->isBrasilLocalNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 349
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 353
    :cond_b
    const-string v9, "MzPhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " pn :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",pn.getCountryCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 356
    if-eqz p4, :cond_c

    .line 357
    invoke-virtual {v3, v7, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 359
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v3, v7, p2, p1, v9}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static isBrasilLocalNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCNIpPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 251
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 256
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 250
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const/4 v2, 0x0

    .line 434
    :goto_0
    return v2

    .line 432
    :cond_0
    invoke-static {p0}, Lcom/meizu/telephony/MzPhoneNumberUtils;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 434
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isNotificationNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 475
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v5

    if-nez v5, :cond_4

    .line 477
    invoke-static {p1}, Lcom/meizu/telephony/MzPhoneNumberUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/meizu/telephony/MzPhoneNumberUtils;->isSnsRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 495
    :cond_1
    :goto_0
    return v3

    .line 481
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-le v5, v6, :cond_3

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "numberPrefix":Ljava/lang/String;
    const-string v5, "1065"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "1066"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "12520"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "10690"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 490
    .end local v1    # "numberPrefix":Ljava/lang/String;
    :cond_3
    const-string v5, "^((13[0-9])|(15[^4,\\D])|(18[0-9])|(170)|(176)|(147))\\d{8}$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 491
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 493
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_4
    move v3, v4

    .line 495
    goto :goto_0
.end method

.method public static final isSnsRecipient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "recipientStr"    # Ljava/lang/String;

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "isSnsRecipients":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    move v1, v0

    .line 451
    :goto_0
    return v1

    .line 447
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    const/4 v0, 0x1

    move v1, v0

    .line 451
    goto :goto_0

    .line 450
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 237
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string p0, ""

    .line 244
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 239
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    sget-object v1, Lcom/meizu/telephony/MzPhoneNumberUtils;->IP_DIAL_NUMBER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 236
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 374
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 376
    .local v2, "haveCountryCode":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3

    .line 377
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 378
    const/4 v2, 0x1

    .line 384
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 385
    sget-object v0, Lcom/meizu/telephony/MzPhoneNumberUtils;->COUNTRY_CODES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 386
    .local v1, "cc":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 379
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    .line 380
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 381
    const/4 v2, 0x1

    goto :goto_1

    .line 385
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cc":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
