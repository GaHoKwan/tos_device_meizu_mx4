.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z = true

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field public additionalInfo:Ljava/lang/Object;

.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public contactType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zxc@Comm.Telephony.Feature add contactType"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public extAttributes:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add extAttributes"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public isDirectoryContact:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add isDirectoryContact"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public isTimeoutRet:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add isTimeoutRet"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mIsEmergency:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_PARAMETER:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature change private to protected"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mIsVoiceMail:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_PARAMETER:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature change private to protected"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mzPhotoId:J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add mzPhotoId"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mzPhotoUri:Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add mzPhotoUri"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zxc@Comm.Telephony.Feature change numberPresentation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public numberType:I

.field public orgTag:Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add orgTag"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public recordType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add recordType"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public shouldSendToVoicemail:Z

.field public shouldSendToVoicemailSip:Z

.field public shouldSendToVoicemailVt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/CallerInfo;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->isDirectoryContact:Z

    .line 233
    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    .line 245
    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    .line 263
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 265
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 492
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 501
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;
    .locals 10
    .param p1, "allowedMemIds"    # [J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add get Allow Member CIs"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    const-string v8, "CallerInfo"

    const-string v9, "get Allow Member CIs"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v0, "allowedMemberCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 1043
    .local v2, "curCI":Lcom/android/internal/telephony/CallerInfo;
    move-object v1, p1

    .local v1, "arr$":[J
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v6, v1, v4

    .line 1044
    .local v6, "pid":J
    iget-wide v8, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    .line 1045
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1049
    .end local v1    # "arr$":[J
    .end local v2    # "curCI":Lcom/android/internal/telephony/CallerInfo;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pid":J
    :cond_2
    return-object v0
.end method

.method private static getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 22
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add get Call Informations Distinct PersionId"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    const-string v19, "CallerInfo"

    const-string v20, "construct callerInfo array from cursor"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v2, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    if-nez p1, :cond_0

    .line 1185
    :goto_0
    return-object v2

    .line 1103
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1104
    .local v6, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1105
    .local v5, "count":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_1

    const-string v19, "CallerInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "cursor count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_1
    const-string v19, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1108
    .local v10, "nameIndex":I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v15

    .line 1109
    .local v15, "personIdIndex":I
    const-string v19, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1110
    .local v16, "phoneNumberIndex":I
    const-string v19, "label"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1111
    .local v12, "numberLabelIndex":I
    const-string v19, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1112
    .local v13, "numberTypeIndex":I
    const-string v19, "custom_ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1113
    .local v3, "contactRingtoneUriIndex":I
    const-string v19, "send_to_voicemail"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1114
    .local v18, "shouldSendToVoicemailIndex":I
    const-string v19, "normalized_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1115
    .local v11, "normalizeNumIndex":I
    const-string v19, "organization_note"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1116
    .local v14, "orgTagIndex":I
    const-string v19, "photo_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1117
    .local v8, "mzPhotoId":I
    const-string v19, "photo_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1118
    .local v9, "mzPhotoUri":I
    const-string v19, "record_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1119
    .local v17, "recordTypeindex":I
    const-string v19, "contact_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1121
    .local v4, "contactTypeindex":I
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1122
    new-instance v7, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1124
    .local v7, "info":Lcom/android/internal/telephony/CallerInfo;
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_3

    .line 1125
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1128
    :cond_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    .line 1129
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v7, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    .line 1132
    :cond_4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_5

    .line 1133
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    .line 1137
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_6

    .line 1138
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1141
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_b

    .line 1142
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v7, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1143
    iget-wide v0, v7, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1146
    iget-wide v0, v7, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1151
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 1152
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1155
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 1156
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1161
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_8

    .line 1162
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->orgTag:Ljava/lang/String;

    .line 1164
    :cond_8
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1165
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 1167
    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_a

    .line 1168
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    .line 1173
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1175
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 1177
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 1178
    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1179
    move-object/from16 v0, p0

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 1181
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1148
    :cond_b
    const-string v19, "CallerInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "person_id column missing for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1158
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 1173
    :cond_d
    const/16 v19, 0x0

    goto :goto_4

    .line 1184
    .end local v7    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 522
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 524
    .local v0, "callerID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 525
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 527
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 528
    move-object v0, v2

    .line 534
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 530
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add recordType and isDirectoryContact"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    .line 280
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 281
    .local v2, "info":Lcom/android/internal/telephony/CallerInfo;
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 282
    iput-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 283
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 284
    iput-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 285
    iput-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 286
    iput-boolean v6, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 287
    iput-boolean v6, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 290
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 291
    iput-boolean v6, v2, Lcom/android/internal/telephony/CallerInfo;->isDirectoryContact:Z

    .line 292
    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    .line 295
    const-string v4, "CallerInfo"

    const-string v7, "getCallerInfo() based on cursor..."

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz p2, :cond_b

    .line 298
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    const-string v4, "display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, "columnIndex":I
    if-eq v0, v10, :cond_0

    .line 308
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 312
    :cond_0
    const-string v4, "number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 313
    if-eq v0, v10, :cond_1

    .line 314
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 318
    :cond_1
    const-string v4, "normalized_number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 319
    if-eq v0, v10, :cond_2

    .line 320
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 324
    :cond_2
    const-string v4, "label"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 325
    if-eq v0, v10, :cond_3

    .line 326
    const-string v4, "type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "typeColumnIndex":I
    if-eq v3, v10, :cond_3

    .line 328
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 329
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 333
    const-class v4, Lcom/mediatek/common/telephony/ICallerInfoExt;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/ICallerInfoExt;

    .line 334
    .local v1, "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    iget v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v7, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-interface {v1, p0, v4, v7, p2}, Lcom/mediatek/common/telephony/ICallerInfoExt;->getTypeLabel(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 340
    .end local v1    # "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    .end local v3    # "typeColumnIndex":I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 341
    if-eq v0, v10, :cond_6

    .line 342
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 343
    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> got info.person_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 355
    if-eq v0, v10, :cond_7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 356
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 363
    :goto_1
    const-string v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 364
    if-eq v0, v10, :cond_8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 382
    iput-boolean v5, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 386
    const-string v4, "record_type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 387
    if-eq v0, v10, :cond_4

    .line 388
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 390
    :cond_4
    const-string v4, "contact_type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 391
    if-eq v0, v10, :cond_5

    .line 392
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    .line 398
    .end local v0    # "columnIndex":I
    :cond_5
    :goto_3
    iget-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-nez v4, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-ne v4, v5, :cond_a

    .line 400
    const-string v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 401
    .restart local v0    # "columnIndex":I
    if-eq v0, v10, :cond_9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_9

    move v4, v5

    :goto_4
    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    goto :goto_3

    .line 346
    :cond_6
    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find person_id column for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_7
    iput-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_1

    :cond_8
    move v4, v6

    .line 364
    goto :goto_2

    :cond_9
    move v4, v6

    .line 401
    goto :goto_4

    .line 406
    .end local v0    # "columnIndex":I
    :cond_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 407
    const/4 p2, 0x0

    .line 410
    :cond_b
    iput-boolean v6, v2, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 411
    iget-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 412
    iput-object p1, v2, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 414
    return-object v2
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v1, "persist.radio.default_sim"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 448
    .local v0, "simId":I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoEx(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfoEx(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 903
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 904
    const/4 v1, 0x0

    .line 952
    :cond_0
    :goto_0
    return-object v1

    .line 907
    :cond_1
    const-string v4, "CallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v3, 0x1

    .line 924
    .local v3, "phoneType":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 926
    .local v2, "isECCNumber":Z
    if-eqz v2, :cond_2

    .line 935
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 937
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/CallerInfo;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v4, p1, p2}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 939
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMailGemini(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 942
    :cond_3
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 944
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 948
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add get Caller Info Via Number"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 1001
    const/4 v7, 0x0

    .line 1002
    .local v7, "rejectedReason":I
    const/4 v1, 0x0

    .line 1003
    .local v1, "allowedMemIds":[J
    if-eqz p1, :cond_0

    .line 1004
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1005
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "call_rejected_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1006
    const-string v8, "CallerInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reject reason "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v8, "call_allowed_contact_ids"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 1010
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1011
    .local v3, "candidateArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1012
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1013
    .local v4, "ci":Lcom/android/internal/telephony/CallerInfo;
    iput v7, v4, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    move-object v5, v4

    .line 1031
    .end local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .local v5, "ci":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 1017
    .end local v5    # "ci":Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_2

    array-length v8, v1

    if-lez v8, :cond_2

    .line 1018
    invoke-static {v3, v1}, Lcom/android/internal/telephony/CallerInfo;->getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;

    move-result-object v0

    .line 1019
    .local v0, "allowedMemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    move-object v3, v0

    .line 1023
    .end local v0    # "allowedMemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    :cond_2
    invoke-static {v3, p2}, Lcom/android/internal/telephony/CallerInfo;->getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1024
    .local v6, "perfectMatchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1025
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 1030
    .restart local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    iput v7, v4, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    move-object v5, v4

    .line 1031
    .restart local v5    # "ci":Ljava/lang/Object;
    goto :goto_0

    .line 1026
    .end local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v5    # "ci":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 1027
    invoke-static {v6}, Lcom/android/internal/telephony/CallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .restart local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .line 1029
    .end local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .restart local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1
.end method

.method protected static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add If we placeCall from Contacts, we will come here. And we need to return persion_id back."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 664
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 672
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v1, "contact_id"

    .line 699
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, "columnIndex":I
    :goto_1
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v0

    .line 679
    .end local v0    # "columnIndex":I
    :cond_0
    const-string v3, "content://com.android.contacts/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    const-string v3, "CallerInfo"

    const-string v4, "URL path starts with \'contacts\' using contacts._ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v1, "_id"

    goto :goto_0

    .line 684
    :cond_1
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 687
    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v1, "contact_id"

    goto :goto_0

    .line 690
    :cond_2
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 694
    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v1, "_id"

    goto :goto_0

    .line 697
    :cond_3
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 699
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 806
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 789
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 791
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 792
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 797
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 798
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 799
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1
    return-object v1

    .line 794
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v3, "CallerInfo"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 727
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-object v1

    .line 750
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 751
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 753
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 754
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    .line 757
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for countryIso \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 760
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- parsed number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_1
    if-eqz v5, :cond_0

    .line 770
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v0, v4, v7, v8}, Lcom/meizu/telephony/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "description":Ljava/lang/String;
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- got description: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 761
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add get Perfect Match Caller Infos"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v1, "perfectMatchCIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1059
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    return-object v1
.end method

.method protected static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_PARAMETER:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature change private to protected"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 609
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 612
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add process Caller Infos"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;)",
            "Lcom/android/internal/telephony/CallerInfo;"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "ciArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "ciArray should not be empty here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1
    const/4 v0, 0x0

    .line 1074
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1075
    .local v1, "index":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 1076
    .local v2, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1077
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/android/internal/telephony/CallerInfo;
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 1079
    .restart local v2    # "info":Lcom/android/internal/telephony/CallerInfo;
    move v1, v0

    .line 1083
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1084
    if-ne v0, v1, :cond_4

    .line 1083
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1076
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :goto_3
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1090
    :cond_6
    return-object v2
.end method


# virtual methods
.method copyFrom(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add copy From"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 961
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 962
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 963
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 964
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 965
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 966
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 967
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 968
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 969
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 970
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 971
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 972
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    .line 973
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    .line 974
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 975
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 976
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 977
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 979
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 980
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 981
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    .line 983
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 984
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 986
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 987
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 989
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    .line 990
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 991
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isDirectoryContact:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isDirectoryContact:Z

    .line 992
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactType:I

    .line 993
    return-void
.end method

.method public getRejectReason()I
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add get Reject Reason"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1201
    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    return v0
.end method

.method public isBlackMember()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add is Black Member"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1193
    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    const v0, 0x1040309

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 568
    const v0, 0x10807cf

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 570
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 584
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 587
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 590
    :catch_0
    move-exception v0

    .line 596
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMail(Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "lixuan@Comm.Telephony.Feature add for quer caller info"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1210
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 1213
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    .line 1215
    .local v2, "voiceMailLabel":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1216
    if-eqz p1, :cond_1

    .line 1217
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    const-string v3, "record_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1219
    .local v0, "columnIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallerInfo;->recordType:I

    .line 1223
    .end local v0    # "columnIndex":I
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    .end local v2    # "voiceMailLabel":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1225
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v3, "CallerInfo"

    const-string v4, "Cannot access VoiceMail."

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMailGemini(I)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 867
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 871
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 872
    .local v0, "iTel":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v0    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object p0

    .line 875
    :catch_0
    move-exception v1

    .line 881
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 873
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 849
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "non-null"

    goto :goto_0

    :cond_1
    const-string v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 719
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 720
    return-void

    .line 718
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method
