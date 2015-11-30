.class public Lcom/android/internal/telephony/RIL$RilPsArbitrator;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilPsArbitrator"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RilPsArbitrator"

.field public static final PSARBITRATOR_RESEND_RR_TO_QUEUE:I


# instance fields
.field public mCurrentMode:I

.field public mDecisionMode:I

.field public mPsRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v1, 0xff

    .line 577
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    .line 578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->getPsArbitrator()Lcom/android/internal/telephony/PsArbitrator;

    .line 585
    sget-object v0, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PsArbitrator;->getDecisionPsMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 587
    sget-object v0, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PsArbitrator;->getCurrentPsMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    .line 588
    const-string v0, "[RilPsArbitrator] PsArbitrtor initialization completed"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v0, "[RilPsArbitrator] Initialize PsArbitrtor failed"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 591
    iput v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 592
    iput v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    goto :goto_0
.end method


# virtual methods
.method public clearMmdcDataCmdsQueue()V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "[RilPsArbitrator] Clear data cmds queue! E"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] queue size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 736
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 737
    :goto_0
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "[RilPsArbitrator] Clear data cmds queue! X"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public doMmdcDataCmds(Lcom/android/internal/telephony/RILRequest;)V
    .locals 4
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 703
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget v0, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-static {}, Lcom/android/internal/telephony/PsArbitrator;->getIsSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] mRilPsArbitrator.mDecisionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget v2, v2, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and PsArbitrator is switching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-static {}, Lcom/android/internal/telephony/PsArbitrator;->getIsSwitching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RilPsArbitrator] Ps is Switching or no decision, enqueue request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 709
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    monitor-exit v1

    .line 716
    :goto_0
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 713
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0
.end method

.method public executeMmdcDataCmdsQueue()V
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v2, "[RilPsArbitrator] Execute data cmds queue! E"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RilPsArbitrator] queue size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is switching:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-static {}, Lcom/android/internal/telephony/PsArbitrator;->getIsSwitching()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 722
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v2, v1, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 723
    :goto_0
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-static {}, Lcom/android/internal/telephony/PsArbitrator;->getIsSwitching()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    .line 725
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mPsRequestList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 726
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 728
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v2, "[RilPsArbitrator] Execute data cmds queue! X"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public getDecisionMode()I
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/android/internal/telephony/RIL;->mPsArbitrator:Lcom/android/internal/telephony/PsArbitrator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PsArbitrator;->getDecisionPsMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 698
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RilPsArbitrator] handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 608
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 618
    :goto_0
    return-void

    .line 610
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    .line 611
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RilPsArbitrator] PSARBITRATOR_RESEND_RR_TO_QUEUE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 612
    sget-object v1, Lcom/android/internal/telephony/RIL;->mRilPsArbitrator:Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->doMmdcDataCmds(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 5
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 626
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v0, :sswitch_data_0

    .line 693
    :goto_0
    return-void

    .line 631
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The decision is 2G, send the request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 634
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    if-ne v0, v3, :cond_2

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The decision is 3G or 4G, send the request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LteDcManager;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The decision is N/A, resend the request to queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 649
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-nez v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is 2G, send the request :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 652
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-ne v0, v3, :cond_5

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is 3G or 4G, send the request :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LteDcManager;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 657
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The decision is N/A, resend the request to queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 666
    :sswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    iget v1, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 668
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-nez v0, :cond_6

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is 2G, send the request :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 671
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-ne v0, v3, :cond_8

    .line 672
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is 3G or 4G, send the request :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LteDcManager;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 676
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is N/A, send the request to protocol 2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 681
    :sswitch_3
    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    if-ne v0, v3, :cond_a

    .line 682
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] The current mode is 3/4G, send the request to protocol 1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LteDcManager;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0

    .line 685
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilPsArbitrator] ignore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 626
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x1b -> :sswitch_0
        0x29 -> :sswitch_1
        0x38 -> :sswitch_0
        0x39 -> :sswitch_2
        0x7e0 -> :sswitch_0
        0x7e5 -> :sswitch_1
        0x81a -> :sswitch_1
        0x834 -> :sswitch_3
    .end sparse-switch
.end method
