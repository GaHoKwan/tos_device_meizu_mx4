.class Lcom/android/internal/telephony/cat/CatService$5;
.super Landroid/database/ContentObserver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService$5;->onChange(ZLandroid/net/Uri;)V

    .line 2387
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2295
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1000(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_display"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2300
    .local v6, "OOBE_Value":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerOnSequenceObserver onChange, OOBE_Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2301
    if-nez v6, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1000(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 2308
    .local v11, "seqValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerOnSequenceObserver onChange, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2309
    if-ne v11, v4, :cond_6

    .line 2311
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2313
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1200(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v9

    .line 2314
    .local v9, "isAlarmState":Z
    const/4 v10, 0x0

    .line 2315
    .local v10, "isFlightMode":Z
    const/4 v8, 0x0

    .line 2317
    .local v8, "flightMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1000(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 2323
    :goto_0
    if-eqz v8, :cond_1

    move v10, v0

    .line 2324
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFlightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2327
    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1400(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2382
    .end local v8    # "flightMode":I
    .end local v9    # "isAlarmState":Z
    .end local v10    # "isFlightMode":Z
    .end local v11    # "seqValue":I
    :cond_0
    :goto_2
    return-void

    .line 2319
    .restart local v8    # "flightMode":I
    .restart local v9    # "isAlarmState":Z
    .restart local v10    # "isFlightMode":Z
    .restart local v11    # "seqValue":I
    :catch_0
    move-exception v7

    .line 2320
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "fail to get property from Settings"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2321
    const/4 v8, 0x0

    goto :goto_0

    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v10, v3

    .line 2323
    goto :goto_1

    .line 2336
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1400(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2341
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    goto :goto_2

    .line 2346
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2347
    const-string v0, "[IVSR send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1400(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    goto :goto_2

    .line 2355
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2356
    const-string v0, "[SIM Recovery send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1400(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2359
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    goto/16 :goto_2

    .line 2363
    :cond_5
    const-string v0, "send DISPLAY_TEXT to app"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2369
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    goto/16 :goto_2

    .line 2371
    .end local v8    # "flightMode":I
    .end local v9    # "isAlarmState":Z
    .end local v10    # "isFlightMode":Z
    :cond_6
    if-nez v11, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1000(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_sequence_settings"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method
