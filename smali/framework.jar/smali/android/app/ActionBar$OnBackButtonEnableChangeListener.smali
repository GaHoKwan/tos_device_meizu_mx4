.class public interface abstract Landroid/app/ActionBar$OnBackButtonEnableChangeListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "suyouxiong@SDK.Feature.add to monitor the enable state of back button"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBackButtonEnableChangeListener"
.end annotation


# virtual methods
.method public abstract onBackButtonEnableChange(Z)V
.end method
