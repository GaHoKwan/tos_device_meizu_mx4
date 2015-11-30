.class Landroid/net/wifi/WifiApConnectRecordStore$2;
.super Ljava/lang/Object;
.source "WifiApConnectRecordStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConnectRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApConnectRecordStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConnectRecordStore;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Landroid/net/wifi/WifiApConnectRecordStore$2;->this$0:Landroid/net/wifi/WifiApConnectRecordStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;)I
    .locals 2
    .param p1, "n1"    # Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .param p2, "n2"    # Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .prologue
    .line 436
    iget v0, p2, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    iget v1, p1, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 434
    check-cast p1, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiApConnectRecordStore$2;->compare(Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;Landroid/net/wifi/WifiApConnectRecordStore$ApConnectRecordNode;)I

    move-result v0

    return v0
.end method
