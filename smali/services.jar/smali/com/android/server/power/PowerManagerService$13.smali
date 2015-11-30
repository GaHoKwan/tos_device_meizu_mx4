.class Lcom/android/server/power/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->openPowerSavingMode(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$updateDatabase:Z

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0

    .prologue
    .line 4568
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$13;->val$updateDatabase:Z

    iput p3, p0, Lcom/android/server/power/PowerManagerService$13;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4572
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$13;->val$updateDatabase:Z

    if-eqz v0, :cond_0

    .line 4573
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cpu_l"

    iget v2, p0, Lcom/android/server/power/PowerManagerService$13;->val$value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4576
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$13;->val$value:I

    invoke-static {v0}, Landroid/os/MeizuDeviceControl;->saveCPUfreq(I)I

    .line 4577
    return-void
.end method
