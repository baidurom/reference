.class public Lcom/baidu/service/power/Profile;
.super Lcom/baidu/service/power/IProfile$Stub;
.source "Profile.java"


# instance fields
.field mProfileElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/ProfileElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/service/power/IProfile$Stub;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    return-void
.end method

.method static createCurrentProfile(Landroid/content/Context;Lcom/baidu/service/power/Profile;)V
    .locals 10
    .parameter "context"
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 57
    const-string v6, "SmartPowerService"

    const-string v7, "createCurrentProfile!"

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v6, p1, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/service/power/ProfileElement;

    .line 59
    .local v2, pe:Lcom/baidu/service/power/ProfileElement;
    iget-boolean v6, v2, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    if-eqz v6, :cond_0

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, value:I
    iget v6, v2, Lcom/baidu/service/power/ProfileElement;->mId:I

    packed-switch v6, :pswitch_data_0

    .line 107
    :cond_1
    :goto_1
    :pswitch_0
    iput v3, v2, Lcom/baidu/service/power/ProfileElement;->mValue:I

    .line 108
    const-string v6, "SmartPowerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "element id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/baidu/service/power/ProfileElement;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAirplane(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 66
    :goto_2
    goto :goto_1

    :cond_2
    move v3, v5

    .line 65
    goto :goto_2

    .line 68
    :pswitch_2
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getMobileData(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 69
    :goto_3
    goto :goto_1

    :cond_3
    move v3, v5

    .line 68
    goto :goto_3

    .line 73
    :pswitch_3
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAutoSync(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 74
    :goto_4
    goto :goto_1

    :cond_4
    move v3, v5

    .line 73
    goto :goto_4

    .line 76
    :pswitch_4
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getWifi(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 77
    :goto_5
    goto :goto_1

    :cond_5
    move v3, v5

    .line 76
    goto :goto_5

    .line 79
    :pswitch_5
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getBluetooth(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 80
    :goto_6
    goto :goto_1

    :cond_6
    move v3, v5

    .line 79
    goto :goto_6

    .line 82
    :pswitch_6
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getGPS(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 83
    :goto_7
    goto :goto_1

    :cond_7
    move v3, v5

    .line 82
    goto :goto_7

    .line 85
    :pswitch_7
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getSoundEffects(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v4

    .line 86
    :goto_8
    goto :goto_1

    :cond_8
    move v3, v5

    .line 85
    goto :goto_8

    .line 88
    :pswitch_8
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAutoRotate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v4

    .line 89
    :goto_9
    goto :goto_1

    :cond_9
    move v3, v5

    .line 88
    goto :goto_9

    .line 93
    :pswitch_9
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getBackLight(Landroid/content/Context;)I

    move-result v3

    .line 94
    goto :goto_1

    .line 96
    :pswitch_a
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getScreenTimeout(Landroid/content/Context;)I

    move-result v3

    .line 97
    goto :goto_1

    .line 99
    :pswitch_b
    invoke-static {}, Lcom/baidu/service/power/ProfileUtil;->getOperateAnimations()[F

    move-result-object v0

    .line 100
    .local v0, animations:[F
    aget v6, v0, v5

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_a

    aget v6, v0, v4

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1

    .line 101
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 104
    .end local v0           #animations:[F
    :pswitch_c
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getVibrate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v4

    :goto_a
    goto/16 :goto_1

    :cond_b
    move v3, v5

    goto :goto_a

    .line 111
    .end local v2           #pe:Lcom/baidu/service/power/ProfileElement;
    .end local v3           #value:I
    :cond_c
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public addProfileElement(Lcom/baidu/service/power/ProfileElement;)V
    .locals 1
    .parameter "profileElement"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public applyProfile(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 33
    iget-object v2, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/ProfileElement;

    .line 34
    .local v1, profile:Lcom/baidu/service/power/ProfileElement;
    iget-boolean v2, v1, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, p1, p2}, Lcom/baidu/service/power/ProfileElement;->apply(Landroid/content/Context;I)V

    goto :goto_0

    .line 38
    .end local v1           #profile:Lcom/baidu/service/power/ProfileElement;
    :cond_1
    return-void
.end method

.method public applyProfileMerge(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/ProfileElement;

    .line 50
    .local v1, profile:Lcom/baidu/service/power/ProfileElement;
    iget-boolean v2, v1, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1, p1}, Lcom/baidu/service/power/ProfileElement;->applyMerge(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    .end local v1           #profile:Lcom/baidu/service/power/ProfileElement;
    :cond_1
    return-void
.end method

.method public applyProfileWithoutSM(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/ProfileElement;

    .line 42
    .local v1, profile:Lcom/baidu/service/power/ProfileElement;
    iget-boolean v2, v1, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1, p1}, Lcom/baidu/service/power/ProfileElement;->applyWithoutSM(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    .end local v1           #profile:Lcom/baidu/service/power/ProfileElement;
    :cond_1
    return-void
.end method

.method public getProfileElements(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 29
    :goto_0
    return v2

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/ProfileElement;

    .line 27
    .local v1, profile:Lcom/baidu/service/power/ProfileElement;
    invoke-virtual {v1}, Lcom/baidu/service/power/ProfileElement;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    .end local v1           #profile:Lcom/baidu/service/power/ProfileElement;
    :cond_1
    iget-object v2, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method

.method getProfileElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/ProfileElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/service/power/Profile;->mProfileElements:Ljava/util/ArrayList;

    return-object v0
.end method
