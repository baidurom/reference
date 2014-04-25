.class public Lcom/android/phone/CellBroadcastChannel;
.super Ljava/lang/Object;
.source "CellBroadcastChannel.java"


# instance fields
.field private mChannelId:I

.field private mChannelName:Ljava/lang/String;

.field private mChannelState:Z

.field private mKeyId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .parameter "keyId"
    .parameter "numberId"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/phone/CellBroadcastChannel;->mKeyId:I

    .line 15
    iput p2, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelId:I

    .line 16
    iput-object p3, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelName:Ljava/lang/String;

    .line 17
    iput-boolean p4, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelState:Z

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "numberId"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelId:I

    .line 22
    iput-object p2, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelName:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelState:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelId:I

    return v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelState()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelState:Z

    return v0
.end method

.method public getKeyId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/phone/CellBroadcastChannel;->mKeyId:I

    return v0
.end method

.method public setChannelId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelId:I

    .line 40
    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setChannelState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/CellBroadcastChannel;->mChannelState:Z

    .line 56
    return-void
.end method

.method public setKeyId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/CellBroadcastChannel;->mKeyId:I

    .line 32
    return-void
.end method
