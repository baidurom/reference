.class public Lcom/android/phone/SimcardValueUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimcardValueUpdateReceiver.java"


# static fields
.field private static final EVENT_QUERY_SMSC_DONE:I = 0x3ed

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x3ee

.field private static final FDN_STATE:Ljava/lang/String; = "com.mms.send.FDN_STATE"

.field private static final GET_FDN_STATE:Ljava/lang/String; = "com.mms.GET_FDN_STATE"

.field private static final SC_GET_BROADCAST:Ljava/lang/String; = "com.mms.GET_SC_BROADCAST"

.field private static phone:Lcom/android/internal/telephony/Phone;


# instance fields
.field private final SC_READ:Ljava/lang/String;

.field private final SC_WRITE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mServiceCenter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/SimcardValueUpdateReceiver;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const-string v0, "com.phone.SC_BROADCAST_READ"

    iput-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->SC_READ:Ljava/lang/String;

    .line 50
    const-string v0, "com.mms.ui.SC_BROADCAST_WRITE"

    iput-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->SC_WRITE:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mServiceCenter:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/phone/SimcardValueUpdateReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimcardValueUpdateReceiver$1;-><init>(Lcom/android/phone/SimcardValueUpdateReceiver;)V

    iput-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimcardValueUpdateReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SimcardValueUpdateReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.mms.ui.SC_BROADCAST_WRITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    const-string v7, "SC_Write"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, scWriteValue:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mContext:Landroid/content/Context;

    .line 116
    if-nez v6, :cond_1

    const-string v7, ""

    :goto_0
    iput-object v7, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mServiceCenter:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    sput-object v7, Lcom/android/phone/SimcardValueUpdateReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 118
    sget-object v7, Lcom/android/phone/SimcardValueUpdateReceiver;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ee

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 158
    .end local v6           #scWriteValue:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v6       #scWriteValue:Ljava/lang/String;
    :cond_1
    move-object v7, v6

    .line 116
    goto :goto_0

    .line 119
    .end local v6           #scWriteValue:Ljava/lang/String;
    :cond_2
    const-string v7, "com.mms.GET_SC_BROADCAST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 120
    iput-object p1, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    sput-object v7, Lcom/android/phone/SimcardValueUpdateReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 122
    sget-object v7, Lcom/android/phone/SimcardValueUpdateReceiver;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/SimcardValueUpdateReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ed

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_1

    .line 123
    :cond_3
    const-string v7, "com.mms.GET_FDN_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.mms.send.FDN_STATE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, fdnIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 126
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v7

    if-nez v7, :cond_5

    .line 128
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    const-string v7, "FDN_state"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 131
    :cond_4
    const-string v7, "FDN_state"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    move-object v2, v5

    .line 136
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 137
    .local v2, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    .line 138
    .local v3, mIsSlot1Insert:Z
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v4

    .line 139
    .local v4, mIsSlot2Insert:Z
    if-eqz v3, :cond_6

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 141
    const-string v7, "FDN_state_sim1"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 149
    const-string v7, "FDN_state_sim2"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 145
    :cond_6
    const-string v7, "FDN_state_sim1"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 153
    :cond_7
    const-string v7, "FDN_state_sim2"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method
