.class public final enum Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;
.super Ljava/lang/Enum;
.source "BenchMarkSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/benchmark/BenchMarkSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

.field public static final enum Dead:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

.field public static final enum Destroyed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

.field public static final enum Paused:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

.field public static final enum Resumed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v2}, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Paused:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    .line 108
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    const-string v1, "Resumed"

    invoke-direct {v0, v1, v3}, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Resumed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    .line 109
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    const-string v1, "Destroyed"

    invoke-direct {v0, v1, v4}, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Destroyed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    .line 110
    new-instance v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    const-string v1, "Dead"

    invoke-direct {v0, v1, v5}, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Dead:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Paused:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Resumed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Destroyed:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->Dead:Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->$VALUES:[Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->$VALUES:[Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    invoke-virtual {v0}, [Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/benchmark/BenchMarkSwitchManager$AppState;

    return-object v0
.end method