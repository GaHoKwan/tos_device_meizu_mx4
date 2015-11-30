.class public final enum Landroid/os/DeviceStateManager$RemoteHandle;
.super Ljava/lang/Enum;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/DeviceStateManager$RemoteHandle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/DeviceStateManager$RemoteHandle;

.field public static final enum Lock:Landroid/os/DeviceStateManager$RemoteHandle;

.field public static final enum None:Landroid/os/DeviceStateManager$RemoteHandle;

.field public static final enum Root:Landroid/os/DeviceStateManager$RemoteHandle;

.field public static final enum Unlock:Landroid/os/DeviceStateManager$RemoteHandle;

.field public static final enum Unroot:Landroid/os/DeviceStateManager$RemoteHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Landroid/os/DeviceStateManager$RemoteHandle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Landroid/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->None:Landroid/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Landroid/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Root"

    invoke-direct {v0, v1, v3}, Landroid/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->Root:Landroid/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Landroid/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Unroot"

    invoke-direct {v0, v1, v4}, Landroid/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->Unroot:Landroid/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Landroid/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Lock"

    invoke-direct {v0, v1, v5}, Landroid/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->Lock:Landroid/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Landroid/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Unlock"

    invoke-direct {v0, v1, v6}, Landroid/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->Unlock:Landroid/os/DeviceStateManager$RemoteHandle;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/DeviceStateManager$RemoteHandle;

    sget-object v1, Landroid/os/DeviceStateManager$RemoteHandle;->None:Landroid/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/DeviceStateManager$RemoteHandle;->Root:Landroid/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/DeviceStateManager$RemoteHandle;->Unroot:Landroid/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/DeviceStateManager$RemoteHandle;->Lock:Landroid/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/DeviceStateManager$RemoteHandle;->Unlock:Landroid/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->$VALUES:[Landroid/os/DeviceStateManager$RemoteHandle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/DeviceStateManager$RemoteHandle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Landroid/os/DeviceStateManager$RemoteHandle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceStateManager$RemoteHandle;

    return-object v0
.end method

.method public static values()[Landroid/os/DeviceStateManager$RemoteHandle;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/DeviceStateManager$RemoteHandle;->$VALUES:[Landroid/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v0}, [Landroid/os/DeviceStateManager$RemoteHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/DeviceStateManager$RemoteHandle;

    return-object v0
.end method
