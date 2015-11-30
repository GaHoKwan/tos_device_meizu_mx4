.class Lcom/android/server/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field private static final MEDIATEK_BOOTALARM:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 2752
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$Injector;->clearBootWakeupAlarms(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(ILandroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 2752
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService$Injector;->checkoutBootAlarm(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static checkoutBootAlarm(ILandroid/content/Context;)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2758
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 2760
    :cond_0
    const-string v0, "android.permission.MEIZU_BOOT_ALARM"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    const/16 p0, 0x8

    .line 2767
    .end local p0    # "type":I
    :cond_1
    return p0
.end method

.method private static clearBootWakeupAlarms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2755
    .local p0, "rtcBootWakeupAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 2756
    return-void
.end method
