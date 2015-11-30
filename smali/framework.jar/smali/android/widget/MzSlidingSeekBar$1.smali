.class Landroid/widget/MzSlidingSeekBar$1;
.super Landroid/os/Handler;
.source "MzSlidingSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MzSlidingSeekBar;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzSlidingSeekBar;


# direct methods
.method constructor <init>(Landroid/widget/MzSlidingSeekBar;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    iget-object v3, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/MzSlidingSeekBar;->access$100(Landroid/widget/MzSlidingSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    # setter for: Landroid/widget/MzSlidingSeekBar;->mCurrentStartLevel:I
    invoke-static {v2, v3}, Landroid/widget/MzSlidingSeekBar;->access$002(Landroid/widget/MzSlidingSeekBar;I)I

    .line 303
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    iget-object v3, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mEndLevel:I
    invoke-static {v3}, Landroid/widget/MzSlidingSeekBar;->access$300(Landroid/widget/MzSlidingSeekBar;)I

    move-result v3

    # setter for: Landroid/widget/MzSlidingSeekBar;->mCurrentEndLevel:I
    invoke-static {v2, v3}, Landroid/widget/MzSlidingSeekBar;->access$202(Landroid/widget/MzSlidingSeekBar;I)I

    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "isDragging":Z
    :try_start_0
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mIsDragging:Ljava/lang/reflect/Field;
    invoke-static {v2}, Landroid/widget/MzSlidingSeekBar;->access$400(Landroid/widget/MzSlidingSeekBar;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 314
    :goto_1
    if-eqz v1, :cond_0

    .line 315
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/MzSlidingSeekBar;->access$500(Landroid/widget/MzSlidingSeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 318
    :goto_2
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/MzSlidingSeekBar;->access$500(Landroid/widget/MzSlidingSeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 310
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    iget-object v2, p0, Landroid/widget/MzSlidingSeekBar$1;->this$0:Landroid/widget/MzSlidingSeekBar;

    # getter for: Landroid/widget/MzSlidingSeekBar;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/MzSlidingSeekBar;->access$500(Landroid/widget/MzSlidingSeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
