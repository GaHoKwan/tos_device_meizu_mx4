.class Lcom/android/internal/widget/MzActionBarContainer$MatchThread;
.super Ljava/lang/Object;
.source "MzActionBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 461
    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/internal/widget/MzActionBarContainer;->access$202(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 464
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarContainer;->getSplitBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->isDarkenBackground(Landroid/graphics/Bitmap;)Z
    invoke-static {v3, v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$400(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 466
    .local v2, "isDarken":Z
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$600(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10805c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$502(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 468
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10805f4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$802(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 470
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mRefreshHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$1100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "isDarken":Z
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    return-void

    .line 466
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "isDarken":Z
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10805c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$1000(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10805f3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 471
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "isDarken":Z
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "MzActionBarContainer"

    const-string v4, " fail to match the color of backButton"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 474
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
