.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final Debug_Tag:Ljava/lang/String; = "PermChecker_ContentProvider"

.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private acm:Landroid/content/AccessControlManager;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 176
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 180
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .prologue
    .line 1847
    invoke-static {}, Landroid/os/AsyncTask;->init()V

    .line 1849
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 1855
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1856
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 1857
    if-eqz p1, :cond_0

    .line 1858
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1861
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 1862
    if-eqz p2, :cond_1

    .line 1863
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 1864
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 1866
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 1868
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 1870
    :cond_2
    return-void
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .prologue
    .line 197
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 198
    check-cast p0, Landroid/content/ContentProvider$Transport;

    .end local p0    # "abstractInterface":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .restart local p0    # "abstractInterface":Landroid/content/IContentProvider;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 2095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2096
    .local v8, "uid":I
    iget v9, p0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2097
    const/4 v9, 0x0

    .line 2149
    :goto_0
    return v9

    .line 2100
    :cond_0
    iget-object v9, p0, Landroid/content/ContentProvider;->acm:Landroid/content/AccessControlManager;

    if-nez v9, :cond_1

    .line 2101
    iget-object v9, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-string v10, "access_control"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/AccessControlManager;

    iput-object v9, p0, Landroid/content/ContentProvider;->acm:Landroid/content/AccessControlManager;

    .line 2103
    :cond_1
    iget-object v9, p0, Landroid/content/ContentProvider;->acm:Landroid/content/AccessControlManager;

    if-nez v9, :cond_2

    .line 2104
    const/4 v9, 0x0

    goto :goto_0

    .line 2107
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 2108
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 2109
    const/4 v9, 0x0

    goto :goto_0

    .line 2111
    :cond_3
    const/4 v2, 0x0

    .line 2113
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v9, v5, v10, v11}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2120
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mz_app_lock_control"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 2121
    const/4 v9, 0x0

    goto :goto_0

    .line 2115
    :catch_0
    move-exception v3

    .line 2116
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v9, "PermChecker_ContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remoteEx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2124
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    if-eqz v2, :cond_a

    .line 2125
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "ownerPackage"

    const-string/jumbo v11, "string"

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2126
    .local v7, "ownerPackageId":I
    const/4 v6, 0x0

    .line 2127
    .local v6, "ownerPackage":Ljava/lang/String;
    if-lez v7, :cond_5

    .line 2128
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2130
    :cond_5
    iget-object v9, p0, Landroid/content/ContentProvider;->acm:Landroid/content/AccessControlManager;

    iget-object v10, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/content/ContentProvider;->acm:Landroid/content/AccessControlManager;

    invoke-virtual {v9, v6}, Landroid/content/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2131
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2132
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2134
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "believePackages"

    const-string v11, "array"

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2135
    .local v0, "believePackageId":I
    if-lez v0, :cond_9

    .line 2136
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2138
    .local v1, "believePackages":[Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 2139
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v9, v1

    if-ge v4, v9, :cond_9

    .line 2140
    aget-object v9, v1, v4

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2141
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2139
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2146
    .end local v1    # "believePackages":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2149
    .end local v0    # "believePackageId":I
    .end local v6    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "ownerPackageId":I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private isOperationPermissionDenied(Landroid/net/Uri;Z)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "read"    # Z

    .prologue
    .line 2157
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2158
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2159
    .local v5, "uid":I
    const/4 v3, 0x0

    .line 2161
    .local v3, "ret":Z
    iget v6, p0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    .line 2182
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 2165
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-boolean v6, p0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v6, :cond_3

    .line 2166
    const/4 v2, 0x0

    .line 2167
    .local v2, "perm":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2168
    .local v0, "auth":Ljava/lang/String;
    const-string v6, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "icc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/adn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2170
    :cond_1
    if-eqz p2, :cond_4

    const-string v2, "android.permission.READ_CONTACTS"

    .line 2177
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/content/Context;->isAskPermissionDenied(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2178
    const/4 v3, 0x1

    .end local v0    # "auth":Ljava/lang/String;
    .end local v2    # "perm":Ljava/lang/String;
    :cond_3
    move v4, v3

    .line 2182
    .restart local v4    # "ret":I
    goto :goto_0

    .line 2170
    .end local v4    # "ret":I
    .restart local v0    # "auth":Ljava/lang/String;
    .restart local v2    # "perm":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "yunos.permission.WRITE_CONTACTS"

    goto :goto_1

    .line 2171
    :cond_5
    const-string v6, "call_log"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2172
    if-eqz p2, :cond_6

    const-string v2, "android.permission.READ_CALL_LOG"

    :goto_2
    goto :goto_1

    :cond_6
    const-string/jumbo v2, "yunos.permission.WRITE_CALL_LOG"

    goto :goto_2

    .line 2173
    :cond_7
    const-string/jumbo v6, "sms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "mms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "mms-sms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2174
    :cond_8
    if-eqz p2, :cond_9

    const-string v2, "android.permission.READ_SMS"

    :goto_3
    goto :goto_1

    :cond_9
    const-string/jumbo v2, "yunos.permission.WRITE_SMS"

    goto :goto_3
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    .local v0, "original":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 808
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1891
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1892
    .local v1, "numOperations":I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 1893
    .local v2, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1894
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1896
    :cond_0
    return-object v2
.end method

.method public applyBatchWithoutInternalPerm(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1978
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1979
    .local v1, "numOperations":I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 1980
    .local v2, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1981
    new-instance v3, Landroid/content/ContentProviderResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/content/ContentProviderResult;-><init>(I)V

    aput-object v3, v2, v0

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1983
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1839
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1840
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1828
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1829
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1256
    array-length v1, p2

    .line 1257
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1258
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    :cond_0
    return v1
.end method

.method public bulkInsertWithoutInternalPerm(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1967
    const/4 v0, 0x0

    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1918
    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1188
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public deleteWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2086
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 671
    .local v5, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 672
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 673
    .local v15, "uid":I
    const/4 v9, 0x0

    .line 675
    .local v9, "missingPerm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProvider;->mMyUid:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 719
    :cond_0
    return-void

    .line 679
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "componentPerm":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 682
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 685
    move-object v9, v4

    .line 691
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 693
    .local v2, "allowDefaultRead":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 694
    .local v14, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 696
    .local v10, "path":Ljava/lang/String;
    move-object v3, v14

    .local v3, "arr$":[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 697
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v11

    .line 698
    .local v11, "pathPerm":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 699
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 704
    const/4 v2, 0x0

    .line 705
    move-object v9, v11

    .line 696
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 691
    .end local v2    # "allowDefaultRead":Z
    .end local v3    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "pathPerm":Ljava/lang/String;
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .end local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 713
    .restart local v2    # "allowDefaultRead":Z
    .restart local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 717
    .end local v2    # "allowDefaultRead":Z
    .end local v4    # "componentPerm":Ljava/lang/String;
    .end local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, "failReason":Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 722
    .end local v6    # "failReason":Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 733
    .local v5, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 734
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 735
    .local v15, "uid":I
    const/4 v9, 0x0

    .line 737
    .local v9, "missingPerm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProvider;->mMyUid:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 781
    :cond_0
    return-void

    .line 741
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, "componentPerm":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 744
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 747
    move-object v9, v4

    .line 753
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 755
    .local v2, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 756
    .local v14, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 758
    .local v10, "path":Ljava/lang/String;
    move-object v3, v14

    .local v3, "arr$":[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 759
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v11

    .line 760
    .local v11, "pathPerm":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 761
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 766
    const/4 v2, 0x0

    .line 767
    move-object v9, v11

    .line 758
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 753
    .end local v2    # "allowDefaultWrite":Z
    .end local v3    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "pathPerm":Ljava/lang/String;
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .end local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 775
    .restart local v2    # "allowDefaultWrite":Z
    .restart local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 779
    .end local v2    # "allowDefaultWrite":Z
    .end local v4    # "componentPerm":Ljava/lang/String;
    .end local v14    # "pps":[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 787
    .local v6, "failReason":Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: writing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 784
    .end local v6    # "failReason":Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 826
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 827
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 830
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getModifyPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mModifyPermission:Ljava/lang/String;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getQueryPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mQueryPermission:Ljava/lang/String;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 1618
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public insertWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1957
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 1809
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 969
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 980
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 983
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1491
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2039
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no permission file can only be read."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [B

    .line 2048
    .local v6, "byteData":[B
    const-string/jumbo v0, "noPermFile"

    invoke-static {v6, v0}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2049
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    array-length v4, v6

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "byteData":[B
    :goto_0
    return-object v0

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "byteData":[B
    :cond_1
    move-object v0, v8

    .line 2049
    goto :goto_0

    .line 2050
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "byteData":[B
    :catch_0
    move-exception v7

    .line 2051
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "ContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2052
    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1364
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1572
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1573
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1574
    .local v7, "count":I
    :cond_0
    if-eq v7, v11, :cond_3

    .line 1577
    if-eqz v6, :cond_1

    .line 1578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1580
    :cond_1
    if-nez v7, :cond_2

    .line 1581
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1587
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1588
    .local v8, "i":I
    if-ltz v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1589
    .local v10, "path":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1590
    if-nez v10, :cond_5

    .line 1591
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v10    # "path":Ljava/lang/String;
    :cond_4
    move-object v10, v3

    .line 1588
    goto :goto_0

    .line 1594
    .restart local v10    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v9

    .line 1595
    .local v9, "modeBits":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2015
    const-string/jumbo v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2016
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no permission file can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2022
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [B

    .line 2024
    .local v0, "byteData":[B
    const-string/jumbo v2, "noPermFile"

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2027
    .end local v0    # "byteData":[B
    :goto_0
    return-object v2

    .line 2025
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1782
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1784
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/ContentProvider$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 1796
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1798
    const/4 v1, 0x0

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1799
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .line 1800
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1668
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1676
    :goto_0
    return-object v1

    .line 1672
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1676
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 1678
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method openTypedAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "bl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2067
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [B

    .line 2068
    .local v6, "byteData":[B
    const-string/jumbo v0, "noPermFile"

    invoke-static {v6, v0}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2069
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    array-length v4, v6

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "byteData":[B
    :goto_0
    return-object v0

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "byteData":[B
    :cond_0
    move-object v0, v8

    .line 2069
    goto :goto_0

    .line 2070
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "byteData":[B
    :catch_0
    move-exception v7

    .line 2071
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "ContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2072
    goto :goto_0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1134
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1223
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1002
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    :cond_0
    const-string p3, "\'A\' = \'B\'"

    .line 1007
    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'A\' = \'B\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public final setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .prologue
    .line 901
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 903
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 905
    :cond_0
    return-void
.end method

.method public final setMoMSPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "queryPermission"    # Ljava/lang/String;
    .param p2, "modifyPermission"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput-object p1, v0, Landroid/content/ContentProvider$Transport;->mQueryPermission:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput-object p2, v0, Landroid/content/ContentProvider$Transport;->mModifyPermission:Ljava/lang/String;

    .line 914
    return-void
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 885
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 886
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 841
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 842
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 863
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 864
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1944
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1206
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public updateWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2004
    const/4 v0, 0x0

    return v0
.end method
