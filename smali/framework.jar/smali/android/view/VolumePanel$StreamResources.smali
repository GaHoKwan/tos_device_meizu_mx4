.class final enum Landroid/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum DtmfStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum FMStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MATVStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum SystemStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 204
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x1040428

    const v5, 0x10802e5

    const v6, 0x10802e5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    .line 209
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x1040429

    const v5, 0x10803d3

    const v6, 0x10803d3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 214
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x104042a

    const v5, 0x10802e5

    const v6, 0x10802e5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    .line 219
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x1040425

    const v5, 0x10803d3

    const v6, 0x10803d3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    .line 224
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "FMStream"

    const/4 v2, 0x4

    const/16 v3, 0xa

    const v4, 0x2050051

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    .line 229
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "MATVStream"

    const/4 v2, 0x5

    const/16 v3, 0xb

    const v4, 0x2050052

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    .line 234
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x6

    const/4 v3, 0x3

    const v4, 0x104042b

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    .line 239
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x7

    const/4 v3, 0x5

    const v4, 0x104042c

    const v5, 0x10803d3

    const v6, 0x10803d3

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    .line 245
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "MasterStream"

    const/16 v2, 0x8

    const/16 v3, -0x64

    const v4, 0x104042b

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    .line 250
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "RemoteStream"

    const/16 v2, 0x9

    const/16 v3, -0xc8

    const v4, 0x104042b

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    .line 255
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "SystemStream"

    const/16 v2, 0xa

    const/4 v3, 0x1

    const v4, 0x1040427

    const v5, 0x10803d3

    const v6, 0x10803d3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    .line 260
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "DtmfStream"

    const/16 v2, 0xb

    const/16 v3, 0x8

    const v4, 0x1040427

    const v5, 0x108039e

    const v6, 0x108039e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->DtmfStream:Landroid/view/VolumePanel$StreamResources;

    .line 141
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->DtmfStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "streamType"    # I
    .param p4, "descRes"    # I
    .param p5, "iconRes"    # I
    .param p6, "iconMuteRes"    # I
    .param p7, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    iput p3, p0, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 276
    iput p4, p0, Landroid/view/VolumePanel$StreamResources;->descRes:I

    .line 277
    iput p5, p0, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    .line 278
    iput p6, p0, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 279
    iput-boolean p7, p0, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 280
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    const-class v0, Landroid/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Landroid/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method
