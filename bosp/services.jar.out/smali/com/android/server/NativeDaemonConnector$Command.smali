.class public Lcom/android/server/NativeDaemonConnector$Command;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "cmd"
    .parameter "args"

    .prologue
    .line 453
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    .line 454
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    .line 455
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 456
    .local v0, arg:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v0           #arg:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    .locals 1
    .parameter "arg"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    return-object p0
.end method
