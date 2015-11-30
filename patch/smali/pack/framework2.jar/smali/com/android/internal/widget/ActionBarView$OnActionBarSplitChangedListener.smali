.class public interface abstract Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "cjy@SDK.Feature. add OnActionBarSplitChangedListener"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionBarSplitChangedListener"
.end annotation


# virtual methods
.method public abstract onSplitChanged(Z)V
.end method
