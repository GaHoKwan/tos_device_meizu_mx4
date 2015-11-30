.class public interface abstract Landroid/widget/ListView$DividerFilter;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "#zhangxin@SDK.ListView.Feature"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DividerFilter"
.end annotation


# virtual methods
.method public abstract bottomDeviderEnabled()Z
.end method

.method public abstract dividerEnabled(I)Z
.end method

.method public abstract topDividerEnabled()Z
.end method
