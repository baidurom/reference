.class public Lcom/android/phone/SIMInfoWrapper;
.super Ljava/lang/Object;
.source "SIMInfoWrapper.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SIMInfoWrapper"

.field private static sSIMInfoWrapper:Lcom/android/phone/SIMInfoWrapper;


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mAllSimCount:I

.field private mAllSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInsertSim:Z

.field private mInsertedSimCount:I

.field private mInsertedSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInsertedSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 23
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 24
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 25
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 26
    iput-boolean v5, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertSim:Z

    .line 27
    iput v5, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    .line 28
    iput v5, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    .line 29
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;

    .line 35
    new-instance v4, Lcom/android/phone/SIMInfoWrapper$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SIMInfoWrapper$1;-><init>(Lcom/android/phone/SIMInfoWrapper;)V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getAllSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 102
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 104
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 105
    :cond_0
    const-string v4, "[SIMInfoWrapper] mSimInfoList OR mInsertedSimInfoList is nulll"

    invoke-direct {p0, v4}, Lcom/android/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    .line 110
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    .line 112
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 113
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 115
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 116
    .local v2, item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v3

    .line 117
    .local v3, simId:I
    if-eq v3, v6, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    .end local v2           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simId:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 122
    .restart local v2       #item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v3

    .line 123
    .restart local v3       #simId:I
    if-eq v3, v6, :cond_4

    .line 124
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    .end local v2           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simId:I
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "isInsertSim"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 23
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 24
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 25
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 26
    iput-boolean v5, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertSim:Z

    .line 27
    iput v5, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    .line 28
    iput v5, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    .line 29
    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;

    .line 35
    new-instance v4, Lcom/android/phone/SIMInfoWrapper$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SIMInfoWrapper$1;-><init>(Lcom/android/phone/SIMInfoWrapper;)V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object p1, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    .line 148
    iput-boolean p2, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertSim:Z

    .line 149
    if-eqz p2, :cond_1

    .line 150
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 151
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 152
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    .line 153
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 154
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 155
    .local v2, item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v3

    .line 156
    .local v3, simId:I
    if-eq v3, v6, :cond_0

    .line 157
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simId:I
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getAllSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 165
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 166
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    .line 167
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 168
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 169
    .restart local v2       #item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v3

    .line 170
    .restart local v3       #simId:I
    if-eq v3, v6, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v2           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simId:I
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SIMInfoWrapper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SIMInfoWrapper;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/SIMInfoWrapper;->updateSimInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SIMInfoWrapper;)Landroid/widget/CursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method private getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I
    .locals 4
    .parameter "item"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 135
    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v0, v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getDefault()Lcom/android/phone/SIMInfoWrapper;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/android/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/android/phone/SIMInfoWrapper;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/android/phone/SIMInfoWrapper;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/SIMInfoWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/android/phone/SIMInfoWrapper;

    .line 194
    :cond_0
    sget-object v0, Lcom/android/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/android/phone/SIMInfoWrapper;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 365
    const-string v0, "SIMInfoWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method private notifyDataChange()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method private updateSimInfo(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    .line 57
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 58
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getAllSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 59
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 60
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 62
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 63
    .local v1, item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v1}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v2

    .line 64
    .local v2, mSimId:I
    if-eq v2, v6, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #mSimId:I
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 77
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 78
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 79
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 81
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 82
    .restart local v1       #item:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v1}, Lcom/android/phone/SIMInfoWrapper;->getCheckedSimId(Landroid/provider/Telephony$SIMInfo;)I

    move-result v3

    .line 83
    .local v3, simId:I
    if-eq v3, v6, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public getAllSimCount()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimCount:I

    return v0
.end method

.method public getAllSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimColorById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 320
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto :goto_0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    return v0
.end method

.method public getInsertedSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 330
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInsertedSimInfoById(I)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    return-object v0
.end method

.method public getInsertedSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInsertedSimSlotById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 340
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0
.end method

.method public getSimColorById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 281
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto :goto_0
.end method

.method public getSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 291
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimInfoById(I)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    return-object v0
.end method

.method public getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .parameter "slot"

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimCount:I

    if-ge v0, v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 268
    .restart local v1       #simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v3, p1, :cond_0

    move-object v2, v1

    .line 271
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    :goto_1
    return-object v2

    .line 266
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v1       #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 271
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v2       #simInfo:Landroid/provider/Telephony$SIMInfo;
    goto :goto_1
.end method

.method public getSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertSim:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method public getSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSimSlotById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 301
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setListNotifyDataChanged(Landroid/widget/CursorAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    iput-object p1, p0, Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;

    .line 210
    :cond_0
    return-void
.end method
