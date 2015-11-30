.class final Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 2109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2114
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2145
    :goto_0
    return-void

    .line 2116
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2120
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2124
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2128
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceSbProximitySensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2135
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->lightSensorChanged()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1700(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2138
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->handleDownByPercentLocked()Z

    goto :goto_0

    .line 2141
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleUpdateLightSensorPowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1900(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 2114
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method
