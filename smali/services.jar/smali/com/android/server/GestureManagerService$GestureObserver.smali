.class Lcom/android/server/GestureManagerService$GestureObserver;
.super Landroid/database/ContentObserver;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    .line 486
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 488
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 492
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "enable":I
    const/4 v0, 0x0

    .line 495
    .local v0, "buf":[B
    const-string v2, "mz_quick_wakeup_slide_up"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 496
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_up"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 498
    if-ne v1, v6, :cond_5

    .line 499
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 500
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x8

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 505
    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    .line 637
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 638
    const-string v2, "GestureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange , write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;
    invoke-static {v4, v0, v7}, Lcom/android/server/GestureManagerService;->access$700(Lcom/android/server/GestureManagerService;[BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mGestureAllDisable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v4}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->writeByteToControl([B)V
    invoke-static {v2, v0}, Lcom/android/server/GestureManagerService;->access$800(Lcom/android/server/GestureManagerService;[B)V

    .line 641
    :cond_1
    const-string v2, "mz_quick_wakeup_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_quick_wakeup_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$302(Lcom/android/server/GestureManagerService;I)I

    .line 645
    :cond_2
    const-string v2, "mz_easy_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_easy_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/GestureManagerService;->mEasyModeEnable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$902(Lcom/android/server/GestureManagerService;I)I

    .line 649
    :cond_3
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$300(Lcom/android/server/GestureManagerService;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mEasyModeEnable:I
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$900(Lcom/android/server/GestureManagerService;)I

    move-result v2

    if-ne v2, v6, :cond_1c

    .line 650
    :cond_4
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->disableAllGesture()V
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$1000(Lcom/android/server/GestureManagerService;)V

    .line 654
    :goto_2
    return-void

    .line 502
    :cond_5
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x9

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 503
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto/16 :goto_0

    .line 506
    :cond_6
    const-string v2, "mz_quick_wakeup_slide_left_right"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 507
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_left_right"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 509
    if-ne v1, v6, :cond_7

    .line 510
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 511
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/4 v3, 0x2

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 512
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 513
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v7}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 520
    :goto_3
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    goto/16 :goto_1

    .line 515
    :cond_7
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 516
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    .line 517
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 518
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_3

    .line 521
    :cond_8
    const-string v2, "mz_quick_wakeup_double_click"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 522
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_double_click"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 524
    if-ne v1, v6, :cond_9

    .line 525
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v6, v2, v5

    .line 526
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v6}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 531
    :goto_4
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    goto/16 :goto_1

    .line 528
    :cond_9
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v5, v2, v5

    .line 529
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_4

    .line 536
    :cond_a
    const-string v2, "mz_quick_wakeup_slide_down"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 537
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_down"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 539
    if-ne v1, v6, :cond_b

    .line 540
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 541
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x10

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 546
    :goto_5
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    goto/16 :goto_1

    .line 543
    :cond_b
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x5

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 544
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_5

    .line 547
    :cond_c
    const-string v2, "mz_quick_wakeup_draw_c"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 548
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_c"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 550
    if-ne v1, v6, :cond_d

    .line 551
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 552
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x20

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 557
    :goto_6
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 554
    :cond_d
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 555
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x21

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_6

    .line 558
    :cond_e
    const-string v2, "mz_quick_wakeup_draw_e"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 559
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_e"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 561
    if-ne v1, v6, :cond_f

    .line 562
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 563
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x40

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 568
    :goto_7
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 565
    :cond_f
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x5

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 566
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x41

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_7

    .line 569
    :cond_10
    const-string v2, "mz_quick_wakeup_draw_m"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 570
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_m"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 572
    if-ne v1, v6, :cond_11

    .line 573
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 574
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x80

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 579
    :goto_8
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 576
    :cond_11
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x11

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 577
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x81

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_8

    .line 580
    :cond_12
    const-string v2, "mz_quick_wakeup_draw_o"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 581
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_o"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    if-ne v1, v6, :cond_13

    .line 584
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 585
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x100

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 590
    :goto_9
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 587
    :cond_13
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, -0x81

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 588
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_9

    .line 591
    :cond_14
    const-string v2, "mz_quick_wakeup_draw_s"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 592
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_s"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 594
    if-ne v1, v6, :cond_15

    .line 595
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 596
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x200

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 601
    :goto_a
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 598
    :cond_15
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x21

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 599
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x201

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_a

    .line 602
    :cond_16
    const-string v2, "mz_quick_wakeup_draw_v"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 603
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_v"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 605
    if-ne v1, v6, :cond_17

    .line 606
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 607
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x400

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 612
    :goto_b
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 609
    :cond_17
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 610
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x401

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_b

    .line 613
    :cond_18
    const-string v2, "mz_quick_wakeup_draw_w"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 614
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_w"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 616
    if-ne v1, v6, :cond_19

    .line 617
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 618
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x800

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 623
    :goto_c
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 620
    :cond_19
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x9

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 621
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x801

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_c

    .line 624
    :cond_1a
    const-string v2, "mz_quick_wakeup_draw_z"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_z"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 627
    if-ne v1, v6, :cond_1b

    .line 628
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 629
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x1000

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    .line 634
    :goto_d
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    .line 631
    :cond_1b
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 632
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x1001

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_d

    .line 652
    :cond_1c
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->enableAllGesture()V
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$1100(Lcom/android/server/GestureManagerService;)V

    goto/16 :goto_2
.end method
