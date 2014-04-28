.class public Lcom/baidu/themeanimation/model/InfoRefreshUtil;
.super Ljava/lang/Object;
.source "InfoRefreshUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InfoRefreshUtil"


# instance fields
.field private mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

.field private mBatteryIntentFilter:Landroid/content/IntentFilter;

.field private mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

.field private mContext:Landroid/content/Context;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

.field private mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

.field private mVariableIntentFilter:Landroid/content/IntentFilter;

.field private mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 45
    iput-object p1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 53
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/baidu/themeanimation/util/FileUtil;->setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 58
    return-void
.end method


# virtual methods
.method public dispatchTouch(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0x8

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float v2, p1, v2

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 151
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0x9

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float v2, p2, v2

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 153
    return-void
.end method

.method public register_Receiver_create()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    const-string v0, "InfoRefreshUtil"

    const-string v1, "register_Receiver_create"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    .line 95
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "theme.lockscreen.action.Unlock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/receiver/BatteryReceiver;-><init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    .line 103
    new-instance v0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;-><init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    .line 104
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    .line 105
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateSmsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    .line 106
    new-instance v0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1}, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    .line 109
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method public register_Receiver_resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v0, "InfoRefreshUtil"

    const-string v1, "register_Receiver_resume"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v2, 0x213

    invoke-virtual {v1, v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :cond_1
    return-void
.end method

.method public setGlobalVariable()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xb

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xc

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 65
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 67
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "music_control.visibility"

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 68
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "date_position_y"

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "text_size_date"

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "show_date"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 71
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const-string v1, "date_format"

    const-string v2, "yyyy/M/d EEEE"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 73
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(IJ)V

    .line 74
    return-void
.end method

.method public unregister_Receiver_destory()V
    .locals 3

    .prologue
    .line 77
    const-string v1, "InfoRefreshUtil"

    const-string v2, "unregister_Receiver_destory"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mVariableMonitorReceiver:Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateCallLogObserver:Lcom/baidu/themeanimation/model/UpdateCallLogObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mUpdateSmsObserver:Lcom/baidu/themeanimation/model/UpdateSmsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mAlarmContentObserve:Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister_Receiver_pause()V
    .locals 3

    .prologue
    .line 121
    const-string v1, "InfoRefreshUtil"

    const-string v2, "unregister_Receiver_pause"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->mBatteryReceiver:Lcom/baidu/themeanimation/receiver/BatteryReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
