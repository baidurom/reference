.class Lcom/android/server/WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "devName"
    .parameter "state1Bits"
    .parameter "state2Bits"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 63
    iput p3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 64
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeNewHeadsetState(II)I
    .locals 4
    .parameter "headsetState"
    .parameter "switchState"

    .prologue
    .line 82
    iget v2, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int/2addr v2, v3

    xor-int/lit8 v0, v2, -0x1

    .line 83
    .local v0, preserveMask:I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget v1, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 86
    .local v1, setBits:I
    :goto_0
    and-int v2, p1, v0

    or-int/2addr v2, v1

    return v2

    .line 83
    .end local v1           #setBits:I
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget v1, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "/devices/virtual/switch/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v0, "/sys/class/switch/%s/state"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
