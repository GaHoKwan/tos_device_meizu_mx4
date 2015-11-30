.class final Landroid/widget/AbsListView$CheckForLittleTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.AbsListView.Feature"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForLittleTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 10229
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10231
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$onTouchOutOfItemListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-gez v0, :cond_1

    .line 10232
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$onTouchOutOfItemListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/AbsListView$onTouchOutOfItemListener;->isOnTouchOutOfItem()V

    .line 10234
    :cond_1
    return-void
.end method
