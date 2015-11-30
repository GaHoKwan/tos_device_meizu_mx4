.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;,
        Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

.field private static final ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final ADDRESS_SUPPORT_SNE:I = 0x9

.field private static final ADN:I = 0x1

.field private static final ADN1:I = 0x65

.field private static final ADN2:I = 0xc9

.field private static final ADN3:I = 0x12d

.field private static final ADN4:I = 0x191

.field private static final DBG:Z = true

.field public static final ERROR_ICC_PROVIDER_ADN_LIST_NOT_EXIST:I = -0xb

.field public static final ERROR_ICC_PROVIDER_ANR_TOO_LONG:I = -0x6

.field public static final ERROR_ICC_PROVIDER_EMAIL_FULL:I = -0xc

.field public static final ERROR_ICC_PROVIDER_EMAIL_TOOLONG:I = -0xd

.field public static final ERROR_ICC_PROVIDER_GENERIC_FAILURE:I = -0xa

.field public static final ERROR_ICC_PROVIDER_NOT_READY:I = -0x4

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_PASSWORD_ERROR:I = -0x5

.field public static final ERROR_ICC_PROVIDER_STORAGE_FULL:I = -0x3

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field private static final FDN:I = 0x2

.field private static final FDN1:I = 0x66

.field private static final FDN2:I = 0xca

.field private static final FDN3:I = 0x12e

.field private static final FDN4:I = 0x192

.field public static final HAS_ADDITIONAL_NUMBER_KEY:Ljava/lang/String; = "has_additional_number"

.field public static final HAS_EMAIL_KEY:Ljava/lang/String; = "has_email"

.field public static final IS_USIM_KEY:Ljava/lang/String; = "is_usim_key"

.field private static final ITEM:I = 0x1f4

.field public static final REQUEST_BY_ID:Ljava/lang/String; = "request_by_id"

.field private static final SDN:I = 0x3

.field private static final SDN1:I = 0x67

.field private static final SDN2:I = 0xcb

.field private static final SDN3:I = 0x12f

.field private static final SDN4:I = 0x193

.field private static final STR_ANR:Ljava/lang/String; = "anr"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final UPB:I = 0x4

.field private static final UPB1:I = 0x68

.field private static final UPB2:I = 0xcc

.field private static final UPB3:I = 0x130

.field private static final UPB4:I = 0x194

.field private static final UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private locSimContact:Landroid/database/Cursor;

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "additionalNumber"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "second_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 150
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn1"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn2"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn1"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn2"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn1"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn2"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr1"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr2"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn3"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn4"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn3"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn4"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn3"

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn4"

    const/16 v3, 0x193

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr3"

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr4"

    const/16 v3, 0x194

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "item"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 1520
    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "simId"    # I

    .prologue
    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 787
    const/4 v8, 0x0

    .line 795
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 797
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 798
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 806
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 807
    return v8

    .line 801
    :catch_0
    move-exception v7

    .line 802
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 804
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "additionalNumber"    # Ljava/lang/String;
    .param p5, "emailString"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "simId"    # I

    .prologue
    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", additionalNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emailString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1378
    const/4 v10, 0x0

    .line 1380
    .local v10, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1382
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_3

    .line 1383
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v10

    .line 1384
    if-eqz v10, :cond_3

    .line 1386
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 1387
    .local v9, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adnRecords.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1389
    const/4 v13, -0x3

    .line 1390
    .local v13, "index":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_0

    .line 1391
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    add-int/lit8 v7, v12, 0x1

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1393
    add-int/lit8 v13, v12, 0x1

    .line 1409
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v9    # "N":I
    .end local v12    # "i":I
    .end local v13    # "index":I
    :cond_0
    :goto_1
    return v13

    .line 1395
    .restart local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v9    # "N":I
    .restart local v12    # "i":I
    .restart local v13    # "index":I
    :cond_1
    const/4 v13, 0x0

    .line 1397
    goto :goto_1

    .line 1390
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1405
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v9    # "N":I
    .end local v12    # "i":I
    .end local v13    # "index":I
    :catch_0
    move-exception v11

    .line 1406
    .local v11, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v11}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1409
    .end local v11    # "ex":Ljava/lang/SecurityException;
    :cond_3
    :goto_2
    const/4 v13, 0x0

    goto :goto_1

    .line 1403
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "strAnr"    # Ljava/lang/String;
    .param p5, "strEmail"    # Ljava/lang/String;
    .param p6, "strGas"    # Ljava/lang/String;
    .param p7, "simId"    # I

    .prologue
    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 820
    const/4 v14, 0x0

    .line 826
    .local v14, "result":I
    const/4 v12, 0x0

    .line 827
    .local v12, "emails":[Ljava/lang/String;
    if-eqz p5, :cond_0

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 829
    const/4 v2, 0x0

    aput-object p5, v12, v2

    .line 833
    :cond_0
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 835
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 836
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 844
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUsimRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 845
    return v14

    .line 839
    :catch_0
    move-exception v13

    .line 840
    .local v13, "ex":Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v13    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 842
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "simId"    # I

    .prologue
    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 972
    const/4 v8, 0x0

    .line 975
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 977
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 978
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 986
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 987
    return v8

    .line 981
    :catch_0
    move-exception v7

    .line 982
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 984
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 8
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "simId"    # I

    .prologue
    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 996
    const/4 v7, 0x0

    .line 999
    .local v7, "result":I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1001
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1002
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1009
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1010
    return v7

    .line 1004
    :catch_0
    move-exception v6

    .line 1005
    .local v6, "ex":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1007
    .local v6, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndexEx(IILjava/lang/String;I)Z
    .locals 10
    .param p1, "efType"    # I
    .param p2, "index"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "simId"    # I

    .prologue
    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndexEx: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1440
    const/4 v9, 0x0

    .line 1443
    .local v9, "success":Z
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1445
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1446
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1453
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1454
    return v9

    .line 1450
    :catch_0
    move-exception v8

    .line 1451
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 15
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "simId"    # I

    .prologue
    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1019
    const/4 v14, 0x0

    .line 1022
    .local v14, "result":I
    :try_start_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1024
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1025
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 1033
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1034
    return v14

    .line 1028
    :catch_0
    move-exception v13

    .line 1029
    .local v13, "ex":Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    .end local v13    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 1031
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .locals 10
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "simId"    # I

    .prologue
    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1041
    const/4 v9, 0x0

    .line 1044
    .local v9, "result":I
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1046
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1047
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 1055
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1056
    return v9

    .line 1050
    :catch_0
    move-exception v8

    .line 1051
    .local v8, "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 1053
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDefaultSim()I
    .locals 2

    .prologue
    .line 1137
    const-string v0, "persist.radio.default_sim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1119
    if-nez p1, :cond_0

    .line 1120
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1133
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .line 1122
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1123
    const-string v1, "simphonebook2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 1125
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1126
    const-string v1, "simphonebook3"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 1129
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    const-string v1, "simphonebook4"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0
.end method

.method private getRequestSim(I)I
    .locals 3
    .param p1, "match"    # I

    .prologue
    .line 1227
    sparse-switch p1, :sswitch_data_0

    .line 1263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v0

    .line 1258
    :goto_0
    return v0

    .line 1237
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1242
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1247
    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1252
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1258
    :sswitch_5
    const/16 v0, 0x1f4

    goto :goto_0

    .line 1227
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x130 -> :sswitch_3
        0x191 -> :sswitch_4
        0x192 -> :sswitch_4
        0x193 -> :sswitch_4
        0x194 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method private getRequestType(I)I
    .locals 3
    .param p1, "match"    # I

    .prologue
    .line 1188
    sparse-switch p1, :sswitch_data_0

    .line 1222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :sswitch_0
    const/16 v0, 0x6f3a

    .line 1218
    :goto_0
    return v0

    .line 1200
    :sswitch_1
    const/16 v0, 0x6f3b

    goto :goto_0

    .line 1206
    :sswitch_2
    const/16 v0, 0x6f49

    goto :goto_0

    .line 1212
    :sswitch_3
    const/16 v0, 0x4f30

    goto :goto_0

    .line 1218
    :sswitch_4
    const/16 v0, 0x1f4

    goto :goto_0

    .line 1188
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_2
        0x130 -> :sswitch_3
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "simId"    # I

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 749
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 752
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 754
    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 755
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 762
    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 764
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 765
    .local v5, "size":I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 767
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 769
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 770
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 758
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 760
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private loadFromEfEx(I[II)Landroid/database/Cursor;
    .locals 19
    .param p1, "efType"    # I
    .param p2, "ids"    # [I
    .param p3, "simId"    # I

    .prologue
    .line 1308
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadFromEfEx: efType="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1310
    const/4 v14, 0x0

    .line 1311
    .local v14, "isUsim":Z
    const/4 v9, 0x0

    .line 1312
    .local v9, "hasAdditionalNumber":Z
    const/4 v10, 0x0

    .line 1314
    .local v10, "hasEmail":Z
    const/4 v4, 0x0

    .line 1316
    .local v4, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v13

    .line 1318
    .local v13, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v13, :cond_0

    .line 1319
    move/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v4

    .line 1320
    invoke-interface {v13}, Lcom/android/internal/telephony/IIccPhoneBook;->isUsim()Z

    move-result v14

    .line 1321
    invoke-interface {v13}, Lcom/android/internal/telephony/IIccPhoneBook;->hasAdditionalNumber()Z

    move-result v9

    .line 1322
    invoke-interface {v13}, Lcom/android/internal/telephony/IIccPhoneBook;->hasEmail()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1330
    .end local v13    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 1332
    .local v6, "columnNames":[Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1334
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 1335
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/AdnRecord;

    add-int/lit8 v18, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->setTempInt(I)V

    .line 1334
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1326
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v11    # "i":I
    :catch_0
    move-exception v8

    .line 1327
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    .end local v8    # "ex":Ljava/lang/SecurityException;
    .restart local v6    # "columnNames":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1340
    .local v16, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v4, v16

    .line 1343
    new-instance v17, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;-><init>(Lcom/android/internal/telephony/IccProvider;)V

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1346
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1347
    .local v2, "N":I
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1348
    .local v15, "matrixCursor":Landroid/database/MatrixCursor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "adnRecords.size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1349
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1350
    .local v3, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz p2, :cond_3

    .line 1351
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getTempInt()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1352
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/internal/telephony/IccProvider;->loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V

    goto :goto_2

    .line 1355
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/internal/telephony/IccProvider;->loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V

    goto :goto_2

    .line 1358
    .end local v3    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    move-object v7, v15

    .line 1366
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "matrixCursor":Landroid/database/MatrixCursor;
    .end local v16    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1367
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "is_usim_key"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1368
    const-string v17, "has_additional_number"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1369
    const-string v17, "has_email"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1370
    new-instance v17, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v5}, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/internal/telephony/IccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-object v17

    .line 1361
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string v17, "IccProvider"

    const-string v18, "Cannot load ADN records"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_3

    .line 1324
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 19
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 1068
    sget-object v17, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v13, v0

    .line 1069
    .local v13, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1070
    new-array v6, v13, [Ljava/lang/Object;

    .line 1071
    .local v6, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 1073
    .local v15, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 1074
    .local v9, "emails":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 1076
    .local v10, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 1078
    .local v12, "index":Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v13, v0, :cond_0

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v2

    .line 1080
    .local v2, "aasIndex":I
    const/16 v17, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 1082
    .end local v2    # "aasIndex":I
    :cond_0
    const/16 v17, 0x9

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v16

    .line 1084
    .local v16, "sne":Ljava/lang/String;
    const/16 v17, 0x8

    aput-object v16, v6, v17

    .line 1087
    .end local v16    # "sne":Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord: record:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1089
    const/16 v17, 0x0

    aput-object v12, v6, v17

    .line 1090
    const/16 v17, 0x1

    aput-object v3, v6, v17

    .line 1091
    const/16 v17, 0x2

    aput-object v15, v6, v17

    .line 1093
    if-eqz v9, :cond_3

    .line 1094
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v8, "emailString":Ljava/lang/StringBuilder;
    move-object v5, v9

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_2

    aget-object v7, v5, v11

    .line 1097
    .local v7, "email":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding email:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1102
    .end local v7    # "email":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    .line 1104
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "emailString":Ljava/lang/StringBuilder;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :cond_3
    const/16 v17, 0x4

    aput-object v4, v6, v17

    .line 1105
    const/16 v17, 0x5

    aput-object v10, v6, v17

    .line 1106
    const/16 v17, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 1107
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1109
    .end local v3    # "alphaTag":Ljava/lang/String;
    .end local v4    # "anr":Ljava/lang/String;
    .end local v6    # "contact":[Ljava/lang/Object;
    .end local v9    # "emails":[Ljava/lang/String;
    .end local v10    # "grpIds":Ljava/lang/String;
    .end local v12    # "index":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private loadRecordEx(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;)V
    .locals 12
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;

    .prologue
    .line 1271
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1272
    sget-object v10, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    array-length v10, v10

    new-array v2, v10, [Ljava/lang/Object;

    .line 1274
    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 1277
    .local v9, "number":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadRecordEx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1278
    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 1279
    const/4 v10, 0x1

    aput-object v9, v2, v10

    .line 1281
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 1282
    .local v5, "emails":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    .local v4, "emailString":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1285
    .local v7, "index":I
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v1, v6

    .line 1286
    .local v3, "email":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1288
    if-lez v7, :cond_0

    .line 1289
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    add-int/lit8 v7, v7, 0x1

    .line 1285
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1294
    .end local v3    # "email":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1296
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "emailString":Ljava/lang/StringBuilder;
    .end local v6    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    :cond_2
    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getTempInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1299
    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1301
    const/4 v10, 0x5

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1303
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1305
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1112
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1515
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "length":I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 1516
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 483
    .local v0, "len":I
    move-object v1, p1

    .line 485
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 486
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 489
    :cond_0
    return-object v1
.end method

.method private static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1497
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1509
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 1502
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1503
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1507
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 1509
    const-string v4, "=0"

    invoke-static {v1, v0, v4, v3}, Lcom/android/internal/telephony/IccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v1, v0, v4, v2}, Lcom/android/internal/telephony/IccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move p2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "simId"    # I

    .prologue
    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 855
    const/4 v9, 0x0

    .line 858
    .local v9, "result":I
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 860
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 861
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 869
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 870
    return v9

    .line 864
    :catch_0
    move-exception v8

    .line 865
    .local v8, "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 867
    .local v8, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "simId"    # I

    .prologue
    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 879
    const/4 v7, 0x0

    .line 882
    .local v7, "result":I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 884
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 885
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 893
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 894
    return v7

    .line 888
    :catch_0
    move-exception v6

    .line 889
    .local v6, "ex":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 891
    .local v6, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 11
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newAdditionalNumber"    # Ljava/lang/String;
    .param p5, "newEmailString"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "simId"    # I

    .prologue
    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAdditionalNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1418
    const/4 v10, 0x0

    .line 1421
    .local v10, "success":Z
    :try_start_0
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1423
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1424
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1431
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1432
    return v10

    .line 1428
    :catch_0
    move-exception v9

    .line 1429
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "simId"    # I

    .prologue
    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimRecordByIndex simId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1170
    const/4 v2, 0x0

    .line 1173
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1175
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1176
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1183
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1184
    return v2

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1181
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "simId"    # I

    .prologue
    .line 1145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimRecordBySearch simId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1148
    const/4 v2, 0x0

    .line 1151
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1153
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1154
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1161
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1162
    return v2

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1159
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "strAnr"    # Ljava/lang/String;
    .param p7, "strEmail"    # Ljava/lang/String;
    .param p8, "simId"    # I

    .prologue
    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 906
    const/4 v14, 0x0

    .line 908
    .local v14, "result":I
    const/4 v12, 0x0

    .line 909
    .local v12, "emails":[Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 910
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 911
    const/4 v2, 0x0

    aput-object p7, v12, v2

    .line 915
    :cond_0
    :try_start_0
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 917
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 918
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 927
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 928
    return v14

    .line 922
    :catch_0
    move-exception v13

    .line 923
    .local v13, "ex":Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    .end local v13    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 925
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "strAnr"    # Ljava/lang/String;
    .param p6, "strEmail"    # Ljava/lang/String;
    .param p7, "simId"    # I

    .prologue
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 940
    const/4 v10, 0x0

    .line 942
    .local v10, "result":I
    const/4 v7, 0x0

    .line 943
    .local v7, "emails":[Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 944
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 945
    const/4 v2, 0x0

    aput-object p6, v7, v2

    .line 949
    :cond_0
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 951
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 952
    const/4 v6, 0x0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move v8, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 960
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 961
    return v10

    .line 955
    :catch_0
    move-exception v9

    .line 956
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 958
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    const-string v2, "delete return : 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT  "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 502
    const/16 v26, 0x0

    .line 617
    :goto_0
    return v26

    .line 507
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 509
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 510
    .local v22, "match":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 511
    .local v3, "efType":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v7

    .line 512
    .local v7, "simId":I
    sparse-switch v22, :sswitch_data_0

    .line 526
    :goto_1
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_3

    const-string v2, "request_by_id"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v8}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 528
    const/16 v16, 0x0

    .line 530
    .local v16, "count":I
    move-object/from16 v15, p3

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v18, v15, v17

    .line 531
    .local v18, "id":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 533
    .local v19, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v2, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndexEx(IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    add-int/lit8 v16, v16, 0x1

    .line 530
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 518
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "count":I
    .end local v17    # "i$":I
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v21    # "len$":I
    :sswitch_0
    const/16 v3, 0x6f3a

    .line 519
    goto :goto_1

    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v16    # "count":I
    .restart local v17    # "i$":I
    .restart local v21    # "len$":I
    :cond_2
    move/from16 v26, v16

    .line 537
    goto :goto_0

    .line 542
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "count":I
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    :cond_3
    const-string v4, ""

    .line 543
    .local v4, "tag":Ljava/lang/String;
    const-string v5, ""

    .line 544
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 545
    .local v6, "emails":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 546
    .local v13, "pin2":Ljava/lang/String;
    const/16 v24, -0x1

    .line 548
    .local v24, "nIndex":I
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 549
    .local v27, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v23, v0

    .line 551
    .local v23, "n":I
    :cond_4
    :goto_3
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_a

    .line 552
    aget-object v25, v27, v23

    .line 554
    .local v25, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 556
    const/16 v2, 0x3d

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 557
    .restart local v19    # "index":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 558
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 562
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 563
    .local v20, "key":Ljava/lang/String;
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 564
    .local v28, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing key is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " index of = is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " val is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 574
    const-string v2, "index"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 575
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_3

    .line 576
    :cond_6
    const-string v2, "tag"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 578
    :cond_7
    const-string v2, "number"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 580
    :cond_8
    const-string v2, "emails"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 582
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 583
    :cond_9
    const-string v2, "pin2"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 584
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 588
    .end local v19    # "index":I
    .end local v20    # "key":Ljava/lang/String;
    .end local v25    # "param":Ljava/lang/String;
    .end local v28    # "val":Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    .line 589
    .local v26, "result":I
    if-lez v24, :cond_d

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 591
    const/4 v2, 0x4

    move/from16 v0, v22

    if-eq v2, v0, :cond_b

    const/16 v2, 0x68

    move/from16 v0, v22

    if-eq v2, v0, :cond_b

    const/16 v2, 0xcc

    move/from16 v0, v22

    if-eq v2, v0, :cond_b

    const/16 v2, 0x130

    move/from16 v0, v22

    if-eq v2, v0, :cond_b

    const/16 v2, 0x194

    move/from16 v0, v22

    if-ne v2, v0, :cond_c

    .line 592
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v1, v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v26

    goto/16 :goto_0

    .line 594
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v1, v13, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v26

    goto/16 :goto_0

    .line 599
    :cond_d
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_e

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 600
    const/16 v26, -0x5

    goto/16 :goto_0

    .line 603
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 604
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 607
    :cond_f
    const/4 v2, 0x4

    move/from16 v0, v22

    if-eq v2, v0, :cond_10

    const/16 v2, 0x68

    move/from16 v0, v22

    if-eq v2, v0, :cond_10

    const/16 v2, 0xcc

    move/from16 v0, v22

    if-eq v2, v0, :cond_10

    const/16 v2, 0x130

    move/from16 v0, v22

    if-eq v2, v0, :cond_10

    const/16 v2, 0x194

    move/from16 v0, v22

    if-ne v2, v0, :cond_12

    .line 608
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_11

    .line 609
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v8, ""

    invoke-direct {v2, v4, v5, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v7}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v26

    goto/16 :goto_0

    :cond_11
    move-object/from16 v2, p0

    .line 612
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_0

    :cond_12
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 615
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x68 -> :sswitch_0
        0xcc -> :sswitch_0
        0x130 -> :sswitch_0
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 286
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 32
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 318
    const/4 v8, 0x0

    .line 322
    .local v8, "pin2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    const-string v2, "insert return : 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT  "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 326
    const-string v2, "content://icc/error/0"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 478
    :goto_0
    return-object v30

    .line 331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 333
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .line 334
    .local v27, "match":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 335
    .local v3, "efType":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v9

    .line 336
    .local v9, "simId":I
    sparse-switch v27, :sswitch_data_0

    .line 355
    :goto_1
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 356
    .local v12, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "number":Ljava/lang/String;
    const/16 v29, 0x0

    .line 361
    .local v29, "result":I
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "emailStr":Ljava/lang/String;
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_1

    const-string v2, "request_by_id"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "name":Ljava/lang/String;
    const-string v2, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "additionalNumber":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 366
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 406
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    :goto_2
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v25, "buf":Ljava/lang/StringBuilder;
    if-gtz v29, :cond_a

    .line 409
    const-string v2, "error/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 470
    .local v30, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v5    # "number":Ljava/lang/String;
    .end local v7    # "emailStr":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v25    # "buf":Ljava/lang/StringBuilder;
    .end local v29    # "result":I
    .end local v30    # "resultUri":Landroid/net/Uri;
    :sswitch_0
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    goto :goto_1

    .line 349
    :sswitch_1
    const/16 v3, 0x6f3a

    .line 350
    goto :goto_1

    .line 369
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v7    # "emailStr":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v29    # "result":I
    :cond_1
    const/4 v2, 0x4

    move/from16 v0, v27

    if-eq v2, v0, :cond_2

    const/16 v2, 0x68

    move/from16 v0, v27

    if-eq v2, v0, :cond_2

    const/16 v2, 0xcc

    move/from16 v0, v27

    if-eq v2, v0, :cond_2

    const/16 v2, 0x130

    move/from16 v0, v27

    if-eq v2, v0, :cond_2

    const/16 v2, 0x194

    move/from16 v0, v27

    if-ne v2, v0, :cond_9

    .line 370
    :cond_2
    const-string v2, "gas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 371
    .local v16, "strGas":Ljava/lang/String;
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "strAnr":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 373
    .local v15, "strEmail":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_8

    .line 374
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 375
    .local v24, "aasIndex":Ljava/lang/Integer;
    if-nez v5, :cond_3

    .line 376
    const-string v5, ""

    .line 378
    :cond_3
    if-nez v12, :cond_4

    .line 379
    const-string v12, ""

    .line 381
    :cond_4
    new-instance v28, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v2, v12, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v28, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 384
    const/16 v26, 0x0

    .line 385
    .local v26, "emails":[Ljava/lang/String;
    if-eqz v15, :cond_5

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 387
    const/4 v2, 0x0

    aput-object v15, v26, v2

    .line 389
    :cond_5
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 390
    if-eqz v24, :cond_6

    .line 391
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 393
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x9

    if-lt v2, v10, :cond_7

    .line 394
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 395
    .local v31, "sne":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 397
    .end local v31    # "sne":Ljava/lang/String;
    :cond_7
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v10, ""

    const-string v11, ""

    const-string v13, ""

    invoke-direct {v2, v10, v11, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v29

    .line 399
    goto/16 :goto_2

    .end local v24    # "aasIndex":Ljava/lang/Integer;
    .end local v26    # "emails":[Ljava/lang/String;
    .end local v28    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_8
    move-object/from16 v10, p0

    move v11, v3

    move-object v13, v5

    move/from16 v17, v9

    .line 400
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    goto/16 :goto_2

    .line 404
    .end local v14    # "strAnr":Ljava/lang/String;
    .end local v15    # "strEmail":Ljava/lang/String;
    .end local v16    # "strGas":Ljava/lang/String;
    :cond_9
    const/16 v21, 0x0

    move-object/from16 v17, p0

    move/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v20, v5

    move-object/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    goto/16 :goto_2

    .line 413
    .restart local v25    # "buf":Ljava/lang/StringBuilder;
    :cond_a
    sparse-switch v27, :sswitch_data_1

    .line 460
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :sswitch_2
    const-string v2, "adn/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 418
    :sswitch_3
    const-string v2, "adn1/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 421
    :sswitch_4
    const-string v2, "adn2/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 424
    :sswitch_5
    const-string v2, "adn3/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 427
    :sswitch_6
    const-string v2, "adn4/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 430
    :sswitch_7
    const-string v2, "fdn/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 433
    :sswitch_8
    const-string v2, "fdn1/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 436
    :sswitch_9
    const-string v2, "fdn2/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 439
    :sswitch_a
    const-string v2, "fdn3/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 442
    :sswitch_b
    const-string v2, "fdn4/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 445
    :sswitch_c
    const-string v2, "pbr/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 448
    :sswitch_d
    const-string v2, "pbr1/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 451
    :sswitch_e
    const-string v2, "pbr2/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 454
    :sswitch_f
    const-string v2, "pbr3/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 457
    :sswitch_10
    const-string v2, "pbr4/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x66 -> :sswitch_0
        0x68 -> :sswitch_1
        0xca -> :sswitch_0
        0xcc -> :sswitch_1
        0x12e -> :sswitch_0
        0x130 -> :sswitch_1
        0x192 -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch

    .line 413
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_7
        0x4 -> :sswitch_c
        0x65 -> :sswitch_3
        0x66 -> :sswitch_8
        0x68 -> :sswitch_d
        0xc9 -> :sswitch_4
        0xca -> :sswitch_9
        0xcc -> :sswitch_e
        0x12d -> :sswitch_5
        0x12e -> :sswitch_a
        0x130 -> :sswitch_f
        0x191 -> :sswitch_6
        0x192 -> :sswitch_b
        0x194 -> :sswitch_10
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 209
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "actualClassName":Ljava/lang/String;
    const-string v2, "IccProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_0
    return v6

    .line 214
    :cond_0
    const-string v2, "IccProvider"

    const-string v3, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "IccProvider"

    const-string v3, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 231
    sget-object v12, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v12, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 232
    .local v9, "match":I
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 237
    .local v3, "efType":I
    const/16 v12, 0x1f4

    if-ne v3, v12, :cond_0

    .line 238
    iget-object v10, p0, Lcom/android/internal/telephony/IccProvider;->locSimContact:Landroid/database/Cursor;

    .line 281
    :goto_0
    return-object v10

    .line 243
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v11

    .line 248
    .local v11, "simId":I
    const/4 v10, 0x0

    .line 249
    .local v10, "results":Landroid/database/Cursor;
    const/16 v12, 0x6f3a

    if-ne v3, v12, :cond_2

    const-string v12, "request_by_id"

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 250
    const/4 v5, 0x0

    .line 252
    .local v5, "ids":[I
    if-eqz p4, :cond_1

    .line 253
    move-object/from16 v0, p4

    array-length v12, v0

    new-array v5, v12, [I

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, "index":I
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v1, v2, v4

    .line 256
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v5, v7

    .line 255
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1

    .line 260
    .end local v1    # "arg":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    :cond_1
    invoke-direct {p0, v3, v5, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEfEx(I[II)Landroid/database/Cursor;

    move-result-object v10

    .line 267
    .end local v5    # "ids":[I
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v12}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v12

    if-nez v12, :cond_3

    .line 269
    const-string v12, "query return : 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT  "

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 271
    new-instance v10, Landroid/database/MatrixCursor;

    .end local v10    # "results":Landroid/database/Cursor;
    sget-object v12, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .restart local v10    # "results":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, v3, v11}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v10

    goto :goto_2

    .line 277
    :cond_3
    iput-object v10, p0, Lcom/android/internal/telephony/IccProvider;->locSimContact:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 41
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 623
    const/16 v37, 0x0

    .line 627
    .local v37, "pin2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    const-string v2, "update return : 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT  "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 631
    const/16 v30, 0x0

    .line 742
    :cond_0
    :goto_0
    return v30

    .line 635
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 637
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v36

    .line 638
    .local v36, "match":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 639
    .local v3, "efType":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v10

    .line 640
    .local v10, "simId":I
    sparse-switch v36, :sswitch_data_0

    .line 661
    :goto_1
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_3

    const-string v2, "request_by_id"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 663
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "name":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, "number":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 666
    .local v7, "emailStr":Ljava/lang/String;
    const/16 v30, 0x0

    .line 668
    .local v30, "count":I
    move-object/from16 v29, p4

    .local v29, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v32, 0x0

    .local v32, "i$":I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    aget-object v33, v29, v32

    .line 669
    .local v33, "id":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 670
    .local v8, "index":I
    const-string v2, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "additionalNumber":Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    add-int/lit8 v30, v30, 0x1

    .line 668
    :cond_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 646
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "additionalNumber":Ljava/lang/String;
    .end local v7    # "emailStr":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v29    # "arr$":[Ljava/lang/String;
    .end local v30    # "count":I
    .end local v32    # "i$":I
    .end local v33    # "id":Ljava/lang/String;
    .end local v35    # "len$":I
    :sswitch_0
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 647
    goto :goto_1

    .line 653
    :sswitch_1
    const/16 v3, 0x6f3a

    .line 654
    goto :goto_1

    .line 680
    :cond_3
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 681
    .local v20, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 683
    .restart local v5    # "number":Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 684
    .local v14, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 685
    .local v15, "newNumber":Ljava/lang/String;
    const-string v2, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    .line 686
    .local v34, "idInt":Ljava/lang/Integer;
    const/4 v8, 0x0

    .line 687
    .restart local v8    # "index":I
    if-eqz v34, :cond_4

    .line 688
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 690
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: index="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 691
    const/16 v39, 0x0

    .line 692
    .local v39, "result":I
    const/4 v2, 0x4

    move/from16 v0, v36

    if-eq v2, v0, :cond_5

    const/16 v2, 0x68

    move/from16 v0, v36

    if-eq v2, v0, :cond_5

    const/16 v2, 0xcc

    move/from16 v0, v36

    if-eq v2, v0, :cond_5

    const/16 v2, 0x130

    move/from16 v0, v36

    if-eq v2, v0, :cond_5

    const/16 v2, 0x194

    move/from16 v0, v36

    if-ne v2, v0, :cond_e

    .line 693
    :cond_5
    const-string v2, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 694
    .local v16, "strAnr":Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 696
    .local v17, "strEmail":Ljava/lang/String;
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 697
    .local v28, "aasIndex":Ljava/lang/Integer;
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 698
    .local v40, "sne":Ljava/lang/String;
    if-nez v15, :cond_6

    .line 699
    const-string v15, ""

    .line 701
    :cond_6
    if-nez v14, :cond_7

    .line 702
    const-string v14, ""

    .line 704
    :cond_7
    new-instance v38, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v2, v14, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 705
    .local v38, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 706
    const/16 v31, 0x0

    .line 707
    .local v31, "emails":[Ljava/lang/String;
    if-eqz v17, :cond_8

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 708
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 709
    const/4 v2, 0x0

    aput-object v17, v31, v2

    .line 711
    :cond_8
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 712
    if-eqz v28, :cond_9

    .line 713
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 715
    :cond_9
    if-eqz v40, :cond_a

    .line 716
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 718
    :cond_a
    if-lez v8, :cond_c

    .line 719
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v9, 0x8

    if-lt v2, v9, :cond_b

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v1, v8, v10}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I

    move-result v39

    .end local v16    # "strAnr":Ljava/lang/String;
    .end local v17    # "strEmail":Ljava/lang/String;
    .end local v28    # "aasIndex":Ljava/lang/Integer;
    .end local v31    # "emails":[Ljava/lang/String;
    .end local v38    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v40    # "sne":Ljava/lang/String;
    :goto_3
    move/from16 v30, v39

    .line 742
    goto/16 :goto_0

    .restart local v16    # "strAnr":Ljava/lang/String;
    .restart local v17    # "strEmail":Ljava/lang/String;
    .restart local v28    # "aasIndex":Ljava/lang/Integer;
    .restart local v31    # "emails":[Ljava/lang/String;
    .restart local v38    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v40    # "sne":Ljava/lang/String;
    :cond_b
    move-object/from16 v11, p0

    move v12, v3

    move v13, v8

    move/from16 v18, v10

    .line 722
    invoke-direct/range {v11 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    goto :goto_3

    .line 726
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v9, 0x8

    if-lt v2, v9, :cond_d

    .line 727
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v9, ""

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v5, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v2, v1, v10}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v39

    goto :goto_3

    :cond_d
    move-object/from16 v18, p0

    move/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move/from16 v26, v10

    .line 730
    invoke-direct/range {v18 .. v26}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    goto :goto_3

    .line 736
    .end local v16    # "strAnr":Ljava/lang/String;
    .end local v17    # "strEmail":Ljava/lang/String;
    .end local v28    # "aasIndex":Ljava/lang/Integer;
    .end local v31    # "emails":[Ljava/lang/String;
    .end local v38    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v40    # "sne":Ljava/lang/String;
    :cond_e
    if-lez v8, :cond_f

    move-object/from16 v21, p0

    move/from16 v22, v3

    move/from16 v23, v8

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v26, v37

    move/from16 v27, v10

    .line 737
    invoke-direct/range {v21 .. v27}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    goto :goto_3

    :cond_f
    move-object/from16 v18, p0

    move/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v37

    move/from16 v25, v10

    .line 739
    invoke-direct/range {v18 .. v25}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v39

    goto :goto_3

    .line 640
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x66 -> :sswitch_0
        0x68 -> :sswitch_1
        0xca -> :sswitch_0
        0xcc -> :sswitch_1
        0x12e -> :sswitch_0
        0x130 -> :sswitch_1
        0x192 -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch
.end method
