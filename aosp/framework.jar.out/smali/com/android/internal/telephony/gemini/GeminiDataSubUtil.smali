.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$1;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field private static synthetic A:Z


# instance fields
.field private a:[Z

.field private b:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private c:Lcom/android/internal/telephony/Phone;

.field private d:Lcom/android/internal/telephony/Phone;

.field private e:Lcom/android/internal/telephony/Phone;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field private l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field private m:[Z

.field protected mContext:Landroid/content/Context;

.field private n:[Z

.field private o:[Z

.field private p:[Z

.field private q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field private r:[Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:[Z

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:Landroid/os/Handler;

.field private z:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    .line 132
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 830
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    .line 140
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    .line 141
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 143
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 144
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 145
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 147
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 148
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Z

    .line 149
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Z

    .line 150
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    .line 151
    new-array v0, v1, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    .line 154
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 155
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    .line 158
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 831
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v0, p2

    .line 833
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    .line 834
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    .line 835
    check-cast p3, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 838
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 839
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v1, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Landroid/content/BroadcastReceiver;

    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v3

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v4

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v4

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 883
    return-void

    .line 130
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 148
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 149
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 150
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 151
    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 158
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private a(I)I
    .locals 5
    .parameter

    .prologue
    .line 996
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 999
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_1

    .line 1000
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 1001
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v0, v0, v1

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    const-string v2, "default"

    aput-object v2, v0, v1

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: have to recover default data connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: getDataConnectionFromSetting()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v0, v0, v1

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1012
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->enableApnType(Ljava/lang/String;)I

    move-result v0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:then enableApnType() with rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1014
    if-nez v0, :cond_2

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1018
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string v2, "dataEnabled"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnAfterGprsAttached():reset mEnableApnTypeReq as NONE of current_use_gprs_sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    const-string v3, "NONE"

    aput-object v3, v1, v2

    .line 1043
    return v0

    .line 1019
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached: wait for enableApnType() execution result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_3
    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached but records are not loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1032
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string/jumbo v2, "noSuchPdp"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_5
    const/4 v0, 0x0

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached for sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1101
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-eq v0, v1, :cond_2

    .line 1102
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-nez v0, :cond_0

    .line 1103
    const-string v0, "UAPP_C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    .line 1163
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-ne v0, v2, :cond_1

    .line 1106
    const-string v0, "UAPP_C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C3:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1114
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-eq v0, v1, :cond_5

    .line 1115
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-nez v0, :cond_3

    .line 1116
    const-string v0, "UAPP_C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1118
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-ne v0, v2, :cond_4

    .line 1119
    const-string v0, "UAPP_C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1122
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1126
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-eq v0, v1, :cond_7

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-0:previous_current_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1128
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 1129
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v0, v1, :cond_9

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-1:previous_request_use_gprs_sim_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1131
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 1132
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a

    .line 1133
    const-string v0, "UAPP_C6-2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1135
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_b

    .line 1136
    const-string v0, "UAPP_C6-3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1138
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_c

    .line 1139
    const-string v0, "UAPP_C6-4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1144
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1150
    const-string v0, "UAPP_C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1153
    :cond_d
    const-string v0, "UAPP_C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1158
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C9:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processGprsDetached():req_detach_simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "processGprsDetached():Reset psOpState as NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-ne p1, v0, :cond_3

    const-string v0, "DETACHED sim, set current as none"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v3, v0, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processGprsDetached():Reset as DETACHED state for simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processGprsDetached(): gprsState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    if-eqz v4, :cond_6

    if-ne v0, v2, :cond_6

    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processGprsDetached():ATTACHING for simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",peer_simId_poweroff_flag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-eq v0, v6, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processGprsDetached():mDetachResetMode is true,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, v1

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    return p1
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    return-object v0
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1263
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDCDS:simId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  request sim id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1265
    if-ne v1, v0, :cond_5

    .line 1266
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-eq v1, v0, :cond_4

    .line 1267
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_2

    .line 1268
    :cond_0
    const-string v0, "EDCDS:enable is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1269
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1312
    :cond_1
    :goto_0
    return v0

    .line 1271
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_3

    .line 1274
    const-string v1, "EDCDS:Can\'t enable due to previous disable is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1279
    :cond_3
    const-string v1, "EDCDS:Invalid cases"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1300
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v0

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDataConnectivityDecideSimId(): both sim detached,query gprs sim setting mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1302
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1307
    const/16 v0, 0x63

    goto :goto_0

    .line 1311
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EDCDS:return simId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 1312
    goto :goto_0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    return p1
.end method

.method private b(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2
    .parameter

    .prologue
    .line 1167
    if-nez p1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 1173
    :goto_0
    return-object v0

    .line 1169
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    return v0
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1336
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    .line 1337
    if-ne v1, v0, :cond_4

    .line 1338
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-eq v1, v0, :cond_3

    .line 1339
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Already detaching for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1341
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1361
    :goto_0
    return v0

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_2

    .line 1345
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Detach the previous attaching simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1346
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    goto :goto_0

    .line 1351
    :cond_2
    const-string v1, "DDCDS:Invalid cases"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_3
    const-string v1, "DDCDS:No GPRS is used on any sim cards"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1361
    goto :goto_0
.end method

.method private c(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1707
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=1"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 1708
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=0"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 1709
    const-string v0, "WithOnePsActive:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_0

    .line 1712
    const-string v0, "enableDataConnectivityWithOnePsActive-C0"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v1, v3

    .line 1924
    :goto_0
    return v1

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_2

    .line 1715
    :cond_1
    const-string v0, "enableDataConnectivityWithOnePsActive-C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1716
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    goto :goto_0

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_3

    .line 1721
    const-string v0, "enableDataConnectivityWithOnePsActive-C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1722
    const/4 v1, 0x3

    goto :goto_0

    .line 1724
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_12

    .line 1726
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_e

    .line 1727
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-eq v0, p1, :cond_a

    .line 1728
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_4

    .line 1730
    const-string v0, "enableDataConnectivityWithOnePsActive-C3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1731
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1732
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    goto :goto_0

    .line 1734
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_9

    .line 1736
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    if-nez v0, :cond_8

    .line 1737
    const-string v0, "enableDataConnectivityWithOnePsActive-C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1738
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1740
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1744
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 1748
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    .line 1749
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    aput-boolean v2, v0, v3

    .line 1752
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-nez v0, :cond_6

    move v0, v1

    .line 1753
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v3, v0

    .line 1754
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v1, v3, v0

    .line 1764
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 1765
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 1769
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1770
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C1]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_7

    .line 1772
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1777
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 1752
    goto :goto_1

    .line 1775
    :cond_7
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1789
    :cond_8
    const-string v0, "enableDataConnectivityWithOnePsActive-C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1791
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    goto/16 :goto_0

    .line 1796
    :cond_9
    const-string v0, "enableDataConnectivityWithOnePsActive-C6"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1797
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1798
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 1799
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1809
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto/16 :goto_0

    .line 1817
    :cond_a
    const-string v0, "enableDataConnectivityWithOnePsActive-C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1818
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1820
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1824
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-nez v0, :cond_c

    move v0, v1

    .line 1826
    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 1830
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    .line 1831
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aput-boolean v2, v3, v0

    .line 1832
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v2, v0

    .line 1833
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v1, v2, v0

    .line 1843
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 1844
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 1848
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1849
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C2]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_d

    .line 1851
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1856
    :cond_b
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    move v0, v2

    .line 1824
    goto :goto_2

    .line 1854
    :cond_d
    :try_start_3
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1870
    :cond_e
    const-string v0, "enableDataConnectivityWithOnePsActive-C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1871
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 1873
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1876
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    if-nez v0, :cond_10

    move v0, v1

    .line 1878
    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 1882
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    .line 1883
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aput-boolean v2, v4, v0

    .line 1885
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v2, v0

    .line 1886
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v1, v2, v0

    .line 1896
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 1897
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 1901
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1902
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C3]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_11

    .line 1904
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1909
    :cond_f
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_10
    move v0, v2

    .line 1876
    goto :goto_3

    .line 1907
    :cond_11
    :try_start_5
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1923
    :cond_12
    const-string v0, "enableDataConnectivityWithOnePsActive-C9"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1924
    const/4 v1, 0x4

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AT+CGATT=0"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeDisableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aput-boolean v3, v0, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort attach procedure by detach command then set as when needed on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v2, v0, p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2305
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2312
    return v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeEnableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    move-result v0

    return v0
.end method

.method private d(I)V
    .locals 5
    .parameter

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_0

    .line 2320
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set data connection setting to simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2327
    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2281
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "supl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cmmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2294
    :cond_0
    const/4 v0, 0x1

    .line 2296
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recv ACTION_MMS_PDP_DISCONNECTED sim_id is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and peerSimId is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and currentDataConnectionSimId is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v5, :cond_2

    const-string v0, "Recv ACTION_MMS_PDP_DISCONNECTED peerSimId is not IDLE, skip restore!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_7

    if-eq v4, p1, :cond_7

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check gprs mode ==>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aput-boolean v3, v5, p1

    if-nez v0, :cond_6

    const-string v0, "Current sim is already detached, not to skip smart switch"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recv ACTION_MMS_PDP_DISCONNECTED disableDataConnectivityGemini() for simid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and return value is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-ne v4, v2, :cond_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv ACTION_MMS_PDP_DISCONNECTED enableDataConnectivityGemini() for simid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and return value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "Skip smart switch to the data connection setting due to pending GPRS connection"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "Recv ACTION_MMS_PDP_DISCONNECTED do not do smart switch"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sim1_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim2_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",req_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExecuteAttachAfterDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDetachResetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnableApnTypeReq_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mServicePowerOffFlag_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mServicePowerOffFlag_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2373
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 2374
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gprs_op_state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2375
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Z

    return-object v0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    return p1
.end method

.method private static f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2383
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    return-void
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2387
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    return-void
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2391
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    return-void
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    return v0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    return v0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic p(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    return v0
.end method


# virtual methods
.method public disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v4, -0x1

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType():type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",call Gemini version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v2

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAT:Select simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1410
    if-eq v2, v4, :cond_1

    .line 1411
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 1416
    :goto_0
    if-ne v1, v0, :cond_0

    const-string/jumbo v1, "mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v2, v4, :cond_0

    .line 1417
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v3, "simId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "teardownGemini(): TelephonyIntents.ACTION_MMS_PDP_DISCONNECTED:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1422
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 1413
    goto :goto_0
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x3

    .line 2153
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnTypeGemini():type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",powerOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2154
    if-eq p2, v4, :cond_0

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    .line 2158
    :cond_0
    const-string v1, "DATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 2163
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not inserted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2169
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2173
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v2, v3, :cond_6

    .line 2174
    const-string v1, "Invoke proxy disableApnType()"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2175
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2176
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v1

    .line 2177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoke proxy disableApnType2()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoke proxy disableApnType3()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2179
    if-eq v0, v1, :cond_4

    const/4 v0, 0x4

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2180
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2181
    const-string/jumbo v2, "simId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2182
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "teardownGemini(): TelephonyIntents.ACTION_MMS_PDP_DISCONNECTED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 2185
    goto/16 :goto_0

    .line 2186
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v2, v3, :cond_b

    .line 2187
    :cond_7
    const-string v1, "Want to disable apn while attaching is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2188
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching is due to enable apn type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2190
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2191
    const-string v1, "Attaching is enable then disable with same apn type"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2193
    const-string/jumbo v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2195
    const-string/jumbo v2, "simId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2196
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2198
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini():reset mEnableApnType as NONE for simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2199
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, p2

    goto/16 :goto_0

    .line 2202
    :cond_9
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C1"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2206
    :cond_a
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C2"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2210
    :cond_b
    const-string v0, "Already in Detaching or Detached state"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini(): selectActivePhoneProxy("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ").disableApnType("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in GprsState.DETACHING or GprsState.DETACHED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2214
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableApnType(Ljava/lang/String;)I

    .line 2216
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eq p2, v4, :cond_c

    .line 2217
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v0

    .line 2218
    if-ltz v0, :cond_c

    if-eq v0, p2, :cond_c

    .line 2219
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MMS_PDP_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2220
    const-string/jumbo v2, "simId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2221
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini(): TelephonyIntents.ACTION_MMS_PDP_DISCONNECTED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    move v0, v1

    .line 2225
    goto/16 :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1365
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AT+CGATT=0"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v2

    .line 1367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1368
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1369
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v2

    .line 1370
    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1378
    :cond_1
    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1969
    const-string v0, "disableDataConnectivityGemini:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1976
    const/4 v0, 0x7

    .line 2016
    :goto_0
    return v0

    .line 1979
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 1980
    :cond_1
    const-string v0, "DDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x5

    goto :goto_0

    .line 1987
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 1988
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, p1

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1991
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1992
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_3

    .line 1994
    const-string v0, "[C4]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1995
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1997
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2014
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2015
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2016
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1998
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_4

    .line 2002
    const-string v0, "disableDataConnectivityGemin():current disable sim is attaching, set when needed to abort attaching"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, p1

    .line 2005
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, p1

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 2008
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2009
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_1

    .line 2014
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2015
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2012
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1214
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1581
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 1582
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v1

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1386
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1389
    :cond_0
    const-string v0, "Do not update the data setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 1398
    :cond_1
    :goto_0
    return v0

    .line 1393
    :cond_2
    if-eq v1, v0, :cond_1

    .line 1398
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2021
    monitor-enter p0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    .line 2025
    :cond_0
    :try_start_0
    const-string v1, "EATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 2029
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gemini enableApnTypeGemini():type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",powerOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2031
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_3

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2033
    const/16 v0, 0x62

    goto :goto_0

    .line 2037
    :cond_3
    if-nez p2, :cond_4

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2041
    :goto_1
    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2042
    const-string v1, "The SIM state is not READY"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2037
    :cond_4
    :try_start_2
    const-string v3, "gsm.sim.state.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2047
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2048
    const-string v1, "The service state is not in service"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2053
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not inserted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2059
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2073
    if-nez p2, :cond_10

    move v3, v1

    .line 2074
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gemini Before enableApnType:It must detach for peerSimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",then attach for simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2075
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v4

    .line 2077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gemini enableApnTypeGemini():currentDataConnectionSimId is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and current_use_gprs_sim_id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2085
    const-string v5, "dm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2086
    if-eq v4, p2, :cond_8

    if-ltz v4, :cond_8

    .line 2088
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)V

    .line 2092
    :cond_8
    const-string/jumbo v5, "wap"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "net"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "cmmail"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2095
    :cond_9
    if-ltz v4, :cond_1

    .line 2099
    if-eq v4, p2, :cond_a

    .line 2100
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)V

    .line 2105
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2106
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    .line 2107
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v3

    .line 2108
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2110
    if-eq v3, v1, :cond_b

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    :cond_b
    move v2, v1

    .line 2116
    :cond_c
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 2117
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 2118
    if-eqz v2, :cond_12

    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_d

    const-string v0, "NONE"

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "default"

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnTypeGemini():notify pdp fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2125
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string v2, "apnFailed"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_11

    .line 2130
    const-string/jumbo v0, "proxy enableApnType() is called due to already attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eq v4, p2, :cond_f

    .line 2134
    if-eqz p2, :cond_e

    if-ne p2, v1, :cond_f

    .line 2135
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 2138
    :cond_f
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto/16 :goto_0

    :cond_10
    move v3, v2

    .line 2073
    goto/16 :goto_2

    .line 2108
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 2142
    :cond_11
    const-string v0, "enable Apn Type is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 2143
    goto/16 :goto_0

    .line 2146
    :cond_12
    const-string v1, "Can\'t enable:Previous Disable APN is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1316
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "AT+CGATT=1"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1317
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v2

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1319
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1321
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)V

    .line 1322
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v2

    .line 1323
    if-eq v2, v1, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    move v0, v1

    .line 1331
    :cond_1
    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini via GPRS Attach:simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gprsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",powerOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1933
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1935
    const/4 v0, 0x4

    .line 1964
    :goto_0
    return v0

    .line 1938
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 1939
    :cond_1
    const-string v0, "EDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v1

    .line 1940
    goto :goto_0

    .line 1947
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 1948
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",req_ps_state2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1949
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v2, p1

    .line 1950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",req_ps_state2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1951
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v3, v4, :cond_3

    .line 1954
    const-string v3, "[C3]Kicking off an op and check states"

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1955
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1956
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1957
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1962
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1963
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1960
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 1962
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1229
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1606
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1599
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1614
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 1575
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1242
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1626
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 1627
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1569
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2271
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2265
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2253
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2259
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 1237
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1620
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 1621
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 1426
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1428
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2233
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2247
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1461
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 2277
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 2278
    return-void
.end method

.method public resetGprsRelatedContext(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x14

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",current_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",request_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim_gprs_state_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim_gprs_state_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",requested_state_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",requested_state_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mExecuteAttachAfterDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDetachResetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 892
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",gprs_op_state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 893
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_7

    .line 896
    const-string/jumbo v0, "resetGprsRelatedContext:ATTACHING->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 893
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 900
    :cond_0
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 901
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 902
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 904
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 905
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 959
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",reset requested_gprs_state as null for simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 962
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():reset mEnableApnTypeReq as NONE for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 965
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():notify pdp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string/jumbo v1, "noSuchPdp"

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, p1

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aput-boolean v4, v0, p1

    .line 971
    if-eqz p1, :cond_3

    if-ne p1, v6, :cond_4

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aput-boolean v4, v0, p1

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_6

    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    if-eqz v0, :cond_5

    .line 979
    const-string/jumbo v0, "resetGprsRelatedContext():remove a delayed kick of for attach due to radio off on both sim"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    .line 986
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 987
    const-string/jumbo v0, "resetGprsRelatedContext():reset gprs_op_state = GprsOpState.NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 988
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 989
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    .line 990
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:I

    .line 993
    :cond_6
    return-void

    .line 906
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_8

    .line 909
    const-string/jumbo v0, "resetGprsRelatedContext:ATTACHED->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 911
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 912
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    goto/16 :goto_0

    .line 914
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_d

    .line 915
    const-string/jumbo v0, "resetGprsRelatedContext:DETACHING->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 917
    if-nez p1, :cond_9

    const/4 v0, 0x2

    .line 918
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_6
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 922
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 917
    :cond_9
    const/4 v0, 0x4

    goto :goto_1

    .line 921
    :cond_a
    :try_start_7
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 922
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 926
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-ne v0, p1, :cond_b

    .line 927
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 928
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    .line 931
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Z

    if-eqz v0, :cond_c

    .line 934
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_8
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 937
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",kick off a delayed op to see if this is flight mode case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 937
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 942
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Not request to execute attach after detach caused by radio off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:[Z

    aput-boolean v4, v0, p1

    .line 944
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Z

    goto/16 :goto_0

    .line 947
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_1

    .line 952
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    if-ne v0, p1, :cond_1

    .line 953
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 954
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:I

    goto/16 :goto_0

    .line 962
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 988
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1259
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1260
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1648
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setDataRoamingEnabled(Z)V

    .line 1649
    return-void
.end method

.method public setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set peerSimId abort attach procedure or as When Needed:before attach for this actionSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",with detachPeer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1512
    if-nez p1, :cond_0

    move v2, v3

    .line 1518
    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    .line 1521
    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "AT+EGTYPE=0,1"

    aput-object v5, v1, v4

    const-string v5, ""

    aput-object v5, v1, v3

    .line 1522
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1523
    if-nez v2, :cond_2

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 1525
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1526
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 1537
    return-void

    :cond_0
    move v2, v4

    .line 1515
    goto :goto_0

    .line 1518
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 1523
    :cond_2
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_2
.end method

.method public setThisSimAbortGprsAttachByDetach(IZI)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set thisSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":abort its attach procedure by detach command,with inx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",detachFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1541
    if-nez p1, :cond_0

    move v0, v1

    .line 1543
    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT+EGTYPE=0,1"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1545
    if-nez p1, :cond_1

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 1547
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1548
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 1556
    return-void

    .line 1541
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1545
    :cond_1
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_1
.end method

.method public startMonitorGprsAttachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1468
    const-string v0, "Before starting a new one, remove old monitor grps attach event first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1474
    return-void
.end method

.method public startMonitorGprsDetachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1491
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1495
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1496
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1497
    return-void
.end method

.method public stopMonitorGprsAttachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1484
    :cond_0
    return-void
.end method

.method public stopMonitorGprsDetachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1507
    :cond_0
    return-void
.end method
