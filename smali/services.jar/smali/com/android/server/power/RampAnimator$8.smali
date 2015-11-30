.class Lcom/android/server/power/RampAnimator$8;
.super Landroid/os/Handler;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0

    .prologue
    .line 787
    .local p0, "this":Lcom/android/server/power/RampAnimator$8;, "Lcom/android/server/power/RampAnimator.8;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator$8;, "Lcom/android/server/power/RampAnimator.8;"
    const/4 v2, 0x1

    .line 789
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 809
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 810
    return-void

    .line 794
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    const-string v1, " MSG_ACCELERATE_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->scheduleStartAnimation(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/RampAnimator;->access$2200(Lcom/android/server/power/RampAnimator;Z)V

    goto :goto_0

    .line 798
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->scheduleStartGoogleAnimation(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/RampAnimator;->access$2300(Lcom/android/server/power/RampAnimator;Z)V

    goto :goto_0

    .line 801
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->scheduleStopGoogleAnimation(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/RampAnimator;->access$2400(Lcom/android/server/power/RampAnimator;Z)V

    goto :goto_0

    .line 804
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$8;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->scheduleStopAnimation(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/RampAnimator;->access$2500(Lcom/android/server/power/RampAnimator;Z)V

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
