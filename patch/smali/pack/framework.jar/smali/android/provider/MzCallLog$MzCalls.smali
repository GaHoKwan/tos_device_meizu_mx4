.class public Landroid/provider/MzCallLog$MzCalls;
.super Ljava/lang/Object;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MzCalls"
.end annotation


# static fields
.field public static final AUTO_RECORD_FAIL_TYPE:I = 0x6

.field public static final AUTO_RECORD_TYPE:I = 0x5

.field public static final CACHED_CONTACTS_ID:Ljava/lang/String; = "contactsid"

.field public static final CACHED_MIN_MATCH:Ljava/lang/String; = "min_match"

.field public static final CALL_TYPE:Ljava/lang/String; = "calltype"

.field public static final CALL_TYPE_NORMAL:I = 0x0

.field public static final CALL_TYPE_SIP:I = 0x1

.field public static final CALL_UUID:Ljava/lang/String; = "uuid"

.field public static final CONTENT_DISTINC_URI:Landroid/net/Uri;

.field public static final CONTENT_DISTINC_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_SPEED_DIDL_URI:Landroid/net/Uri;

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DEFINE_OF_ONE_RINGING_IN_SECOND:J = 0x5L

.field public static final EXT_TYPE:Ljava/lang/String; = "ext_type"

.field public static final EXT_TYPE_NORMAL:I = 0x0

.field public static final EXT_TYPE_SPAM:I = 0x1

.field public static final ICC_ID:Ljava/lang/String; = "iccid"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final NET_TYPE:Ljava/lang/String; = "net_type"

.field public static final NET_TYPE_MOBILE:I = 0x2

.field public static final NET_TYPE_NORMAL:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NEW_SPAM_CALL:Ljava/lang/String; = "new_spam_call"

.field public static final RECORD_UUID:Ljava/lang/String; = "record_uuid"

.field public static final REJECT_TYPE:Ljava/lang/String; = "rejecttype"

.field public static final REJECT_TYPE_BLACK:I = 0x3

.field public static final REJECT_TYPE_CLOUD_ADDRESS:I = 0x6

.field public static final REJECT_TYPE_CUSTOMER_ADDRESS:I = 0x5

.field public static final REJECT_TYPE_NORMAL:I = 0x1

.field public static final REJECT_TYPE_OUT_PHONEBOOK:I = 0x4

.field public static final REJECT_TYPE_USER:I = 0x2

.field public static final SELECTION_MISSED_CALL:Ljava/lang/String; = "type=3 AND (is_read=0 OR is_read IS NULL)"

.field public static final SELECTION_MISSED_CALL_IGORE_ONE_RINGING:Ljava/lang/String; = "type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5"

.field public static final SELECTION_MISSED_CALL_SCREEN_LOCK:Ljava/lang/String; = "(type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5) OR (type=6 AND (is_read=0 OR is_read IS NULL))"

.field public static final SELECTION_MISSED_CALL_WITH_RECORD_FAIL:Ljava/lang/String; = "(type=6 OR type=3) AND (is_read=0 OR is_read IS NULL)"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SPAM_ADDRESS_SYNC1:Ljava/lang/String; = "sync1"

.field public static final SPEED_DIAL_DELETED:Ljava/lang/String; = "speed_dial_delete"

.field public static final USE_FREQUENCY:Ljava/lang/String; = "use_frequency"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "content://call_log/calls/distinc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI:Landroid/net/Uri;

    .line 190
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 200
    sget-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_DISTINC_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 209
    const-string v0, "content://call_log/calls/speed/dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_SPEED_DIDL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 18
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I

    .prologue
    .line 417
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v17}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;
    .locals 30
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "tableType"    # I
    .param p11, "dataUsage"    # J
    .param p13, "netType"    # I
    .param p14, "recordUUID"    # J
    .param p16, "simId"    # I
    .param p17, "imsi"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 575
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v20, 0x1

    .line 585
    .local v20, "numberPresentation":I
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_f

    .line 586
    const/16 v20, 0x2

    .line 587
    const-string p2, "-2"

    .line 596
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_1

    .line 597
    if-eqz p0, :cond_1

    .line 598
    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 606
    :cond_1
    const-wide/16 v21, 0x0

    .line 607
    .local v21, "personId":J
    const/16 v26, 0x1

    .line 608
    .local v26, "timeOut":Z
    const/16 v16, 0x1

    .line 609
    .local v16, "isEmergency":Z
    const/16 v17, 0x1

    .line 610
    .local v17, "isVoiceMailNumber":Z
    const/4 v15, 0x0

    .line 611
    .local v15, "geoLocation":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 612
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v21, v0

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    move/from16 v26, v0

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v16

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v17

    .line 618
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 632
    .local v18, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "contact_id =? AND data4 =?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v18, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 657
    .end local v18    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v12, :cond_3

    .line 659
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 660
    sget-object v5, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "type"

    const-string v7, "call"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 667
    .local v14, "feedbackUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v14, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .end local v14    # "feedbackUri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 676
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-nez v16, :cond_4

    if-nez v17, :cond_4

    if-eqz v26, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-nez v5, :cond_7

    .line 678
    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 684
    .local v24, "phonesCursor":Landroid/database/Cursor;
    if-eqz v24, :cond_6

    .line 685
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 686
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 688
    :cond_5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    .end local v24    # "phonesCursor":Landroid/database/Cursor;
    :cond_6
    :goto_2
    const-string v5, "MzCallLog"

    const-string v6, "addCall:phone query timeOut"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_7
    new-instance v27, Landroid/content/ContentValues;

    const/16 v5, 0xf

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 698
    .local v27, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v5, "presentation"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    const-string/jumbo v5, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string v5, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    const-string v5, "duration"

    move/from16 v0, p7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 704
    const-string/jumbo v5, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string/jumbo v5, "rejecttype"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string v5, "calltype"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string v5, "ext_type"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v5, "geocoded_location"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v5, "data_usage"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string/jumbo v5, "net_type"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string/jumbo v5, "record_uuid"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    const-string/jumbo v5, "simid"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 715
    const-string v5, "imsi"

    move-object/from16 v0, v27

    move-object/from16 v1, p17

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_8
    const-string v5, "contactsid"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 737
    if-eqz p0, :cond_a

    .line 738
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    .line 739
    const-string/jumbo v5, "name"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_9
    const-string/jumbo v5, "numbertype"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string/jumbo v5, "numberlabel"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-gtz v5, :cond_c

    .line 745
    const/4 v11, 0x0

    .line 747
    .local v11, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    aput-object v9, v7, v8

    const-string/jumbo v8, "number=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 754
    if-eqz v11, :cond_b

    .line 755
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 756
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 757
    .local v19, "note":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 758
    const-string/jumbo v5, "name"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 762
    .end local v19    # "note":Ljava/lang/String;
    :cond_b
    if-eqz v11, :cond_c

    .line 763
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 767
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_c
    if-eqz p0, :cond_d

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    .line 768
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 773
    :cond_d
    const/4 v5, 0x1

    move/from16 v0, p10

    if-ne v0, v5, :cond_15

    .line 774
    const-string/jumbo v5, "new_spam_call"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    sget-object v5, Landroid/provider/MzCallLog$MzCallsSpam;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 780
    .local v25, "result":Landroid/net/Uri;
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/provider/MzCallLog$MzCalls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 782
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_e

    if-lez p7, :cond_e

    .line 784
    :try_start_3
    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MzCallLog$MzCalls;->updatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 790
    :cond_e
    :goto_4
    return-object v25

    .line 588
    .end local v15    # "geoLocation":Ljava/lang/String;
    .end local v16    # "isEmergency":Z
    .end local v17    # "isVoiceMailNumber":Z
    .end local v21    # "personId":J
    .end local v25    # "result":Landroid/net/Uri;
    .end local v26    # "timeOut":Z
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_f
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_10

    .line 589
    const-string p2, "-3"

    .line 590
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 591
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    .line 593
    :cond_11
    const/16 v20, 0x3

    .line 594
    const-string p2, "-1"

    goto/16 :goto_0

    .line 643
    .restart local v15    # "geoLocation":Ljava/lang/String;
    .restart local v16    # "isEmergency":Z
    .restart local v17    # "isVoiceMailNumber":Z
    .restart local v21    # "personId":J
    .restart local v26    # "timeOut":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 645
    .local v23, "phoneNumber":Ljava/lang/String;
    :goto_5
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "contact_id =?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v23    # "phoneNumber":Ljava/lang/String;
    :cond_13
    move-object/from16 v23, p2

    .line 643
    goto :goto_5

    .line 671
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 762
    .end local v12    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v27    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    if-eqz v11, :cond_14

    .line 763
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v5

    .line 777
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_15
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .restart local v25    # "result":Landroid/net/Uri;
    goto :goto_3

    .line 785
    :catch_0
    move-exception v13

    .line 786
    .local v13, "e":Ljava/lang/Exception;
    const-string v5, "MzCallLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePrimaryNumber exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 690
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v25    # "result":Landroid/net/Uri;
    .end local v27    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIILjava/lang/String;)Landroid/net/Uri;
    .locals 18
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "simId"    # I
    .param p11, "imsi"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    invoke-static/range {v0 .. v17}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJ)Landroid/net/Uri;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "recordUUID"    # J

    .prologue
    .line 530
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJILjava/lang/String;)Landroid/net/Uri;
    .locals 19
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "rejectType"    # I
    .param p9, "sipType"    # I
    .param p10, "recordUUID"    # J
    .param p12, "simId"    # I
    .param p13, "imsi"    # Ljava/lang/String;

    .prologue
    .line 536
    const/4 v1, 0x5

    move/from16 v0, p8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    move/from16 v0, p8

    if-ne v0, v1, :cond_1

    .line 538
    :cond_0
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move-object/from16 v18, p13

    invoke-static/range {v1 .. v18}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 541
    :goto_0
    return-object v1

    :cond_1
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move-object/from16 v18, p13

    invoke-static/range {v1 .. v18}, Landroid/provider/MzCallLog$MzCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIIJIJILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static buildUpdateOperation(Landroid/content/Context;Ljava/util/ArrayList;JIII)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "primary"    # I
    .param p5, "superPrimary"    # I
    .param p6, "sortKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JIII)V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x1

    .line 898
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 899
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "_id=?"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 903
    const-string v1, "data13"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 904
    if-ne p4, v5, :cond_0

    .line 905
    const-string/jumbo v1, "is_primary"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    :cond_0
    const-string/jumbo v1, "is_super_primary"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 908
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 802
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 804
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 810
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    if-eqz v6, :cond_1

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v1

    .line 813
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 815
    if-eqz v6, :cond_1

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "contactId"    # J
    .param p2, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 390
    sget-object v0, Landroid/provider/MzCallLog$MzCalls;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contactsid"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUpdatePrimaryNumber(Landroid/content/Context;J)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 912
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 913
    .local v8, "c":Landroid/database/Cursor;
    const/16 v7, 0xb

    .line 915
    .local v7, "MAX_COUNT":I
    :try_start_0
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "number"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "formatted_number"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contactsid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "date DESC LIMIT "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v17, 0xb

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 921
    if-nez v8, :cond_1

    .line 922
    const/4 v15, 0x0

    .line 951
    if-eqz v8, :cond_0

    .line 952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v15

    .line 925
    :cond_1
    :try_start_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 926
    .local v14, "numberMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 927
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "number":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 929
    .local v11, "formatNumber":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 930
    .local v9, "count":Ljava/lang/Integer;
    if-nez v9, :cond_2

    .line 931
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 933
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 934
    invoke-virtual {v14, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 951
    .end local v9    # "count":Ljava/lang/Integer;
    .end local v11    # "formatNumber":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v14    # "numberMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 936
    .restart local v14    # "numberMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    const/4 v15, 0x0

    .line 937
    .local v15, "result":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 938
    .restart local v9    # "count":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 939
    .local v12, "iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 940
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 941
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 942
    .restart local v13    # "number":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 943
    .local v16, "value":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-le v2, v3, :cond_5

    .line 944
    move-object/from16 v9, v16

    .line 945
    move-object v15, v13

    goto :goto_2

    .line 951
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "number":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_6
    if-eqz v8, :cond_0

    .line 952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 828
    const-string v5, "country_detector"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 830
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 832
    .local v4, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v3, 0x0

    .line 834
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v4, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 838
    :goto_0
    if-eqz v3, :cond_0

    .line 839
    invoke-virtual {v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v6, :cond_0

    .line 840
    const/4 v5, 0x1

    .line 843
    :goto_1
    return v5

    .line 835
    :catch_0
    move-exception v2

    .line 836
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v5, "MzCallLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDescriptionForNumber: NumberParseException for incoming number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 822
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 5000)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 825
    return-void
.end method

.method private static updatePrimaryNumber(Landroid/content/Context;JLjava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 847
    if-eqz p0, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/provider/MzCallLog$MzCalls;->getUpdatePrimaryNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    .line 849
    .local v24, "primaryNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/MzCallLog$MzCalls;->isMobileNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v22, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 852
    .local v5, "where":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v14, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 854
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 856
    .local v20, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "data13"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "data13"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 860
    if-nez v20, :cond_2

    .line 874
    if-eqz v20, :cond_0

    .line 875
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 863
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 864
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 865
    .local v8, "id":J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 866
    .local v23, "phone":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 867
    .local v25, "sortKey":I
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 868
    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 874
    .end local v8    # "id":J
    .end local v23    # "phone":Ljava/lang/String;
    .end local v25    # "sortKey":I
    :catchall_0
    move-exception v3

    if-eqz v20, :cond_3

    .line 875
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 870
    .restart local v8    # "id":J
    .restart local v23    # "phone":Ljava/lang/String;
    .restart local v25    # "sortKey":I
    :cond_4
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 874
    .end local v8    # "id":J
    .end local v23    # "phone":Ljava/lang/String;
    .end local v25    # "sortKey":I
    :cond_5
    if-eqz v20, :cond_6

    .line 875
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_6
    const-wide/16 v15, 0x0

    .line 879
    .local v15, "superId":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_8

    .line 880
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 881
    .restart local v8    # "id":J
    if-nez v12, :cond_7

    .line 882
    move-wide v15, v8

    .line 879
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 884
    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v14

    invoke-static/range {v6 .. v12}, Landroid/provider/MzCallLog$MzCalls;->buildUpdateOperation(Landroid/content/Context;Ljava/util/ArrayList;JIII)V

    goto :goto_3

    .line 887
    .end local v8    # "id":J
    :cond_8
    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v19}, Landroid/provider/MzCallLog$MzCalls;->buildUpdateOperation(Landroid/content/Context;Ljava/util/ArrayList;JIII)V

    .line 889
    :try_start_3
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 890
    :catch_0
    move-exception v21

    .line 891
    .local v21, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 892
    .end local v21    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v21

    .line 893
    .local v21, "e":Landroid/content/OperationApplicationException;
    invoke-virtual/range {v21 .. v21}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
