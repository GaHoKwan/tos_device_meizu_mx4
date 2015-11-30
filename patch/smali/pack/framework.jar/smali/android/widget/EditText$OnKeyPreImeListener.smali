.class public interface abstract Landroid/widget/EditText$OnKeyPreImeListener;
.super Ljava/lang/Object;
.source "EditText.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "jiangjunlei@SDK.Feature. add interface keyperimelistener"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyPreImeListener"
.end annotation


# virtual methods
.method public abstract onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method
