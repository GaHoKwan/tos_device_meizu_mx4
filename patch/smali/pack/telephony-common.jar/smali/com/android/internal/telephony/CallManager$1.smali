.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2523
    const-string v17, "CallManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " handleMessage msgid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2530
    :sswitch_0
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_DISCONNECT)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x64

    div-int/lit8 v11, v17, 0x64

    .line 2532
    .local v11, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->handle3GSimSwitchLock()V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2544
    .end local v11    # "index":I
    :sswitch_1
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x65

    div-int/lit8 v11, v17, 0x64

    .line 2546
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->handle3GSimSwitchLock()V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2551
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2552
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 2561
    .end local v11    # "index":I
    :sswitch_2
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_VOICE_CALL_INCOMING_INDICATION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    const/4 v12, 0x0

    .line 2564
    .local v12, "isECCExists":Z
    const/4 v13, 0x0

    .line 2565
    .local v13, "isRejectNewRingCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2568
    .local v2, "activeCallAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v12, 0x1

    .line 2570
    :goto_1
    const-string v17, "CallManager"

    const-string v18, "Reject incoming call since ECC call exists."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v17

    if-lez v17, :cond_2

    .line 2574
    const/4 v13, 0x1

    .line 2582
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2583
    .local v9, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    if-nez v12, :cond_3

    if-eqz v13, :cond_5

    .line 2584
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2568
    .end local v9    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2586
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    .restart local v9    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2594
    .end local v9    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v12    # "isECCExists":Z
    .end local v13    # "isRejectNewRingCall":Z
    :sswitch_3
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_RADIO_OFF_OR_NOT_AVAILABLE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # invokes: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    .line 2604
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->hangupAllCalls(I)Z
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;I)Z

    goto/16 :goto_0

    .line 2611
    :sswitch_4
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const/4 v4, 0x0

    .line 2616
    .local v4, "bECCExists":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2619
    .restart local v2    # "activeCallAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    const/4 v4, 0x1

    .line 2621
    :goto_2
    const-string v17, "CallManager"

    const-string v18, "Reject incoming call since ECC call exists."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$500(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_8
    const/4 v6, 0x1

    .line 2625
    .local v6, "bMoMtConflict":Z
    :goto_3
    if-nez v4, :cond_9

    if-eqz v6, :cond_c

    .line 2626
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 2628
    .local v7, "c":Lcom/android/internal/telephony/Connection;
    :try_start_1
    const-string v17, "CallManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "silently drop incoming call: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2630
    :catch_1
    move-exception v8

    .line 2631
    .local v8, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v17, "CallManager"

    const-string v18, "new ringing connection"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2619
    .end local v6    # "bMoMtConflict":Z
    .end local v7    # "c":Lcom/android/internal/telephony/Connection;
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 2623
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 2634
    .restart local v6    # "bMoMtConflict":Z
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x66

    div-int/lit8 v11, v17, 0x64

    .line 2635
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2644
    .end local v4    # "bECCExists":Z
    .end local v6    # "bMoMtConflict":Z
    .end local v11    # "index":I
    :sswitch_5
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x67

    div-int/lit8 v11, v17, 0x64

    .line 2646
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2653
    .end local v11    # "index":I
    :sswitch_6
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2656
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x68

    div-int/lit8 v11, v17, 0x64

    .line 2657
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2665
    .end local v11    # "index":I
    :sswitch_7
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x69

    div-int/lit8 v11, v17, 0x64

    .line 2667
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2674
    .end local v11    # "index":I
    :sswitch_8
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6a

    div-int/lit8 v11, v17, 0x64

    .line 2676
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2683
    .end local v11    # "index":I
    :sswitch_9
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6b

    div-int/lit8 v11, v17, 0x64

    .line 2685
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2692
    .end local v11    # "index":I
    :sswitch_a
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6c

    div-int/lit8 v11, v17, 0x64

    .line 2694
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2701
    .end local v11    # "index":I
    :sswitch_b
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6d

    div-int/lit8 v11, v17, 0x64

    .line 2703
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2710
    .end local v11    # "index":I
    :sswitch_c
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6e

    div-int/lit8 v11, v17, 0x64

    .line 2712
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2719
    .end local v11    # "index":I
    :sswitch_d
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x6f

    div-int/lit8 v11, v17, 0x64

    .line 2721
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2728
    .end local v11    # "index":I
    :sswitch_e
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x70

    div-int/lit8 v11, v17, 0x64

    .line 2730
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2737
    .end local v11    # "index":I
    :sswitch_f
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x71

    div-int/lit8 v11, v17, 0x64

    .line 2739
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$602(Lcom/android/internal/telephony/CallManager;Z)Z

    goto/16 :goto_0

    .line 2748
    .end local v11    # "index":I
    :sswitch_10
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x72

    div-int/lit8 v11, v17, 0x64

    .line 2751
    .restart local v11    # "index":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 2752
    .local v16, "r":Landroid/os/AsyncResult;
    move-object/from16 v0, v16

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/MmiCode;

    .line 2753
    .local v14, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v14}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v5, 0x1

    .line 2754
    .local v5, "bErrorMessage":Z
    :goto_4
    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$600(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 2755
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2758
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z
    invoke-static {v0, v5}, Lcom/android/internal/telephony/CallManager;->access$602(Lcom/android/internal/telephony/CallManager;Z)Z

    goto/16 :goto_0

    .line 2753
    .end local v5    # "bErrorMessage":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 2764
    .end local v11    # "index":I
    .end local v14    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    .end local v16    # "r":Landroid/os/AsyncResult;
    :sswitch_11
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x73

    div-int/lit8 v11, v17, 0x64

    .line 2766
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2773
    .end local v11    # "index":I
    :sswitch_12
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x74

    div-int/lit8 v11, v17, 0x64

    .line 2775
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2782
    .end local v11    # "index":I
    :sswitch_13
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x75

    div-int/lit8 v11, v17, 0x64

    .line 2784
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2788
    const-string v17, "CallManager"

    const-string v18, "Reset WaitingForHoldRequest variables since hold request is failed."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    # setter for: Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$702(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$802(Lcom/android/internal/telephony/CallManager;Z)Z

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$900(Lcom/android/internal/telephony/CallManager;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$1000(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "audio"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 2795
    .local v3, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$900(Lcom/android/internal/telephony/CallManager;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    # setter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$902(Lcom/android/internal/telephony/CallManager;I)I

    goto/16 :goto_0

    .line 2804
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "index":I
    :sswitch_14
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x76

    div-int/lit8 v11, v17, 0x64

    .line 2806
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # invokes: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2823
    .end local v11    # "index":I
    :sswitch_15
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x77

    div-int/lit8 v11, v17, 0x64

    .line 2826
    .restart local v11    # "index":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/os/RegistrantList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_10

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Registrant;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v15

    .line 2829
    .local v15, "notifyMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2830
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2831
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 2826
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2833
    .end local v15    # "notifyMsg":Landroid/os/Message;
    :cond_10
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RegistrantList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Registrant;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v15

    .line 2836
    .restart local v15    # "notifyMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2837
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2838
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 2833
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2846
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v15    # "notifyMsg":Landroid/os/Message;
    :sswitch_16
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SPEECH_INFO)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallManager;->access$1100(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2854
    :sswitch_17
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_VT_RING_INFO)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x7a

    div-int/lit8 v11, v17, 0x64

    .line 2856
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2863
    .end local v11    # "index":I
    :sswitch_18
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_VT_STATUS_INFO)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallManager;->access$1200(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    .line 2867
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x79

    div-int/lit8 v11, v17, 0x64

    .line 2868
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2875
    .end local v11    # "index":I
    :sswitch_19
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_CRSS_SUPP_SERVICE_NOTIFICATION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x7b

    div-int/lit8 v11, v17, 0x64

    .line 2877
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2884
    .end local v11    # "index":I
    :sswitch_1a
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x7c

    div-int/lit8 v11, v17, 0x64

    .line 2886
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2893
    .end local v11    # "index":I
    :sswitch_1b
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_VT_REPLACE_DISCONNECT)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x7d

    div-int/lit8 v11, v17, 0x64

    .line 2895
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2903
    .end local v11    # "index":I
    :sswitch_1c
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_CIPHER_INDICATION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x80

    div-int/lit8 v11, v17, 0x64

    .line 2905
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2913
    .end local v11    # "index":I
    :sswitch_1d
    const-string v17, "CallManager"

    const-string v18, " handleMessage (EVENT_VOLTE_CONFERENCE_CALL_NOTIFICATION)"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x81

    move/from16 v17, v0

    div-int/lit8 v11, v17, 0x64

    .line 2915
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    aget-object v18, v17, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2525
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x72 -> :sswitch_10
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x76 -> :sswitch_14
        0x77 -> :sswitch_15
        0x78 -> :sswitch_16
        0x79 -> :sswitch_18
        0x7a -> :sswitch_17
        0x7b -> :sswitch_19
        0x7c -> :sswitch_1a
        0x7d -> :sswitch_1b
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
        0x80 -> :sswitch_1c
        0x81 -> :sswitch_1d
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_8
        0xcf -> :sswitch_9
        0xd0 -> :sswitch_a
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_c
        0xd3 -> :sswitch_d
        0xd4 -> :sswitch_e
        0xd5 -> :sswitch_f
        0xd6 -> :sswitch_10
        0xd7 -> :sswitch_11
        0xd8 -> :sswitch_12
        0xd9 -> :sswitch_13
        0xda -> :sswitch_14
        0xdb -> :sswitch_15
        0xdc -> :sswitch_16
        0xdd -> :sswitch_18
        0xde -> :sswitch_17
        0xdf -> :sswitch_19
        0xe0 -> :sswitch_1a
        0xe1 -> :sswitch_1b
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_1c
        0xe5 -> :sswitch_1d
        0x12c -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_4
        0x12f -> :sswitch_5
        0x130 -> :sswitch_6
        0x131 -> :sswitch_7
        0x132 -> :sswitch_8
        0x133 -> :sswitch_9
        0x134 -> :sswitch_a
        0x135 -> :sswitch_b
        0x136 -> :sswitch_c
        0x137 -> :sswitch_d
        0x138 -> :sswitch_e
        0x139 -> :sswitch_f
        0x13a -> :sswitch_10
        0x13b -> :sswitch_11
        0x13c -> :sswitch_12
        0x13d -> :sswitch_13
        0x13e -> :sswitch_14
        0x13f -> :sswitch_15
        0x140 -> :sswitch_16
        0x141 -> :sswitch_18
        0x142 -> :sswitch_17
        0x143 -> :sswitch_19
        0x144 -> :sswitch_1a
        0x145 -> :sswitch_1b
        0x146 -> :sswitch_2
        0x147 -> :sswitch_3
        0x148 -> :sswitch_1c
        0x149 -> :sswitch_1d
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_4
        0x193 -> :sswitch_5
        0x194 -> :sswitch_6
        0x195 -> :sswitch_7
        0x196 -> :sswitch_8
        0x197 -> :sswitch_9
        0x198 -> :sswitch_a
        0x199 -> :sswitch_b
        0x19a -> :sswitch_c
        0x19b -> :sswitch_d
        0x19c -> :sswitch_e
        0x19d -> :sswitch_f
        0x19e -> :sswitch_10
        0x19f -> :sswitch_11
        0x1a0 -> :sswitch_12
        0x1a1 -> :sswitch_13
        0x1a2 -> :sswitch_14
        0x1a3 -> :sswitch_15
        0x1a4 -> :sswitch_16
        0x1a5 -> :sswitch_18
        0x1a6 -> :sswitch_17
        0x1a7 -> :sswitch_19
        0x1a8 -> :sswitch_1a
        0x1a9 -> :sswitch_1b
        0x1aa -> :sswitch_2
        0x1ab -> :sswitch_3
        0x1ac -> :sswitch_1c
        0x1ad -> :sswitch_1d
    .end sparse-switch
.end method
