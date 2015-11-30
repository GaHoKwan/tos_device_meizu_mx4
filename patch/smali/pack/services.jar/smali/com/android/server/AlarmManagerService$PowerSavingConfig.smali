.class Lcom/android/server/AlarmManagerService$PowerSavingConfig;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingConfig"
.end annotation


# instance fields
.field mDefaultEnabled:I

.field mPackageName:Ljava/lang/String;

.field mPwsavLevel:I

.field mUserEnabled:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 228
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPackageName:Ljava/lang/String;

    .line 232
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPwsavLevel:I

    .line 233
    iput v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mDefaultEnabled:I

    .line 234
    iput v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mUserEnabled:I

    .line 235
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;III)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "defautEnable"    # I
    .param p5, "userEnable"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPackageName:Ljava/lang/String;

    .line 239
    iput p3, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPwsavLevel:I

    .line 240
    iput p4, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mDefaultEnabled:I

    .line 241
    iput p5, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mUserEnabled:I

    .line 242
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mPwsavLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defaultEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mDefaultEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$PowerSavingConfig;->mUserEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
