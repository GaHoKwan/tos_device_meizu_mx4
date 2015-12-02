.class public Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Alarm"
.end annotation


# instance fields
.field public bPwSav:Z

.field public bootDevice:Z

.field public count:I

.field public maxWhen:J

.field public maxWhenOriginal:J

.field public maxWhenPwsav:J

.field public operation:Landroid/app/PendingIntent;

.field public psl:I

.field public repeatInterval:J

.field public type:I

.field public when:J

.field public whenElapsed:J

.field public whenOriginal:J

.field public whenPwSav:J

.field public windowLength:J

.field public workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    .line 1702
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 1703
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1704
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1705
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1706
    iput-wide p8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 1707
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1708
    iput-object p12, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1709
    iput-object p13, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 1715
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    .line 1716
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenPwSav:J

    .line 1717
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenOriginal:J

    .line 1718
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenPwsav:J

    .line 1719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->bPwSav:Z

    .line 1720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->psl:I

    .line 1723
    return-void
.end method


# virtual methods
.method public calculatePwsavTime()V
    .locals 13

    .prologue
    const/16 v12, 0x3c

    .line 1787
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1788
    .local v6, "nowElapsed":J
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenPwSav:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1790
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenPwSav:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1791
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenPwsav:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 1818
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after calculatePwsavTime, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Alarm;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 1819
    return-void

    .line 1794
    :cond_1
    const-wide/16 v2, 0x0

    .line 1795
    .local v2, "expectElapsed":J
    const-wide/16 v4, 0x0

    .line 1796
    .local v4, "maxExpected":J
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1797
    .local v0, "alignWindow":J
    iget v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->psl:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 1798
    const-wide/32 v0, 0x927c0

    .line 1807
    :goto_1
    add-long v2, v6, v0

    .line 1808
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v2

    if-gez v8, :cond_2

    .line 1809
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1810
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenPwSav:J

    .line 1812
    :cond_2
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v10, v0, v10

    if-lez v10, :cond_5

    .end local v0    # "alignWindow":J
    :goto_2
    add-long v4, v8, v0

    .line 1813
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_0

    .line 1814
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 1815
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenPwsav:J

    goto :goto_0

    .line 1799
    .restart local v0    # "alignWindow":J
    :cond_3
    iget v8, p0, Lcom/android/server/AlarmManagerService$Alarm;->psl:I

    if-ne v8, v12, :cond_4

    .line 1800
    const-wide/32 v0, 0x36ee80

    goto :goto_1

    .line 1803
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error!!! psl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/AlarmManagerService$Alarm;->psl:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/AlarmManagerService;->Plog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$100(Ljava/lang/String;)V

    .line 1804
    iput v12, p0, Lcom/android/server/AlarmManagerService$Alarm;->psl:I

    .line 1805
    const-wide/32 v0, 0x36ee80

    goto :goto_1

    .line 1812
    :cond_5
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 1763
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1764
    const-string v0, " whenElapsed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1765
    const-string v0, " when="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1766
    const-string v0, " window="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1767
    const-string v0, " repeatInterval="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1768
    const-string v0, " count="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "operation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1770
    return-void
.end method

.method public likelyClock()Z
    .locals 4

    .prologue
    .line 1823
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    .line 1824
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/32 v2, 0xea60

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1826
    const/4 v0, 0x1

    .line 1830
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBootDevice(Z)V
    .locals 0
    .param p1, "bootDev"    # Z

    .prologue
    .line 1777
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->bootDevice:Z

    .line 1778
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1729
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1733
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const-string v1, " when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1742
    const-string v1, " maxWhen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1744
    const-string v1, " whenElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1746
    const-string v1, " whenOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1748
    const-string v1, " whenPwSav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenPwSav:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1750
    const-string v1, " maxWhenOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenOriginal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1752
    const-string v1, " maxWhenPwsav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenPwsav:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1754
    const-string v1, " bPwSav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->bPwSav:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1758
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
