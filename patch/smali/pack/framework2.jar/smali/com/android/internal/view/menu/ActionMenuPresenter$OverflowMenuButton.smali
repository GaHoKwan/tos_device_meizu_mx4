.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/meizu/widget/LayoutPositionState;


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "cjy@SDK.Feature. modify OverflowMenuButton extends GlowImageButton and implements LayoutPositionState"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTouchDelegate"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify OverflowMenuButton extends GlowImageButton and implements LayoutPositionState"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 824
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 825
    const v0, 0x10102f6

    invoke-direct {p0, p2, v2, v0}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 828
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 830
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 832
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 864
    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowButtonDrawableSet:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 868
    new-instance v0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    .line 871
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 917
    invoke-super {p0, p1}, Lcom/meizu/widget/GlowImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 918
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 919
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to measure height"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 903
    invoke-super {p0, p1, p2}, Lcom/meizu/widget/GlowImageButton;->onMeasure(II)V

    .line 904
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onTouchEvent"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 945
    invoke-super {p0, p1}, Lcom/meizu/widget/GlowImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 875
    invoke-super {p0}, Lcom/meizu/widget/GlowImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    :goto_0
    return v1

    .line 879
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public restoreDrawable()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add restoreDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 1
    .param p1, "layoutPosition"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setLayoutPosition"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->setLayoutPosition(I)V

    .line 936
    return-void
.end method
