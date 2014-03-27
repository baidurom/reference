.class public Lcom/baidu/service/power/PowerMode;
.super Lcom/baidu/service/power/IPowerMode$Stub;
.source "PowerMode.java"


# instance fields
.field mId:I

.field mIsActive:Z

.field mName:Ljava/lang/String;

.field protected mProfile:Lcom/baidu/service/power/Profile;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/baidu/service/power/IPowerMode$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    iget-boolean v1, p0, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    .line 33
    :cond_0
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 34
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storeModes()V

    .line 36
    :cond_1
    return-void
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/service/power/PowerMode;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/service/power/PowerMode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/baidu/service/power/Profile;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/service/power/PowerMode;->mProfile:Lcom/baidu/service/power/Profile;

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget v0, p0, Lcom/baidu/service/power/PowerMode;->mType:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    return v0
.end method

.method public setProfile(Lcom/baidu/service/power/Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/service/power/PowerMode;->mProfile:Lcom/baidu/service/power/Profile;

    .line 28
    return-void
.end method

.method public unapplyMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    iget-boolean v1, p0, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    .line 41
    :cond_0
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 42
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storeModes()V

    .line 44
    :cond_1
    return-void
.end method
