.class Landroid/widget/Gallery$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/widget/Gallery$MultiChoiceModeListener;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.Gallery.Feature "
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0

    .prologue
    .line 2292
    iput-object p1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2322
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2304
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2306
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChoiceMode:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$1400(Landroid/widget/Gallery;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2308
    iget-object v1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setLongClickable(Z)V

    .line 2314
    :goto_0
    return v0

    .line 2310
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2314
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2326
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/Gallery$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2328
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x0

    # setter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/Gallery;->access$1502(Landroid/widget/Gallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2331
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    # invokes: Landroid/widget/Gallery;->clearChoices()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$1600(Landroid/widget/Gallery;)V

    .line 2333
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    # invokes: Landroid/widget/Gallery;->invalidateViews()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$1700(Landroid/widget/Gallery;)V

    .line 2335
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setLongClickable(Z)V

    .line 2336
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 2340
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/Gallery$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2343
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 2346
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2318
    iget-object v0, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/Gallery$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/Gallery$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/Gallery$MultiChoiceModeListener;

    .prologue
    .line 2296
    iput-object p1, p0, Landroid/widget/Gallery$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/Gallery$MultiChoiceModeListener;

    .line 2297
    return-void
.end method
