.class Lcom/android/internal/telephony/gemini/GeminiDataConn$e;
.super Lcom/android/internal/util/State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic P:Lcom/android/internal/telephony/gemini/GeminiDataConn;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const v2, 0x11002

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiDcDefaultState: shouldn\'t happen but ignore msg.what=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 584
    :goto_1
    return v6

    .line 521
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget v4, v1, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mId:I

    const-string v5, "hi"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto :goto_1

    .line 536
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_1

    .line 541
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iput-object v5, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 545
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->g(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    move-result-object v1

    if-ne v0, v1, :cond_2

    move v0, v6

    .line 547
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x44005

    if-eqz v0, :cond_1

    move v3, v6

    :cond_1
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1

    :cond_2
    move v0, v3

    .line 545
    goto :goto_2

    .line 551
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->h(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->i(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    move-result-object v1

    if-ne v0, v1, :cond_5

    :cond_3
    move v0, v6

    .line 553
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x44007

    if-eqz v0, :cond_4

    move v3, v6

    :cond_4
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_5
    move v0, v3

    .line 551
    goto :goto_3

    .line 557
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v1, "Just transit to Acting state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 562
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_PS_ATTACH: SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 564
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    goto/16 :goto_1

    .line 568
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v1, "Just transit to Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 570
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    goto :goto_4

    .line 573
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->g(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x43005 -> :sswitch_7
        0x43006 -> :sswitch_5
        0x43007 -> :sswitch_6
        0x44004 -> :sswitch_3
        0x44006 -> :sswitch_4
    .end sparse-switch
.end method
