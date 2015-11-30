.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String;

.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final DRM_LEVEL_ALL:I = 0x4

.field private static final DRM_LEVEL_FL:I = 0x1

.field private static final DRM_LEVEL_SD:I = 0x2

.field private static final EXTRA_DRM_LEVEL:Ljava/lang/String; = "android.intent.extra.drm_level"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_POSITION:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_POSITION"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_MORE_RINGTONES:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field public static final KEY_DEFAULT_ALARM:Ljava/lang/String; = "mtk_audioprofile_default_alarm"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final MZ_EXTRA_RINGTONE_CUSTOM_TYPE:Ljava/lang/String; = "meizu.intent.extra.ringtone.CUSTOM_TYPE"

.field public static final MZ_EXTRA_RINGTONE_SHOW_CUSTOM:Ljava/lang/String; = "meizu.intent.extra.ringtone.SHOW_CUSTOM"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_CALENDAR:I = 0x80

.field public static final TYPE_EMAIL:I = 0x40

.field public static final TYPE_MMS:I = 0x20

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    const-string/jumbo v1, "title AS _display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 238
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title AS title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 245
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "is_drm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "drm_method"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 981
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/RingtoneManager;->AUDIO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 326
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 338
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 339
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 326
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 350
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 351
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 352
    return-void
.end method

.method private appendDrmToWhereClause()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 705
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 706
    const-string v3, ""

    .line 730
    :goto_0
    return-object v3

    .line 712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string/jumbo v3, "is_drm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 719
    .local v1, "it":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 721
    const-string v3, "android.intent.extra.drm_level"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 722
    .local v0, "extraValue":I
    if-ne v0, v5, :cond_1

    .line 723
    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drm_method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .end local v0    # "extraValue":I
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .param p1, "includeDrm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 701
    :goto_0
    return-object v2

    .line 679
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 683
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 686
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 691
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1030
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1064
    :goto_0
    return-object v1

    .line 1032
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1035
    :cond_1
    const/4 v0, 0x0

    .line 1036
    .local v0, "oldString":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    .line 1037
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ringtone_sound_file_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1060
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1039
    :cond_3
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_sound_file_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1042
    :cond_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5

    .line 1046
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1047
    :cond_5
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_6

    .line 1048
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mms_sound_file_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1050
    :cond_6
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_7

    .line 1051
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "email_sound_file_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1053
    :cond_7
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_2

    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calendar_sound_file_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1064
    :cond_8
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->restoreMusicTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 812
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-object v2

    .line 815
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "uriString":Ljava/lang/String;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get actual default ringtone uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;IZ)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ifSettings"    # Z

    .prologue
    const/4 v3, 0x0

    .line 827
    if-nez p2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-object v3

    .line 828
    :cond_1
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "setting":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 834
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 836
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "defaultString":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getMusicURIForRingToneWhitFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "uri":Ljava/lang/String;
    const-string v6, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActualDefaultRingtoneUri uri is not in MediaStore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 840
    .local v3, "tempUri":Landroid/net/Uri;
    :cond_2
    invoke-static {p0, p1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 843
    .end local v0    # "defaultString":Ljava/lang/String;
    .end local v3    # "tempUri":Landroid/net/Uri;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "defaultUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1249
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1250
    .local v1, "resolver":Landroid/content/ContentResolver;
    sparse-switch p1, :sswitch_data_0

    .line 1271
    const-string v4, "RingtoneManager"

    const-string v5, "getDefaultRingtoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_0
    return-object v3

    .line 1252
    :sswitch_0
    const-string/jumbo v4, "mtk_audioprofile_default_ringtone"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    :goto_1
    if-nez v2, :cond_0

    move-object v0, v3

    .line 1275
    :goto_2
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultRingtoneUri: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 1276
    goto :goto_0

    .line 1256
    :sswitch_1
    const-string/jumbo v4, "mtk_audioprofile_default_notification"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    goto :goto_1

    .line 1260
    :sswitch_2
    const-string/jumbo v4, "mtk_audioprofile_default_alarm"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1261
    goto :goto_1

    .line 1264
    :sswitch_3
    const-string/jumbo v4, "mtk_audioprofile_default_video_call"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    goto :goto_1

    .line 1268
    :sswitch_4
    const-string/jumbo v4, "mtk_audioprofile_default_sip_call"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1269
    goto :goto_1

    .line 1274
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1250
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 1155
    if-nez p0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v0

    .line 1157
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1158
    const/4 v0, 0x1

    goto :goto_0

    .line 1159
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1160
    const/4 v0, 0x2

    goto :goto_0

    .line 1161
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1162
    const/4 v0, 0x4

    goto :goto_0

    .line 1163
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1164
    const/16 v0, 0x20

    goto :goto_0

    .line 1165
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1166
    const/16 v0, 0x80

    goto :goto_0

    .line 1167
    :cond_6
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1168
    const/16 v0, 0x40

    goto :goto_0

    .line 1169
    :cond_7
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1170
    const/16 v0, 0x8

    goto :goto_0

    .line 1171
    :cond_8
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1188
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1189
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1205
    :goto_0
    return-object v0

    .line 1190
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1191
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1192
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1193
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1194
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 1195
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1196
    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    .line 1197
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1198
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 1199
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1200
    :cond_5
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    .line 1201
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1202
    :cond_6
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_7

    .line 1203
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1205
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 626
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 618
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v4, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 633
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 634
    .local v7, "status":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v6, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 636
    const-string/jumbo v0, "is_ringtone"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const-string/jumbo v0, "mounted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_display_name COLLATE LOCALIZED"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public static getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    const/4 v10, 0x0

    .line 942
    if-nez p1, :cond_0

    move-object v8, v10

    .line 977
    :goto_0
    return-object v8

    .line 944
    :cond_0
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMusicFilePathForRingTone uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 946
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 947
    const-string v8, "/system/media/audio/ringtones/Technology.ogg"

    goto :goto_0

    .line 948
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 949
    const-string v8, "/system/media/audio/notifications/VideoRecord.ogg"

    goto :goto_0

    .line 950
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 951
    const-string v8, "/system/media/audio/alarms/Morning_Dew.ogg"

    goto :goto_0

    .line 952
    :cond_3
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_4

    .line 953
    const-string v8, "/system/media/audio/notifications/Triumph.ogg"

    goto :goto_0

    .line 954
    :cond_4
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_5

    .line 955
    const-string v8, "/system/media/audio/notifications/VideoRecord.ogg"

    goto :goto_0

    .line 956
    :cond_5
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_6

    .line 957
    const-string v8, "/system/media/audio/notifications/Doorbell.ogg"

    goto :goto_0

    :cond_6
    move-object v8, v10

    .line 959
    goto :goto_0

    .line 963
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 966
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    move-object v8, v10

    .line 967
    goto :goto_0

    .line 970
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 971
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 972
    .local v9, "index":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 973
    .local v8, "fileData":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 975
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "fileData":Ljava/lang/String;
    .end local v9    # "index":I
    :catch_0
    move-exception v7

    .line 976
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 977
    goto/16 :goto_0
.end method

.method public static getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 885
    invoke-static/range {p2 .. p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 887
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 935
    :cond_1
    :goto_0
    return-object v13

    .line 890
    :cond_2
    const/4 v7, 0x0

    .line 892
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_display_name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "title"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 895
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 896
    :cond_3
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMusicTitleFor uri is not in MediaStore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-static/range {p2 .. p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    move/from16 v0, p2

    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, "defaultString":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 899
    const-string v13, ""
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    if-eqz v7, :cond_1

    .line 935
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 901
    :cond_4
    :try_start_1
    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getMusicURIForRingToneWhitFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 902
    .local v14, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 906
    .end local v8    # "defaultString":Ljava/lang/String;
    .end local v14    # "uriString":Ljava/lang/String;
    :cond_5
    const/4 v11, -0x1

    .line 907
    .local v11, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media/internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 908
    const-string/jumbo v1, "title"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 912
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 913
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 916
    .local v13, "title":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 918
    .local v12, "t":[Ljava/lang/String;
    array-length v1, v12

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 919
    const-string v13, ""

    .line 920
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v1, v12

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_8

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v12, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 922
    add-int/lit8 v1, v10, 0x1

    array-length v2, v12

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_6

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 920
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 910
    .end local v10    # "i":I
    .end local v12    # "t":[Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_7
    const-string v1, "_display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    goto :goto_1

    .line 928
    .restart local v12    # "t":[Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_8
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMusicTitleForRingTone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    if-eqz v7, :cond_1

    .line 935
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 930
    .end local v11    # "index":I
    .end local v12    # "t":[Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 931
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 932
    const/4 v13, 0x0

    .line 934
    if-eqz v7, :cond_1

    .line 935
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 934
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    .line 935
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method public static getMusicURIForRingToneWhitFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 990
    const/4 v3, 0x0

    .line 991
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 992
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 993
    const-string v0, ""

    .line 1022
    :cond_0
    :goto_0
    return-object v0

    .line 994
    :cond_1
    const/4 v6, 0x0

    .line 996
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 997
    :try_start_0
    const-string v3, "_data=?"

    .line 998
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v10, v0

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .local v10, "selectionArgs":[Ljava/lang/String;
    move-object v4, v10

    .line 1002
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1005
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1006
    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    if-eqz v6, :cond_0

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1009
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1010
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1012
    .local v8, "fileData":J
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1021
    if-eqz v6, :cond_0

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1017
    .end local v8    # "fileData":J
    :catch_0
    move-exception v7

    .line 1018
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1021
    if-eqz v6, :cond_5

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    goto/16 :goto_0

    .line 1021
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getRingName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 1323
    const-string v2, ""

    .line 1324
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1326
    .local v4, "valueRingtone":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1329
    .local v3, "nameRingtone":[Ljava/lang/String;
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 1330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ringtone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1363
    :goto_0
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 1364
    array-length v0, v4

    .line 1365
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 1366
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1367
    aget-object v2, v3, v1

    .line 1365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1334
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    .line 1335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1339
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_3

    .line 1340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alarm_alert"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1344
    :cond_3
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_4

    .line 1345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mms_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1349
    :cond_4
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_5

    .line 1350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "email_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1354
    :cond_5
    and-int/lit16 v5, p1, 0x80

    if-eqz v5, :cond_6

    .line 1355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "calendar_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p0, v5, v6}, Landroid/media/RingtoneManager;->displayMusicTitle(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1360
    :cond_6
    const-string v2, ""

    goto/16 :goto_0

    .line 1371
    :cond_7
    return-object v2
.end method

.method public static getRingName(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    .line 1380
    const-string v2, ""

    .line 1381
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1383
    .local v4, "valueRingtone":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1386
    .local v3, "nameRingtone":[Ljava/lang/String;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1

    .line 1387
    const/4 v5, 0x1

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    .line 1408
    :goto_0
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 1409
    array-length v0, v4

    .line 1410
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 1411
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1412
    aget-object v2, v3, v1

    .line 1410
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1389
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2

    .line 1390
    const/4 v5, 0x2

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1392
    :cond_2
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_3

    .line 1393
    const/4 v5, 0x4

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1395
    :cond_3
    and-int/lit8 v5, p2, 0x20

    if-eqz v5, :cond_4

    .line 1396
    const/16 v5, 0x20

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1398
    :cond_4
    and-int/lit8 v5, p2, 0x40

    if-eqz v5, :cond_5

    .line 1399
    const/16 v5, 0x40

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1401
    :cond_5
    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_6

    .line 1402
    const/16 v5, 0x80

    invoke-static {p0, p1, v5}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1405
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 1416
    :cond_7
    return-object v2
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 764
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 785
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 786
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 787
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 789
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v1    # "r":Landroid/media/Ringtone;
    :goto_0
    return-object v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1113
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v0, "ringtone"

    .line 1130
    :goto_0
    return-object v0

    .line 1115
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1116
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 1117
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1118
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 1119
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 1120
    const-string/jumbo v0, "mms_sound"

    goto :goto_0

    .line 1121
    :cond_3
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_4

    .line 1122
    const-string v0, "email_sound"

    goto :goto_0

    .line 1123
    :cond_4
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_5

    .line 1124
    const-string v0, "calendar_sound"

    goto :goto_0

    .line 1125
    :cond_5
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    .line 1126
    const-string/jumbo v0, "video_call"

    goto :goto_0

    .line 1127
    :cond_6
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_7

    .line 1128
    const-string/jumbo v0, "sip_call"

    goto :goto_0

    .line 1130
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 536
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 591
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 592
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 595
    :cond_0
    if-nez v1, :cond_1

    .line 596
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 599
    :cond_1
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 603
    if-eqz p1, :cond_1

    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 609
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 613
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1141
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1289
    if-nez p1, :cond_0

    .line 1290
    const-string v3, "RingtoneManager"

    const-string v4, "Check ringtone exist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v1, 0x0

    .line 1314
    :goto_0
    return v1

    .line 1293
    :cond_0
    const/4 v1, 0x0

    .line 1295
    .local v1, "exist":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1296
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_1

    .line 1297
    const/4 v1, 0x0

    .line 1313
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1300
    const/4 v1, 0x1

    goto :goto_1

    .line 1302
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1304
    const/4 v1, 0x0

    .line 1311
    goto :goto_1

    .line 1305
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1307
    const/4 v1, 0x1

    .line 1311
    goto :goto_1

    .line 1308
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1310
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static restoreMusicTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getMusicURIForRingToneWhitFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1073
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :cond_0
    if-eqz v0, :cond_8

    .line 1076
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ringtone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1102
    :cond_1
    :goto_0
    if-eqz p2, :cond_7

    .line 1103
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 1108
    :goto_1
    return-object v1

    .line 1080
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 1082
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1084
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 1086
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarm_alert"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1088
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1089
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mms_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1093
    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 1095
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "email_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1097
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 1099
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calendar_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1105
    :cond_7
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getMusicTitleForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1108
    :cond_8
    const-string v1, ""

    goto :goto_1
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 858
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 862
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "ringtone_sound_file_path"

    if-eqz p2, :cond_2

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 860
    goto :goto_1

    .line 865
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "notification_sound_file_path"

    if-eqz p2, :cond_5

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 868
    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_8

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "alarm_sound_file_path"

    if-eqz p2, :cond_7

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 871
    :cond_8
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_a

    .line 872
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mms_sound_file_path"

    if-eqz p2, :cond_9

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 874
    :cond_a
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_c

    .line 875
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "email_sound_file_path"

    if-eqz p2, :cond_b

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 877
    :cond_c
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "calendar_sound_file_path"

    if-eqz p2, :cond_d

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->getMusicFilePathForRingTone(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 647
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 648
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 653
    :cond_0
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_2

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3

    .line 658
    :cond_2
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 662
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_4
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 475
    iget-object v4, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCursor with old cursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v4, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 488
    :goto_0
    return-object v4

    .line 480
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 481
    .local v1, "internalCursor":Landroid/database/Cursor;
    iget-boolean v4, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 482
    .local v0, "drmCursor":Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v3

    .line 483
    .local v3, "mediaCursor":Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    new-array v4, v8, [Landroid/database/Cursor;

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    const-string/jumbo v5, "title_key"

    invoke-direct {v2, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .line 485
    .local v2, "mTempCursor":Landroid/database/Cursor;
    new-instance v4, Landroid/database/MergeCursor;

    new-array v5, v8, [Landroid/database/Cursor;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v4, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 486
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCursor.hashCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCursor with new cursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v4, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 481
    .end local v0    # "drmCursor":Landroid/database/Cursor;
    .end local v2    # "mTempCursor":Landroid/database/Cursor;
    .end local v3    # "mediaCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public getInternalRingtonesCount()I
    .locals 4

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 493
    .local v0, "internalCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/android/internal/database/SortCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .line 495
    .local v1, "mTempCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    return v2
.end method

.method public getNewCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1223
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 1224
    .local v1, "internalCursor":Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 1225
    .local v0, "drmCursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 1227
    .local v2, "mediaCursor":Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 1229
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNewCursor mCursor.hashCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNewCursor with cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3

    .line 1224
    .end local v0    # "drmCursor":Landroid/database/Cursor;
    .end local v2    # "mediaCursor":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 506
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 511
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    .line 548
    if-nez p1, :cond_1

    move v3, v6

    .line 576
    :cond_0
    :goto_0
    return v3

    .line 550
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 551
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 553
    .local v2, "cursorCount":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v6

    .line 554
    goto :goto_0

    .line 558
    :cond_2
    const/4 v0, 0x0

    .line 559
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 560
    .local v4, "previousUriString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 561
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 563
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 566
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 573
    move-object v4, v5

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "uriString":Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 576
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    :cond_0
    const-string v1, "RingtoneManager"

    const-string/jumbo v2, "mCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    :goto_0
    return-object v0

    .line 528
    :cond_2
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 398
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 392
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 395
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 414
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 364
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 369
    const/4 p1, 0x2

    .line 371
    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_2

    .line 372
    const/4 p1, 0x2

    .line 374
    :cond_2
    const/16 v0, 0x80

    if-ne p1, v0, :cond_3

    .line 375
    const/4 p1, 0x2

    .line 378
    :cond_3
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 379
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 380
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 430
    :cond_0
    return-void
.end method
