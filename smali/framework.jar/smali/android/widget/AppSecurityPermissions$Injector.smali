.class Landroid/widget/AppSecurityPermissions$Injector;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initView(Landroid/view/View;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;IILandroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageManager;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "group"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "permissGroupId"    # I
    .param p3, "permissionDotId"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "first"    # Z
    .param p6, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 679
    const v2, 0x10202b2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 680
    .local v0, "permGrpView":Landroid/widget/TextView;
    const v2, 0x10202b1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 681
    .local v1, "permImageView":Landroid/widget/ImageView;
    if-eqz p5, :cond_1

    .line 682
    invoke-virtual {p1, p6}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 683
    if-eqz p1, :cond_0

    .line 684
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v2, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
