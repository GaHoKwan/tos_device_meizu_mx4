.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 238
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 245
    .local v0, "isRequired":Z
    :goto_1
    if-nez v0, :cond_0

    .line 249
    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .line 257
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x1040589

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 242
    .end local v0    # "isRequired":Z
    .end local v1    # "ocl":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 197
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 199
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 202
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v6, :cond_2

    .line 205
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v6, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 222
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {v6, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 224
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 227
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 209
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 210
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104045f

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 211
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 232
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    :cond_0
    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 155
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 156
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 157
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    .line 159
    const v1, 0x10202b3

    invoke-virtual {p0, v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 160
    .local v12, "permGrpIcon":Landroid/widget/ImageView;
    const v1, 0x10202b4

    invoke-virtual {p0, v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 162
    .local v13, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 163
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 170
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    const v3, 0x10202b2

    const v4, 0x10202b1

    move-object v1, p0

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/widget/AppSecurityPermissions$Injector;->initView(Landroid/view/View;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;IILandroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageManager;)V

    .line 174
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 175
    .local v9, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-boolean v1, v0, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 177
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 178
    .local v8, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 179
    .local v11, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 182
    .local v10, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    move-object v9, v8

    .line 188
    .end local v8    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v10    # "newStr":Ljava/lang/CharSequence;
    .end local v11    # "parcel":Landroid/os/Parcel;
    :cond_0
    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method
