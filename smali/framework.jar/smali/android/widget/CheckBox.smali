.class public Landroid/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# instance fields
.field private checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the checkBox hook for animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 80
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 86
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature override the method to let the hook to switch the state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setActivated(Z)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setActivated(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature override the method to let the hook to do animation or not"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setChecked(Z)V

    goto :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 1
    .param p1, "isAnimation"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature whether is animation checkbox"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-direct {v0, p0}, Lcom/meizu/widget/CheckBoxAnimHook;-><init>(Landroid/widget/CheckBox;)V

    iput-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->checkBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setIsAnimation(Z)V

    .line 127
    return-void
.end method

.method public superSetActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature access the original SetActivated method"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setActivated(Z)V

    .line 143
    return-void
.end method

.method public superSetChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature access the original SetChecked method"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    return-void
.end method
