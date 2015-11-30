.class public Lcom/android/server/AppOpsHandler;
.super Ljava/lang/Object;
.source "AppOpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsHandler$DialogItem;
    }
.end annotation


# static fields
.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_ALLOWED_ALWAYLS:I = 0x4

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_DENIED_ALWAYLS:I = 0x3

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field private static final DISMISS:I = 0x2

.field public static ISCHECK:Z = false

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AppOpsHandler"

.field private static final UPDATE_DEFUAT:I


# instance fields
.field private code:I

.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsHandler$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageLabel:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field private pkg:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AppOpsHandler;->ISCHECK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPackageLabel:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/server/AppOpsHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsHandler$1;-><init>(Lcom/android/server/AppOpsHandler;)V

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPhHandler:Landroid/os/Handler;

    .line 349
    iput-object p1, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppOpsHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsHandler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsHandler;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsHandler;Lcom/android/server/AppOpsHandler$DialogItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandler;
    .param p1, "x1"    # Lcom/android/server/AppOpsHandler$DialogItem;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsHandler;->updateDialogList(Lcom/android/server/AppOpsHandler$DialogItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsHandler;Landroid/content/DialogInterface;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsHandler;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsHandler;->update(Landroid/content/DialogInterface;ZZZ)V

    return-void
.end method

.method private checkDialogList(IILjava/lang/String;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandler$DialogItem;

    .line 116
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    iget v2, v0, Lcom/android/server/AppOpsHandler$DialogItem;->code:I

    if-ne p1, v2, :cond_0

    iget v2, v0, Lcom/android/server/AppOpsHandler$DialogItem;->uid:I

    if-ne p2, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    if-ne p3, v2, :cond_0

    .line 118
    iget-object v2, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    .line 124
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPermissonTypeDetails(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 306
    sparse-switch p1, :sswitch_data_0

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    return-object v0

    .line 308
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040722

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 312
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104072e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 316
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040734

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 320
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040728

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 324
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 328
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040730

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 332
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040736

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 336
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104072a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_3
        0xf -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_5
        0x44 -> :sswitch_6
        0x45 -> :sswitch_4
        0x46 -> :sswitch_7
    .end sparse-switch
.end method

.method private showSettingDialog(Landroid/content/Context;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # I

    .prologue
    .line 221
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const v3, 0x103031b

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 224
    .local v9, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 226
    .local v5, "d":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 227
    const v3, 0x10900c3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 229
    .local v20, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 231
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 233
    const v3, 0x1020391

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 234
    .local v17, "reject":Landroid/widget/Button;
    const v3, 0x1020392

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 235
    .local v8, "accept":Landroid/widget/Button;
    const v3, 0x102038d

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 236
    .local v19, "title":Landroid/widget/TextView;
    const v3, 0x102038e

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 237
    .local v10, "content":Landroid/widget/TextView;
    const v3, 0x102038c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 238
    .local v13, "icon":Landroid/widget/ImageView;
    const v3, 0x102038f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 240
    .local v18, "remember":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsHandler;->getPermissonTypeDetails(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040703

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsHandler;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsHandler;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v3, Lcom/android/server/AppOpsHandler$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/AppOpsHandler$2;-><init>(Lcom/android/server/AppOpsHandler;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v3, Lcom/android/server/AppOpsHandler$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/AppOpsHandler$3;-><init>(Lcom/android/server/AppOpsHandler;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v3, Lcom/android/server/AppOpsHandler$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/server/AppOpsHandler$4;-><init>(Lcom/android/server/AppOpsHandler;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 287
    .local v16, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandler;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 288
    .local v14, "in":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 289
    .local v11, "drawble":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v11    # "drawble":Landroid/graphics/drawable/Drawable;
    .end local v14    # "in":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v2, Lcom/android/server/AppOpsHandler$DialogItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AppOpsHandler;->code:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/AppOpsHandler;->uid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AppOpsHandler;->pkg:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsHandler$DialogItem;-><init>(Lcom/android/server/AppOpsHandler;ILandroid/app/AlertDialog;ILjava/lang/String;)V

    .line 296
    .local v2, "item":Lcom/android/server/AppOpsHandler$DialogItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 298
    .local v15, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v15, Landroid/os/Message;->what:I

    .line 299
    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AppOpsHandler;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4fb0

    invoke-virtual {v3, v15, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    return-void

    .line 290
    .end local v2    # "item":Lcom/android/server/AppOpsHandler$DialogItem;
    .end local v15    # "message":Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 292
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 128
    iget-object v3, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 130
    .local v2, "mAppOps":Landroid/app/AppOpsManager;
    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v3, "code"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/AppOpsHandler;->code:I

    .line 134
    const-string v3, "uid"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/AppOpsHandler;->uid:I

    .line 135
    const-string v3, "pkg"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AppOpsHandler;->pkg:Ljava/lang/String;

    .line 136
    iget v3, p0, Lcom/android/server/AppOpsHandler;->code:I

    iget v4, p0, Lcom/android/server/AppOpsHandler;->uid:I

    iget-object v5, p0, Lcom/android/server/AppOpsHandler;->pkg:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/AppOpsHandler;->checkDialogList(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 143
    iget-object v3, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AppOpsHandler;->mPackageLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/AppOpsHandler;->showSettingDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private update(Landroid/content/DialogInterface;ZZZ)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "item":Lcom/android/server/AppOpsHandler$DialogItem;
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandler$DialogItem;

    .line 158
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v4, p1, :cond_1

    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    :cond_1
    move-object v2, v0

    .line 166
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 167
    if-eqz p2, :cond_5

    .line 168
    if-eqz p4, :cond_4

    .line 169
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :goto_0
    invoke-direct {p0, v2, v7}, Lcom/android/server/AppOpsHandler;->updatePermissionControl(Lcom/android/server/AppOpsHandler$DialogItem;Z)V

    .line 203
    :cond_3
    :goto_1
    return-void

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 179
    :cond_5
    if-eqz p3, :cond_6

    .line 180
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, "res":I
    if-ne v3, v9, :cond_3

    .line 184
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 189
    .end local v3    # "res":I
    :cond_6
    invoke-direct {p0, v2, v8}, Lcom/android/server/AppOpsHandler;->updatePermissionControl(Lcom/android/server/AppOpsHandler$DialogItem;Z)V

    .line 190
    if-eqz p4, :cond_7

    .line 191
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 195
    :cond_7
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method private updateDialogList(Lcom/android/server/AppOpsHandler$DialogItem;)V
    .locals 7
    .param p1, "item"    # Lcom/android/server/AppOpsHandler$DialogItem;

    .prologue
    const/4 v6, 0x0

    .line 95
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsHandler$DialogItem;

    .line 96
    .local v0, "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    iget v4, p1, Lcom/android/server/AppOpsHandler$DialogItem;->code:I

    iget v5, v0, Lcom/android/server/AppOpsHandler$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/android/server/AppOpsHandler$DialogItem;->uid:I

    iget v5, v0, Lcom/android/server/AppOpsHandler$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 98
    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, v0, Lcom/android/server/AppOpsHandler$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/AppOpsHandler$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/AppOpsHandler;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "mPackageNameStringOp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 104
    .local v3, "message":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 105
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    .end local v2    # "mPackageNameStringOp":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppOpsHandler;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    .end local v0    # "aDialgItem":Lcom/android/server/AppOpsHandler$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/android/server/AppOpsHandler$DialogItem;Z)V
    .locals 3
    .param p1, "item"    # Lcom/android/server/AppOpsHandler$DialogItem;
    .param p2, "limit"    # Z

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 208
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    if-nez v0, :cond_0

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public handleOperationCTA(IILjava/lang/String;Lcom/android/server/AppOpsService;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 355
    sget-boolean v1, Lcom/android/server/AppOpsHandler;->ISCHECK:Z

    if-nez v1, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 405
    :goto_0
    return v1

    .line 359
    :cond_0
    monitor-enter p4

    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, "i":I
    const/4 v9, 0x0

    .line 364
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 366
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 367
    const/4 v1, 0x0

    :try_start_1
    monitor-exit p4

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 370
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 372
    const/4 v1, 0x0

    monitor-exit p4

    goto :goto_0

    .line 375
    .end local v7    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_op_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 376
    .local v11, "opName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v11, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 378
    .local v12, "res":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_2

    .line 379
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AppOpsHandler;->queueOperationMessage(IILjava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :cond_2
    :goto_1
    const/4 v1, 0x2

    if-ne v12, v1, :cond_3

    const/16 v1, 0x64

    if-ge v8, v1, :cond_3

    .line 384
    const-wide/16 v1, 0xc8

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    add-int/lit8 v8, v8, 0x1

    .line 389
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v11, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    goto :goto_1

    .line 393
    :cond_3
    const/4 v1, 0x4

    if-eq v12, v1, :cond_4

    const/4 v1, 0x3

    if-eq v12, v1, :cond_4

    .line 395
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 396
    .local v10, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v10, Landroid/os/Message;->what:I

    .line 397
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    .end local v10    # "message":Landroid/os/Message;
    :cond_4
    const/4 v1, 0x1

    if-eq v12, v1, :cond_5

    const/4 v1, 0x4

    if-ne v12, v1, :cond_6

    .line 403
    :cond_5
    const/4 v1, 0x0

    monitor-exit p4

    goto/16 :goto_0

    .line 405
    :cond_6
    const/4 v1, 0x1

    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 386
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public queueOperationMessage(IILjava/lang/String;IZ)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "enable"    # Z

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APPOPS_OP_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, "enable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/android/server/AppOpsHandler;->mPhHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method
