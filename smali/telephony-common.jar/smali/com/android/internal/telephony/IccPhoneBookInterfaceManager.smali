.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;
    }
.end annotation


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field private static sTimes:I


# instance fields
.field protected mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected mBaseHandler:Landroid/os/Handler;

.field protected mErrorCause:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 142
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 143
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I

    move-result v0

    return v0
.end method

.method private getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    .locals 3
    .param p1, "e"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    .line 622
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 655
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_0

    .line 624
    .end local v0    # "ret":I
    :pswitch_0
    const/16 v0, -0xa

    .line 625
    .restart local v0    # "ret":I
    goto :goto_0

    .line 627
    .end local v0    # "ret":I
    :pswitch_1
    const/4 v0, -0x1

    .line 628
    .restart local v0    # "ret":I
    goto :goto_0

    .line 631
    .end local v0    # "ret":I
    :pswitch_2
    const/4 v0, -0x5

    .line 632
    .restart local v0    # "ret":I
    goto :goto_0

    .line 634
    .end local v0    # "ret":I
    :pswitch_3
    const/4 v0, -0x2

    .line 635
    .restart local v0    # "ret":I
    goto :goto_0

    .line 637
    .end local v0    # "ret":I
    :pswitch_4
    const/4 v0, -0x3

    .line 638
    .restart local v0    # "ret":I
    goto :goto_0

    .line 640
    .end local v0    # "ret":I
    :pswitch_5
    const/4 v0, -0x4

    .line 641
    .restart local v0    # "ret":I
    goto :goto_0

    .line 643
    .end local v0    # "ret":I
    :pswitch_6
    const/4 v0, -0x6

    .line 644
    .restart local v0    # "ret":I
    goto :goto_0

    .line 646
    .end local v0    # "ret":I
    :pswitch_7
    const/16 v0, -0xb

    .line 647
    .restart local v0    # "ret":I
    goto :goto_0

    .line 649
    .end local v0    # "ret":I
    :pswitch_8
    const/16 v0, -0xc

    .line 650
    .restart local v0    # "ret":I
    goto :goto_0

    .line 652
    .end local v0    # "ret":I
    :pswitch_9
    const/16 v0, -0xd

    .line 653
    .restart local v0    # "ret":I
    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 604
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 606
    const/16 p1, 0x4f30

    .line 609
    .end local p1    # "efid":I
    :cond_0
    return p1
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->addContactToGroup(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public declared-synchronized getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 556
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 558
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v2, :cond_1

    .line 560
    const-string v2, "getAdnRecordsInEF mAdnCache is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    const/4 v2, 0x0

    .line 578
    :goto_0
    monitor-exit p0

    return-object v2

    .line 565
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 569
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 570
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 571
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_2

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 573
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 577
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 578
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 575
    :cond_2
    :try_start_5
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 577
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getAnrCount()I

    move-result v0

    goto :goto_0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEmailCount()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getPhonebookMemStorageExt()[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getPhonebookMemStorageExt()[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getSneRecordLen()I

    move-result v0

    goto :goto_0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsimAasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/telephony/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsimAasMaxCount()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimAasMaxCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUsimAasMaxNameLen()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimAasMaxNameLen()I

    move-result v0

    goto :goto_0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimGroups()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsimGrpMaxCount()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimGrpMaxCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimGrpMaxNameLen()I

    move-result v0

    goto :goto_0
.end method

.method public hasAdditionalNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isUsim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->hasAdditionalNumber()Z

    move-result v0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isUsim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->hasEmail()Z

    move-result v0

    goto :goto_0
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->hasSne()Z

    move-result v0

    goto :goto_0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isAdnAccessible()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isAdnAccessible()Z

    move-result v0

    goto :goto_0
.end method

.method public isPhbReady()Z
    .locals 3

    .prologue
    .line 671
    const-string v0, "false"

    .line 672
    .local v0, "strPhbReady":Ljava/lang/String;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 673
    const-string v1, "gsm.sim.ril.phbready.2"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPhbReady] sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPhbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 684
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 674
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 675
    const-string v1, "gsm.sim.ril.phbready.3"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 677
    const-string v1, "gsm.sim.ril.phbready.4"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_2
    const-string v1, "gsm.sim.ril.phbready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isUsim()Z
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public onPhbReady()V
    .locals 4

    .prologue
    const/16 v3, 0x6f3a

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 668
    :cond_0
    return-void
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    return-void
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->removeContactFromGroup(II)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUsimAasById(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->removeUsimAasById(II)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUsimGroupById(I)Z
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->removeUsimGroupById(I)Z

    move-result v0

    goto :goto_0
.end method

.method public updateAdnAas(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnAas(II)Z

    move-result v0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 394
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newAdditionalNumber"    # Ljava/lang/String;
    .param p5, "newEmail"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 850
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 855
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_1

    .line 426
    const-string v1, "updateAdnRecordsInEfByIndex mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :goto_0
    monitor-exit p0

    return v0

    .line 431
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 435
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 438
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 439
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 440
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 441
    const-string p3, ""

    .line 443
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 446
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 450
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 451
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 448
    :cond_3
    :try_start_5
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newAdditionalNumber"    # Ljava/lang/String;
    .param p5, "newEmail"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 803
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 810
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_1

    .line 812
    const-string v1, "updateAdnRecordsInEfByIndex mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    :goto_0
    monitor-exit p0

    return v0

    .line 817
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 821
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 824
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 825
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 826
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 827
    const-string p3, ""

    .line 829
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 832
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 836
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 837
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 834
    :cond_3
    :try_start_5
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 836
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 228
    monitor-enter p0

    const/4 v6, -0x1

    .line 229
    .local v6, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_1

    .line 238
    const-string v1, "updateAdnRecordsInEfBySearchWithError mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return v0

    .line 243
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 250
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 253
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 254
    .local v7, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 255
    .local v5, "response":Landroid/os/Message;
    sget v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit16 v0, v0, 0x4e20

    sput v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    .line 256
    sget v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    iput v0, v5, Landroid/os/Message;->arg1:I

    .line 257
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez p5, :cond_2

    .line 259
    const-string p5, ""

    .line 261
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v6

    .line 264
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 268
    :goto_1
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearchWithError success index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    .line 271
    goto/16 :goto_0

    .line 266
    :cond_3
    :try_start_5
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 273
    .restart local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v5    # "response":Landroid/os/Message;
    .restart local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public updateContactToGroups(I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateContactToGroups(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 154
    const-string v0, "[updateIccRecords] Set mAdnCache value"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 157
    const-string v0, "[updateIccRecords] Set mAdnCache value to null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 8
    .param p1, "efid"    # I
    .param p2, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 501
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_1

    .line 503
    const-string v1, "updateUsimPBRecordsByIndexWithError mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    :goto_0
    monitor-exit p0

    return v0

    .line 508
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsByIndexWithError: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 511
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 514
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 515
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 516
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 517
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 518
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 518
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    const/4 v0, 0x0

    .line 327
    monitor-enter p0

    const/4 v6, -0x1

    .line 328
    .local v6, "index":I
    :try_start_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 329
    .local v7, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    .restart local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_1

    .line 337
    const-string v1, "updateUsimPBRecordsBySearchWithError mAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :goto_0
    monitor-exit p0

    return v0

    .line 342
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsBySearchWithError: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 345
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 349
    .local v5, "response":Landroid/os/Message;
    sget v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit16 v0, v0, 0x4e20

    sput v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    .line 350
    sget v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    iput v0, v5, Landroid/os/Message;->arg1:I

    .line 351
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 352
    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v6

    .line 355
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 356
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 357
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsBySearchWithError success index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    .line 359
    goto/16 :goto_0

    .line 356
    .end local v5    # "response":Landroid/os/Message;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 361
    .restart local v5    # "response":Landroid/os/Message;
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 12
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newAnr"    # Ljava/lang/String;
    .param p5, "newGrpIds"    # Ljava/lang/String;
    .param p6, "newEmails"    # [Ljava/lang/String;
    .param p7, "index"    # I

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 463
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v2, :cond_1

    .line 465
    const-string v2, "updateUsimPBRecordsInEfByIndexWithError mAdnCache is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    const/4 v2, 0x0

    .line 488
    :goto_0
    monitor-exit p0

    return v2

    .line 470
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPBRecordsInEfByIndexWithError: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newAnr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newGrpIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newEmails = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 475
    iget-object v11, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 477
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 478
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 479
    .local v10, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 480
    .local v9, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 481
    const-string p3, ""

    .line 483
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move v2, p1

    move/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v1, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v6, 0x0

    move v3, p1

    move-object v4, v1

    move/from16 v5, p7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 486
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 487
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    :try_start_4
    iget v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 487
    .end local v1    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .end local v10    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "oldAnr"    # Ljava/lang/String;
    .param p5, "oldGrpIds"    # Ljava/lang/String;
    .param p6, "oldEmails"    # [Ljava/lang/String;
    .param p7, "newTag"    # Ljava/lang/String;
    .param p8, "newPhoneNumber"    # Ljava/lang/String;
    .param p9, "newAnr"    # Ljava/lang/String;
    .param p10, "newGrpIds"    # Ljava/lang/String;
    .param p11, "newEmails"    # [Ljava/lang/String;

    .prologue
    .line 282
    monitor-enter p0

    const/4 v10, -0x1

    .line 283
    .local v10, "index":I
    :try_start_0
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v13, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 284
    .local v13, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v13    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 290
    .restart local v13    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v3, :cond_1

    .line 292
    const-string v3, "updateUsimPBRecordsInEfBySearchWithError mAdnCache is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    const/4 v3, 0x0

    .line 322
    :goto_0
    monitor-exit p0

    return v3

    .line 297
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsInEfBySearchWithError: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oldAnr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldGrpIds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newAnr= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newGrpIds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newEmails = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 303
    iget-object v14, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 305
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 307
    .local v12, "response":Landroid/os/Message;
    sget v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    add-int/lit8 v3, v3, 0x2

    rem-int/lit16 v3, v3, 0x4e20

    sput v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    .line 308
    sget v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->sTimes:I

    iput v3, v12, Landroid/os/Message;->arg1:I

    .line 309
    new-instance v11, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v11, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez p8, :cond_2

    .line 311
    const-string p8, ""

    .line 313
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p10

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v7, 0x0

    move/from16 v4, p1

    move-object v5, v11

    move-object v6, v2

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v10

    .line 316
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 317
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    :try_start_4
    iget v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsInEfBySearchWithError success index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v10

    .line 320
    goto/16 :goto_0

    .line 317
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "response":Landroid/os/Message;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 322
    .restart local v2    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v11    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v12    # "response":Landroid/os/Message;
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 593
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
