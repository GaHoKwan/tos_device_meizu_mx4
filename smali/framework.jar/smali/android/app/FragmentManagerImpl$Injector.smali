.class Landroid/app/FragmentManagerImpl$Injector;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadAnimator(Landroid/app/Activity;Landroid/app/Fragment;IIZI)Landroid/animation/Animator;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "anim"    # I
    .param p3, "transit"    # I
    .param p4, "enter"    # Z
    .param p5, "nextAnim"    # I

    .prologue
    .line 2076
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 2077
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 2078
    iget v1, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/app/Fragment;->onLoadAnimator(Landroid/animation/Animator;IZI)V

    .line 2081
    :cond_0
    return-object v0
.end method

.method static onLoadAnimator(Landroid/app/Fragment;Landroid/animation/Animator;IZI)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "animObj"    # Landroid/animation/Animator;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "fragmentNextAnim"    # I

    .prologue
    .line 2071
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->onLoadAnimator(Landroid/animation/Animator;IZI)V

    .line 2072
    return-void
.end method
