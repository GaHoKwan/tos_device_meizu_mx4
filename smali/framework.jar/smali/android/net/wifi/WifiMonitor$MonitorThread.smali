.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 679
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 680
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 681
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 682
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 787
    const-string v9, "CTRL-EVENT-"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 788
    const-string v8, "WPA:"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "pre-shared key may be incorrect"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    .line 796
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24007

    const-string/jumbo v10, "pre-shared key may be incorrect"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 798
    .local v4, "m":Landroid/os/Message;
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1005
    .end local v4    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return v7

    .line 799
    :cond_1
    const-string v8, "WPS-SUCCESS"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 800
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24008

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 801
    :cond_2
    const-string v8, "WPS-FAIL"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 802
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    const-string v8, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 804
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x2400a

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 805
    :cond_4
    const-string v8, "WPS-TIMEOUT"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 806
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x2400b

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 807
    :cond_5
    const-string v8, "P2P"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 808
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_6
    const-string v8, "AP"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 810
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_7
    const-string v8, "WPS-PBC-ACTIVE"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 812
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24064

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 814
    :cond_8
    const-string v8, "EAP-FAST-NEW-PAC-UPDATED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 815
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24034

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 817
    :cond_9
    const-string v8, "WHOLE-CHIP-RESET-FAIL"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 818
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24035

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 820
    :cond_a
    const-string v8, "WPS-ER-ENROLLEE-ADD-PBC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 821
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24036

    invoke-virtual {v8, v9, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 822
    :cond_b
    const-string v8, "WPS-ER-AP-ADD"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 823
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24037

    invoke-virtual {v8, v9, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 833
    :cond_c
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "eventName":Ljava/lang/String;
    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 835
    .local v5, "nameEnd":I
    if-eq v5, v10, :cond_d

    .line 836
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 837
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 845
    const-string v9, "CONNECTED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 846
    const/4 v0, 0x1

    .line 926
    .local v0, "event":I
    :goto_1
    move-object v1, p1

    .line 928
    .local v1, "eventData":Ljava/lang/String;
    if-eq v0, v12, :cond_e

    const/4 v9, 0x5

    if-eq v0, v9, :cond_e

    const v9, 0x2403d

    if-eq v0, v9, :cond_e

    const v9, 0x2403e

    if-eq v0, v9, :cond_e

    const v9, 0x24040

    if-eq v0, v9, :cond_e

    const v9, 0x24041

    if-eq v0, v9, :cond_e

    const v9, 0x24042

    if-eq v0, v9, :cond_e

    const v9, 0x24043

    if-eq v0, v9, :cond_e

    const v9, 0x2404a

    if-eq v0, v9, :cond_e

    const v9, 0x2404b

    if-eq v0, v9, :cond_e

    const v9, 0x2404e

    if-eq v0, v9, :cond_e

    const v9, 0x2404f

    if-eq v0, v9, :cond_e

    const v9, 0x24050

    if-eq v0, v9, :cond_e

    const v9, 0x24056

    if-eq v0, v9, :cond_e

    const v9, 0x24057

    if-ne v0, v9, :cond_36

    .line 934
    :cond_e
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "tmpStringArray":[Ljava/lang/String;
    array-length v9, v6

    if-le v9, v8, :cond_35

    .line 936
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v1, v9, v8

    .line 957
    .end local v6    # "tmpStringArray":[Ljava/lang/String;
    :cond_f
    :goto_2
    if-ne v0, v11, :cond_3a

    .line 958
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 1004
    :cond_10
    :goto_3
    iput v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 847
    .end local v0    # "event":I
    .end local v1    # "eventData":Ljava/lang/String;
    :cond_11
    const-string v9, "DISCONNECTED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 848
    const/4 v0, 0x2

    .line 850
    .restart local v0    # "event":I
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_1

    .line 851
    .end local v0    # "event":I
    :cond_12
    const-string v9, "STATE-CHANGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 852
    const/4 v0, 0x3

    .restart local v0    # "event":I
    goto :goto_1

    .line 853
    .end local v0    # "event":I
    :cond_13
    const-string v9, "SCAN-RESULTS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 854
    const/4 v0, 0x4

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 855
    .end local v0    # "event":I
    :cond_14
    const-string v9, "LINK-SPEED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 856
    const/4 v0, 0x5

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 857
    .end local v0    # "event":I
    :cond_15
    const-string v9, "TERMINATING"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 858
    const/4 v0, 0x6

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 859
    .end local v0    # "event":I
    :cond_16
    const-string v9, "DRIVER-STATE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 860
    const/4 v0, 0x7

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 861
    .end local v0    # "event":I
    :cond_17
    const-string v9, "EAP-FAILURE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 862
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 863
    .end local v0    # "event":I
    :cond_18
    const-string v9, "ASSOC-REJECT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 864
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 866
    .end local v0    # "event":I
    :cond_19
    const-string v9, "EAP-NO-CERTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 867
    const/16 v0, 0xb

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 869
    .end local v0    # "event":I
    :cond_1a
    const-string v9, "HS20-ANQP-DONE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 870
    const v0, 0x2403c

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 871
    .end local v0    # "event":I
    :cond_1b
    const-string v9, "HS20-REM-URL"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 872
    const v0, 0x2403d

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 873
    .end local v0    # "event":I
    :cond_1c
    const-string v9, "HS20-ICON-RECV"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 874
    const v0, 0x2403e

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 875
    .end local v0    # "event":I
    :cond_1d
    const-string v9, "HS20-IPV4-DAD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 876
    const v0, 0x24040

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 877
    .end local v0    # "event":I
    :cond_1e
    const-string v9, "HS20-IPV6-DAD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 878
    const v0, 0x24041

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 879
    .end local v0    # "event":I
    :cond_1f
    const-string v9, "HS20-POLICY-UPDATE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 880
    const v0, 0x24042

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 881
    .end local v0    # "event":I
    :cond_20
    const-string v9, "HS20-INSTALL-PPSMO"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 882
    const v0, 0x24043

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 883
    .end local v0    # "event":I
    :cond_21
    const-string v9, "HS20-CONNECT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 884
    const v0, 0x24044

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 885
    .end local v0    # "event":I
    :cond_22
    const-string v9, "HS20-DEFAULT-RESET"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 886
    const v0, 0x24046

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 887
    .end local v0    # "event":I
    :cond_23
    const-string v9, "HS20-ICON-RECV-TIMEOUT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 888
    const v0, 0x24047

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 889
    .end local v0    # "event":I
    :cond_24
    const-string v9, "HS20-DUMP-TOAST"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 890
    const v0, 0x24048

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 891
    .end local v0    # "event":I
    :cond_25
    const-string v9, "HS20-ADD-CREDENTIAL"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 892
    const v0, 0x24049

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 893
    .end local v0    # "event":I
    :cond_26
    const-string v9, "HS20-BTM-URL"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 894
    const v0, 0x2404a

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 895
    .end local v0    # "event":I
    :cond_27
    const-string v9, "HS20-WEB-INSTALL-PPSMO"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 896
    const v0, 0x2404b

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 897
    .end local v0    # "event":I
    :cond_28
    const-string v9, "HS20-SET-OSU-CONNECT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 898
    const v0, 0x2404c

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 899
    .end local v0    # "event":I
    :cond_29
    const-string v9, "HS20-SET-OSU-CONNECT-NO"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 900
    const v0, 0x2404d

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 901
    .end local v0    # "event":I
    :cond_2a
    const-string v9, "HS20-SET-PROV-PROTOCOL"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 902
    const v0, 0x2404e

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 903
    .end local v0    # "event":I
    :cond_2b
    const-string v9, "HS20-DEAUTH-URL"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 904
    const v0, 0x2404f

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 905
    .end local v0    # "event":I
    :cond_2c
    const-string v9, "HS20-SVR-MTD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 906
    const v0, 0x24050

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 907
    .end local v0    # "event":I
    :cond_2d
    const-string v9, "HS20-WEB-INSTALL-ROOTCA"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 908
    const v0, 0x24051

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 909
    .end local v0    # "event":I
    :cond_2e
    const-string v9, "EAP-FAILURE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 910
    const v0, 0x24052

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 911
    .end local v0    # "event":I
    :cond_2f
    const-string v9, "HS20-UNLOCK-AUTH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 912
    const v0, 0x24053

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 913
    .end local v0    # "event":I
    :cond_30
    const-string v9, "HS20-IGNORE-BLACKLIST"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 914
    const v0, 0x24054

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 915
    .end local v0    # "event":I
    :cond_31
    const-string v9, "HS20-WEB-INSTALL-CLIENTCA"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 916
    const v0, 0x24055

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 917
    .end local v0    # "event":I
    :cond_32
    const-string v9, "HS20-PPSMO-MNC-LENGTH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 918
    const v0, 0x24056

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 919
    .end local v0    # "event":I
    :cond_33
    const-string v9, "HS20-MGNT-TREE-URI"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 920
    const v0, 0x24057

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 924
    .end local v0    # "event":I
    :cond_34
    const/16 v0, 0xa

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 938
    .restart local v1    # "eventData":Ljava/lang/String;
    .restart local v6    # "tmpStringArray":[Ljava/lang/String;
    :cond_35
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 940
    .end local v6    # "tmpStringArray":[Ljava/lang/String;
    :cond_36
    if-eq v0, v11, :cond_37

    const/16 v9, 0x8

    if-eq v0, v9, :cond_37

    const v9, 0x24048

    if-eq v0, v9, :cond_37

    const v9, 0x24049

    if-eq v0, v9, :cond_37

    const v9, 0x2404c

    if-eq v0, v9, :cond_37

    const v9, 0x24051

    if-eq v0, v9, :cond_37

    const v9, 0x2404d

    if-eq v0, v9, :cond_37

    const v9, 0x24052

    if-eq v0, v9, :cond_37

    const v9, 0x24053

    if-eq v0, v9, :cond_37

    const v9, 0x24054

    if-ne v0, v9, :cond_38

    .line 944
    :cond_37
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 945
    .local v3, "ind":I
    if-eq v3, v10, :cond_f

    .line 946
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 948
    .end local v3    # "ind":I
    :cond_38
    const v9, 0x24055

    if-ne v0, v9, :cond_39

    .line 949
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 951
    :cond_39
    const-string v9, " - "

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 952
    .restart local v3    # "ind":I
    if-eq v3, v10, :cond_f

    .line 953
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 959
    .end local v3    # "ind":I
    :cond_3a
    if-ne v0, v12, :cond_3b

    .line 960
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 961
    :cond_3b
    const/4 v9, 0x6

    if-ne v0, v9, :cond_3e

    .line 962
    const-string v9, "WifiMonitor"

    const-string v10, "event == TERMINATING "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const-string/jumbo v9, "recv error"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 968
    iget v9, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v10, 0xa

    if-le v9, v10, :cond_0

    .line 978
    :cond_3c
    if-eqz p2, :cond_3d

    const-string v7, "ap0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 979
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24002

    invoke-virtual {v7, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 981
    :cond_3d
    const-string v7, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exit because of receiving terminating for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 982
    goto/16 :goto_0

    .line 983
    :cond_3e
    const/16 v8, 0x8

    if-ne v0, v8, :cond_3f

    .line 984
    const-string v8, "EAP authentication failed"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 985
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x24007

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 987
    :cond_3f
    const/16 v8, 0x9

    if-ne v0, v8, :cond_40

    .line 988
    iget-object v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v9, 0x2402b

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 989
    :cond_40
    const v8, 0x2403c

    if-eq v0, v8, :cond_41

    const v8, 0x2403d

    if-eq v0, v8, :cond_41

    const v8, 0x2403e

    if-eq v0, v8, :cond_41

    const v8, 0x24040

    if-eq v0, v8, :cond_41

    const v8, 0x24041

    if-eq v0, v8, :cond_41

    const v8, 0x24042

    if-eq v0, v8, :cond_41

    const v8, 0x24043

    if-eq v0, v8, :cond_41

    const v8, 0x2404a

    if-eq v0, v8, :cond_41

    const v8, 0x2404b

    if-eq v0, v8, :cond_41

    const v8, 0x2404e

    if-eq v0, v8, :cond_41

    const v8, 0x2404f

    if-eq v0, v8, :cond_41

    const v8, 0x24050

    if-eq v0, v8, :cond_41

    const v8, 0x24056

    if-eq v0, v8, :cond_41

    const v8, 0x24048

    if-eq v0, v8, :cond_41

    const v8, 0x24049

    if-eq v0, v8, :cond_41

    const v8, 0x2404c

    if-eq v0, v8, :cond_41

    const v8, 0x24051

    if-eq v0, v8, :cond_41

    const v8, 0x2404d

    if-eq v0, v8, :cond_41

    const v8, 0x24052

    if-eq v0, v8, :cond_41

    const v8, 0x24053

    if-eq v0, v8, :cond_41

    const v8, 0x24054

    if-eq v0, v8, :cond_41

    const v8, 0x24055

    if-eq v0, v8, :cond_41

    const v8, 0x24044

    if-eq v0, v8, :cond_41

    const v8, 0x24046

    if-eq v0, v8, :cond_41

    const v8, 0x24047

    if-eq v0, v8, :cond_41

    const v8, 0x24057

    if-ne v0, v8, :cond_42

    .line 999
    :cond_41
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHS20Event(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1001
    :cond_42
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1009
    if-nez p1, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v7, 0x2402a

    const v6, 0x24029

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1338
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, "tokens":[Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHostApEvents mWifiNative.mInterfaceName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v3, v3, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minitor.iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    aget-object v1, v0, v4

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1344
    if-nez p2, :cond_0

    const-string/jumbo p2, "whatever"

    .line 1345
    :cond_0
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1346
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1362
    :cond_1
    :goto_0
    return-void

    .line 1348
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1352
    :cond_3
    aget-object v1, v0, v4

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    if-nez p2, :cond_4

    const-string/jumbo p2, "whatever"

    .line 1355
    :cond_4
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1356
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1358
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1423
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 1424
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1425
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1435
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1437
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 1428
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1430
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1431
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 1260
    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1261
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24015

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    const-string v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1263
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24016

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1264
    :cond_2
    const-string v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1265
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24025

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1266
    :cond_3
    const-string v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1267
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24017

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1269
    :cond_4
    const-string v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1270
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24019

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1271
    :cond_5
    const-string v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1272
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1273
    :cond_6
    const-string v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1274
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1275
    :cond_7
    const-string v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1276
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1277
    :cond_8
    const-string v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1278
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401d

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1279
    :cond_9
    const-string v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1282
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401e

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1283
    :cond_a
    const-string v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1284
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401f

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1286
    :cond_b
    const-string v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1287
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1288
    :cond_c
    const-string v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1289
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24021

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1291
    :cond_d
    const-string v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1292
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24022

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1294
    :cond_e
    const-string v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1295
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24023

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1297
    :cond_f
    const-string v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1298
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24024

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1300
    :cond_10
    const-string v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1301
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24027

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1302
    :cond_11
    const-string v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1303
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1304
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 1305
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24026

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1307
    :cond_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1310
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v3, "CTRL-EVENT-DISCONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1313
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1315
    aget-object v3, v2, v5

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v5, :cond_0

    .line 1317
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24028

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1319
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_14
    const-string v3, "P2P-NFC-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1320
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24038

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1321
    :cond_15
    const-string v3, "P2P-GO-IP-ALLOCATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1322
    const-string v3, "WifiMonitor"

    const-string v4, "handleP2pEvents, send P2P_GO_IP_ALLOCATE_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24039

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1324
    :cond_16
    const-string v3, "P2P-GC-IP-GET"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1325
    const-string v3, "WifiMonitor"

    const-string v4, "handleP2pEvents, send P2P_GC_IP_GET_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2403a

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1327
    :cond_17
    const-string v3, "P2P-NFC-GO-INVITED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1328
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2403b

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1369
    const/16 v16, 0x0

    .line 1370
    .local v16, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1371
    .local v7, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 1372
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 1375
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1377
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1378
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1379
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 1380
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 1381
    .local v14, "token":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1382
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1380
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1386
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1387
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 1388
    goto :goto_1

    .line 1393
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1398
    .local v15, "value":I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1399
    move v10, v15

    goto :goto_1

    .line 1394
    .end local v15    # "value":I
    :catch_0
    move-exception v5

    .line 1395
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1400
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "value":I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1401
    move v11, v15

    goto :goto_1

    .line 1405
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 1418
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1407
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1408
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 1409
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 1410
    move-object v12, v13

    .line 1414
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 1415
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1408
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 1185
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1186
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1187
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1188
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1192
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1203
    :cond_0
    if-eqz v0, :cond_1

    .line 1204
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1217
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1219
    :goto_0
    return-void

    .line 1194
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1198
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1206
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1210
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1204
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1223
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1224
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 1238
    :goto_0
    return-object v4

    .line 1226
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 1230
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1231
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 1234
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 1238
    goto :goto_0

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 1244
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1245
    .local v0, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1247
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v4, :cond_1

    .line 1253
    .end local v0    # "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_0
    :goto_0
    return-object v0

    .line 1248
    .restart local v0    # "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_1
    aget-object v3, v2, v4

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, "nameValue":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "FREQ_CONFLICT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1024
    sparse-switch p1, :sswitch_data_0

    .line 1044
    :goto_0
    return-void

    .line 1026
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1038
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24033

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1024
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method handleHS20Event(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1054
    packed-switch p1, :pswitch_data_0

    .line 1182
    :goto_0
    :pswitch_0
    return-void

    .line 1056
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAnqpDone()V

    goto :goto_0

    .line 1060
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyRemUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIconReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :pswitch_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIpDad(ILjava/lang/String;)V

    goto :goto_0

    .line 1072
    :pswitch_5
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIpDad(ILjava/lang/String;)V

    goto :goto_0

    .line 1076
    :pswitch_6
    const/4 v2, 0x0

    .line 1078
    .local v2, "interval":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1083
    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyPolicyUpdate(I)V

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HS20-POLICY-UPDATE non-integer parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v2, 0x0

    goto :goto_1

    .line 1087
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "interval":I
    :pswitch_7
    const/4 v1, 0x0

    .line 1089
    .local v1, "index":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1094
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallPpsmo(I)V

    goto :goto_0

    .line 1090
    :catch_1
    move-exception v0

    .line 1091
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HS20-INSTALL-PPSMO non-integer parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v1, 0x0

    goto :goto_2

    .line 1098
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "index":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyHsConnect()V

    goto :goto_0

    .line 1102
    :pswitch_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyHsReset()V

    goto :goto_0

    .line 1106
    :pswitch_a
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIconRecvTimeout()V

    goto :goto_0

    .line 1110
    :pswitch_b
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyDumpToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAddCred(Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :pswitch_d
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyBtmUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1122
    :pswitch_e
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWebInstallPpsmoMncLength(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :pswitch_f
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWebInstallPpsmo(Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetProvProtocol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1134
    :pswitch_11
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetOsuConnect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :pswitch_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_SET_OSU_CONNECT_NO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetOsuConnectNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1143
    :pswitch_13
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_DEAUTH_URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyDeauthUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1148
    :pswitch_14
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_SERVER_METHOD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyServerMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1153
    :pswitch_15
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_WEB_INSTALL_AAA_ROOTCA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallAAARootCA(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1158
    :pswitch_16
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_WEB_INSTALL_CLIENT_CERT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallClientCert()V

    goto/16 :goto_0

    .line 1163
    :pswitch_17
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_EAP_FAILURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1168
    :pswitch_18
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_RESET_EAP_FAILURE_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyResetEapFailureCount()V

    goto/16 :goto_0

    .line 1173
    :pswitch_19
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_IGNORE_BLACKLIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIgnoreBlackList()V

    goto/16 :goto_0

    .line 1178
    :pswitch_1a
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_PPSMO_MANAGEMENT_TREE_URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyMgntTreeUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    :pswitch_data_0
    .packed-switch 0x2403c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_16
        :pswitch_e
        :pswitch_1a
    .end packed-switch
.end method

.method notifyAddCred(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24049

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1517
    return-void
.end method

.method notifyAnqpDone()V
    .locals 3

    .prologue
    .line 1476
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403c

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1477
    return-void
.end method

.method notifyBtmUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404a

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1521
    return-void
.end method

.method notifyDeauthUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1540
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1541
    return-void
.end method

.method notifyDumpToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24048

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1513
    return-void
.end method

.method notifyEapFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1556
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24052

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1557
    return-void
.end method

.method notifyHsConnect()V
    .locals 3

    .prologue
    .line 1496
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24044

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1497
    return-void
.end method

.method notifyHsReset()V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24046

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1501
    return-void
.end method

.method notifyIconReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1505
    return-void
.end method

.method notifyIconRecvTimeout()V
    .locals 3

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24047

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1509
    return-void
.end method

.method notifyIgnoreBlackList()V
    .locals 3

    .prologue
    .line 1564
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24054

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1565
    return-void
.end method

.method notifyInstallAAARootCA(Ljava/lang/String;)V
    .locals 3
    .param p1, "certFile"    # Ljava/lang/String;

    .prologue
    .line 1548
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24051

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1549
    return-void
.end method

.method notifyInstallClientCert()V
    .locals 3

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24055

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1553
    return-void
.end method

.method notifyInstallPpsmo(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24043

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1493
    return-void
.end method

.method notifyIpDad(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1485
    return-void
.end method

.method notifyMgntTreeUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24057

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1573
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1450
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1451
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1453
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1459
    :goto_0
    return-void

    .line 1455
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1457
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifyPolicyUpdate(I)V
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 1488
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24042

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1489
    return-void
.end method

.method notifyRemUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403d

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1481
    return-void
.end method

.method notifyResetEapFailureCount()V
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24053

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1561
    return-void
.end method

.method notifyServerMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1544
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24050

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1545
    return-void
.end method

.method notifySetOsuConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 1532
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1533
    return-void
.end method

.method notifySetOsuConnectNo(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404d

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1537
    return-void
.end method

.method notifySetProvProtocol(Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1529
    return-void
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1471
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    new-instance v3, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1473
    return-void
.end method

.method notifyWebInstallPpsmo(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404b

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1525
    return-void
.end method

.method notifyWebInstallPpsmoMncLength(Ljava/lang/String;)V
    .locals 3
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24056

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1569
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 687
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "eventStr":Ljava/lang/String;
    const-string/jumbo v3, "p2p0"

    .line 695
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 696
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    iput-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 698
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 699
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 700
    .local v6, "space":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 701
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 702
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 704
    if-nez v5, :cond_1

    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hcan get mm  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    if-nez v5, :cond_2

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 709
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 711
    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    .end local v6    # "space":I
    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    .line 731
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 732
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 740
    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_8

    .line 741
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 744
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 745
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 746
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 747
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_5
    :goto_1
    return-void

    .line 716
    :cond_6
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string v8, "ap0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 717
    if-eqz v5, :cond_7

    .line 718
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 722
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_0

    .line 726
    :cond_7
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_0

    .line 753
    :cond_8
    const/4 v0, 0x0

    .line 754
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 756
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 757
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 758
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 759
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 760
    invoke-direct {p0, v2, v11}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 761
    const/4 v0, 0x1

    goto :goto_2

    .line 765
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_a
    if-eqz v0, :cond_0

    .line 768
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 769
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 770
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 771
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_b
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v10}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$602(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto :goto_1
.end method
