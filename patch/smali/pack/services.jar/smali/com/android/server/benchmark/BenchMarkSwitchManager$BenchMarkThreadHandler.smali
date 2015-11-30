.class Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;
.super Landroid/os/Handler;
.source "BenchMarkSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BenchMarkThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_APP_DESTROY:I = 0x2

.field private static final MESSAGE_APP_RESUMED:I = 0x0

.field private static final MESSAGE_SHOW_ALERTDIALOG:I = 0x3

.field private static final MESSAGE_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;


# direct methods
.method public constructor <init>(Lcom/android/server/benchmark/BenchMarkSwitchManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    .line 240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    return-void
.end method

.method private checkIsDTM()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z
    invoke-static {v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$200(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimer(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 322
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->removeMessages(I)V

    .line 328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 246
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 253
    .local v0, "dtm":Z
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$000(Lcom/android/server/benchmark/BenchMarkSwitchManager;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 255
    if-eqz v0, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    .line 257
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->changeToBenchMarkProtection()V
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$100(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    .line 258
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$202(Lcom/android/server/benchmark/BenchMarkSwitchManager;Z)Z

    .line 259
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->stopTimer()V

    .line 260
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->startTimer(I)V

    .line 261
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    goto :goto_0

    .line 316
    .end local v0    # "dtm":Z
    :catch_0
    move-exception v2

    goto :goto_0

    .line 263
    .restart local v0    # "dtm":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$000(Lcom/android/server/benchmark/BenchMarkSwitchManager;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 265
    if-eqz v0, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    .line 267
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->stopTimer()V

    .line 268
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->changeToBenchMarkProtection()V
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$100(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    .line 269
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$202(Lcom/android/server/benchmark/BenchMarkSwitchManager;Z)Z

    .line 270
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->startTimer(I)V

    .line 271
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    goto :goto_0

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->stopTimer()V

    .line 275
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->startTimer(I)V

    goto :goto_0

    .line 282
    .end local v0    # "dtm":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 283
    .restart local v0    # "dtm":Z
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$300(Lcom/android/server/benchmark/BenchMarkSwitchManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cpu_l"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 285
    .local v1, "powerMode":I
    if-nez v1, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->handleBenchMarkAppResume(I)V
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$400(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)V

    goto/16 :goto_0

    .line 289
    :cond_3
    if-eqz v0, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->showAlertDialog(IZ)V
    invoke-static {v2, v3, v0}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$500(Lcom/android/server/benchmark/BenchMarkSwitchManager;IZ)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "dtm":Z
    .end local v1    # "powerMode":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 302
    .restart local v0    # "dtm":Z
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # getter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$000(Lcom/android/server/benchmark/BenchMarkSwitchManager;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 303
    if-eqz v0, :cond_5

    .line 304
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    .line 312
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->isSwitchtoPowerMode:Z
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$202(Lcom/android/server/benchmark/BenchMarkSwitchManager;Z)Z

    goto/16 :goto_0

    .line 306
    :cond_5
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x4

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I

    .line 307
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    # invokes: Lcom/android/server/benchmark/BenchMarkSwitchManager;->changeToDynamicBenchMarkManagement()V
    invoke-static {v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$600(Lcom/android/server/benchmark/BenchMarkSwitchManager;)V

    .line 308
    invoke-direct {p0}, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->stopTimer()V

    .line 309
    iget-object v2, p0, Lcom/android/server/benchmark/BenchMarkSwitchManager$BenchMarkThreadHandler;->this$0:Lcom/android/server/benchmark/BenchMarkSwitchManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/benchmark/BenchMarkSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager;->access$002(Lcom/android/server/benchmark/BenchMarkSwitchManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
