.class public final Landroid/provider/MzContactsContract$MzIntents$MzUI;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzUI"
.end annotation


# static fields
.field public static final BROWSE_ALL_CONTACTS_ACTION:Ljava/lang/String; = "com.android.contacts.action.BROWSE_ALL_CONTACTS"

.field public static final REQUESTED_INFO_TYPE_KEY:Ljava/lang/String; = "com.android.contacts.extra.REQUESTED_INFO_TYPE"

.field public static final REQUESTED_INFO_TYPE_NONE:I = -0x1

.field public static final REQUESTED_INFO_TYPE_TEXT:I = 0x1

.field public static final REQUESTED_INFO_TYPE_VCARD:I = 0x0

.field public static final REQUESTED_ORIENTATION:Ljava/lang/String; = "com.android.contacts.extra.REQUESTED_ORIENTATION"

.field public static final SHOULD_INCLUDE_CONTACT_KEY:Ljava/lang/String; = "com.android.contacts.extra.SHOULD_INCLUDE_CONTACT"

.field public static final SHOULD_INCLUDE_PROFILE_KEY:Ljava/lang/String; = "com.android.contacts.extra.SHOULD_INCLUDE_PROFILE"

.field public static final SHOW_CREATE_NEW_CONTACT_BUTTON:Ljava/lang/String; = "com.android.contacts.extra.SHOW_CREATE_NEW_CONTACT_BUTTON"

.field public static final SUB_TITLE_EXTRA_KEY:Ljava/lang/String; = "com.android.contacts.extra.SUB_TITLE_EXTRA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
