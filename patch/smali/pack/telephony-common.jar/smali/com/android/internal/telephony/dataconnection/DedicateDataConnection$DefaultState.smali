.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const v4, 0x41007

    const v2, 0x11002

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 286
    const/4 v9, 0x1

    .line 287
    .local v9, "retVal":Z
    const/4 v6, 0x0

    .line 288
    .local v6, "ar":Landroid/os/AsyncResult;
    const/4 v7, 0x0

    .line 289
    .local v7, "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection receive unhandled message [DefaultState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 368
    :goto_0
    return v9

    .line 291
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState disconnecting to previous connection ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$502(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState FULL_CONNECTION reply connected ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v4

    const-string v5, "hi"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 304
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState CMD_CHANNEL_DISCONNECTED"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->quit()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    goto/16 :goto_0

    .line 308
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v2

    if-ne v0, v2, :cond_1

    move v10, v1

    .line 309
    .local v10, "val":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState REQ_IS_INACTIVE  isInactive="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x41001

    if-eqz v10, :cond_2

    :goto_2
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v10    # "val":Z
    :cond_1
    move v10, v3

    .line 308
    goto :goto_1

    .restart local v10    # "val":Z
    :cond_2
    move v1, v3

    .line 310
    goto :goto_2

    .line 314
    .end local v10    # "val":Z
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v2

    if-ne v0, v2, :cond_3

    move v10, v1

    .line 315
    .restart local v10    # "val":Z
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState REQ_IS_ACTIVE  isActive="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x4100f

    if-eqz v10, :cond_4

    :goto_4
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v10    # "val":Z
    :cond_3
    move v10, v3

    .line 314
    goto :goto_3

    .restart local v10    # "val":Z
    :cond_4
    move v1, v3

    .line 316
    goto :goto_4

    .line 320
    .end local v10    # "val":Z
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    move-result-object v2

    if-ne v0, v2, :cond_5

    move v10, v1

    .line 321
    .restart local v10    # "val":Z
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState REQ_IS_ACTIVATING  isActive="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x7a32d

    if-eqz v10, :cond_6

    :goto_6
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v10    # "val":Z
    :cond_5
    move v10, v3

    .line 320
    goto :goto_5

    .restart local v10    # "val":Z
    :cond_6
    move v1, v3

    .line 322
    goto :goto_6

    .line 326
    .end local v10    # "val":Z
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState REQ_GET_LINK_PROPERTIES"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x41007

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v8

    .line 330
    .local v8, "e":Ljava/lang/CloneNotSupportedException;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 331
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 335
    .end local v8    # "e":Ljava/lang/CloneNotSupportedException;
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState REQ_GET_CID"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x41003

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 339
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v2, "DefaultState REQ_SET_REASON"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x7a329

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 344
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState REQ_GET_REASON"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x7a32b

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 348
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState receive EVENT_CONNECT (unreasonable)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 349
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 350
    .restart local v7    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v7, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto/16 :goto_0

    .line 353
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState receive EVENT_DISCONNECT (defer)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 357
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState receive EVENT_CONNECT (unreasonable)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 358
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 359
    .restart local v7    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v7, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto/16 :goto_0

    .line 362
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DefaultState receive EVENT_CONNECT (defer)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_a
        0x1f6 -> :sswitch_b
        0x1f7 -> :sswitch_c
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x41000 -> :sswitch_2
        0x41002 -> :sswitch_6
        0x41006 -> :sswitch_5
        0x4100e -> :sswitch_3
        0x7a328 -> :sswitch_7
        0x7a32a -> :sswitch_8
        0x7a32c -> :sswitch_4
    .end sparse-switch
.end method