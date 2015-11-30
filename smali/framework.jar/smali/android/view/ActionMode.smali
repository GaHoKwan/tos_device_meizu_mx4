.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$OnActionItemDragListener;,
        Landroid/view/ActionMode$BackPressedListener;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen drag event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBackListener:Landroid/view/ActionMode$BackPressedListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen back key pressed event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    .line 317
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen drag event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Landroid/view/ActionMode;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object v0
.end method

.method public getBackPressListener()Landroid/view/ActionMode$BackPressedListener;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen back key pressed event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    return-object v0
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$OnActionItemDragListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen drag event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 333
    iput-object p1, p0, Landroid/view/ActionMode;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    .line 334
    return-void
.end method

.method public setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$BackPressedListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to listen back key pressed event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 300
    iput-object p1, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    .line 301
    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public setDragDismissAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature.add to change animation state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 354
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .param p1, "titleOptional"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    .line 137
    return-void
.end method
