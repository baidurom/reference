.class public Lcom/baidu/themeanimation/util/LockScreenHandler;
.super Landroid/os/Handler;
.source "LockScreenHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenHandler"


# instance fields
.field private mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

.field private mContext:Landroid/content/Context;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mLastSecond:J

.field private mPhoneing:Ljava/lang/Boolean;

.field private mScreenOff:Ljava/lang/Boolean;

.field public mTimeOut:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mPhoneing:Ljava/lang/Boolean;

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mScreenOff:Ljava/lang/Boolean;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mLastSecond:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mTimeOut:Z

    .line 48
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 49
    iput-object p1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

    .line 51
    return-void
.end method


# virtual methods
.method public getScreenState()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mScreenOff:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getmPhoneing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mPhoneing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 217
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/themeanimation/model/BatteryStatus;

    .line 220
    .local v0, bs:Lcom/baidu/themeanimation/model/BatteryStatus;
    iget v9, v0, Lcom/baidu/themeanimation/model/BatteryStatus;->status:I

    iget v10, v0, Lcom/baidu/themeanimation/model/BatteryStatus;->level:I

    iget v11, v0, Lcom/baidu/themeanimation/model/BatteryStatus;->plugged:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/baidu/themeanimation/util/LockScreenHandler;->refrashBattery(III)V

    goto :goto_0

    .line 225
    .end local v0           #bs:Lcom/baidu/themeanimation/model/BatteryStatus;
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/LockScreenHandler;->refreshTime()V

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    .local v2, currentTime:J
    iget-object v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v11, 0x11

    const-wide/32 v12, 0x7fffffff

    rem-long v12, v2, v12

    long-to-int v12, v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 235
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 236
    .local v8, time2:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 238
    iget v6, v8, Landroid/text/format/Time;->second:I

    .line 239
    .local v6, second:I
    iget-wide v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mLastSecond:J

    int-to-long v12, v6

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 240
    int-to-long v10, v6

    iput-wide v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mLastSecond:J

    .line 241
    iget-object v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    int-to-long v11, v6

    invoke-virtual {v10, v9, v11, v12}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    goto :goto_0

    .line 246
    .end local v2           #currentTime:J
    .end local v6           #second:I
    .end local v8           #time2:Landroid/text/format/Time;
    :pswitch_4
    const-string v9, "LockScreenHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v9, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

    invoke-interface {v9}, Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;->updateWallpaper()V

    goto :goto_0

    .line 250
    :pswitch_5
    const-string v9, "LockScreenHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 252
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/util/LockScreenHandler;->startIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 256
    .local v1, callLogCount:Ljava/lang/Integer;
    iget-object v9, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v10, 0xe

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 258
    const-string v9, "Calllog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New Missed Count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v1           #callLogCount:Ljava/lang/Integer;
    :pswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 262
    .local v7, smsCount:Ljava/lang/Integer;
    iget-object v9, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v10, 0xf

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 264
    const-string v9, "Calllog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unread SMS Count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v7           #smsCount:Ljava/lang/Integer;
    :pswitch_8
    const-string v10, "LockScreenHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, nextAlarm:Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "next_alarm_formatted"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    iget-object v10, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v11, "alarm_count"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    :goto_1
    int-to-long v12, v9

    invoke-virtual {v10, v11, v12, v13}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 274
    iget-object v9, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v10, "alarm_info"

    invoke-virtual {v9, v10, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mTimeOut:Z

    return v0
.end method

.method public refrashBattery(III)V
    .locals 5
    .parameter "category"
    .parameter "level"
    .parameter "pluged"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, state:I
    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    const/4 p1, 0x3

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

    invoke-interface {v1, p1}, Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;->setCategory(I)V

    .line 181
    iget-object v1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v2, 0x10

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 183
    iget-object v1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v2, 0x12

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 188
    return-void

    .line 151
    :pswitch_1
    const/4 p1, 0x0

    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    const/16 v1, 0x14

    if-le p2, v1, :cond_0

    .line 156
    const/4 p1, 0x3

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_0
    const/4 p1, 0x1

    .line 160
    const/4 v0, 0x2

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    if-lez p3, :cond_1

    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 165
    const/4 p1, 0x0

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 p1, 0x2

    .line 169
    const/4 v0, 0x3

    .line 171
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refreshTime()V
    .locals 11

    .prologue
    .line 191
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 192
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 193
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

    invoke-interface {v7, v5}, Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;->dispatchTimeTick(Landroid/text/format/Time;)V

    .line 196
    iget v2, v5, Landroid/text/format/Time;->hour:I

    .line 197
    .local v2, hour:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x2

    rem-int/lit8 v9, v2, 0xc

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 199
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x3

    int-to-long v9, v2

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 200
    iget v3, v5, Landroid/text/format/Time;->minute:I

    .line 201
    .local v3, minute:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x1

    int-to-long v9, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 202
    iget v6, v5, Landroid/text/format/Time;->year:I

    .line 203
    .local v6, year:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x6

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 204
    iget v4, v5, Landroid/text/format/Time;->month:I

    .line 205
    .local v4, month:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x5

    int-to-long v9, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 206
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 207
    .local v0, day:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x4

    int-to-long v9, v0

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 208
    iget v7, v5, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v1, v7, 0x1

    .line 209
    .local v1, dayofweek:I
    iget-object v7, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/4 v8, 0x7

    int-to-long v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 212
    return-void
.end method

.method public setScreenOff(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isScreenOff"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mScreenOff:Ljava/lang/Boolean;

    .line 139
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0
    .parameter "timeOut"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mTimeOut:Z

    .line 45
    return-void
.end method

.method public setmPhoneing(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "phoneing"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mPhoneing:Ljava/lang/Boolean;

    .line 290
    return-void
.end method

.method public startIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, className:Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, componentName:Ljava/lang/String;
    const-string v6, "just_unlock"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    const-string v6, "LockScreenHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent: startIntent: packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " className= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "componentName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local p1
    .local v4, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v6, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object p1, v4

    .line 82
    .end local v4           #intent:Landroid/content/Intent;
    .restart local p1
    :goto_0
    :try_start_2
    const-string v6, "LockScreenHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successful!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mCallback:Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;

    invoke-interface {v6}, Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;->unLock()V

    .line 135
    return-void

    .line 79
    :cond_5
    const/high16 v6, 0x1000

    :try_start_3
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v6, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "LockScreenHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v1, :cond_4

    .line 88
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v6, "intent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "componentName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "player"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 92
    const-string v6, "com.baidu.musicplayer"

    const-string v7, "com.baidu.musicplayer.activity.MainFragmentActivity"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_6
    :goto_3
    const/high16 v6, 0x1000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v6, p0, Lcom/baidu/themeanimation/util/LockScreenHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v3

    .line 130
    .local v3, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v3           #ee:Ljava/lang/Exception;
    :cond_7
    :try_start_5
    const-string v6, "deskclock"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 97
    const-string v6, "com.baidu.baiduclock"

    const-string v7, "com.baidu.baiduclock.BaiduClock"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 100
    :cond_8
    const-string v6, "fileexplorer"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 102
    const-string v6, "com.baidu.resmanager.filemanager"

    const-string v7, "com.baidu.resmanager.filemanager.ui.ProfileActivity"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 105
    :cond_9
    const-string v6, "android.gm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 107
    const-string v6, "com.android.email"

    const-string v7, "com.android.email.activity.Welcome"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 110
    :cond_a
    const-string v6, "gallery"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 112
    const-string v6, "com.baidu.gallery3d"

    const-string v7, "com.baidu.gallery3d.app.Gallery"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 115
    :cond_b
    const-string v6, "soundrecorder"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 117
    const-string v6, "com.baidu.soundrecorder"

    const-string v7, "com.baidu.soundrecorder.SoundRecorder"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 120
    :cond_c
    const-string v6, "notes"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 122
    const-string v6, "com.baidu.notepad"

    const-string v7, "com.baidu.notepad.NotesList"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    move-object p1, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_2
.end method
