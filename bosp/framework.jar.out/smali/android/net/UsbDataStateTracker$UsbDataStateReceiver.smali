.class Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UsbDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/UsbDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/UsbDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/UsbDataStateTracker;Landroid/net/UsbDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;-><init>(Landroid/net/UsbDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 197
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, apnType:Ljava/lang/String;
    const-string v6, "UsbDataStateTracker"

    const-string v8, "Broadcast received: mediatek.intent.action.USB_DATA_STATE"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    .end local v2           #apnType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v2       #apnType:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 206
    const-class v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 208
    .local v5, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, reason:Ljava/lang/String;
    const-string v6, "apn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, apnName:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    const-string/jumbo v8, "networkRoaming"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 213
    const-string v6, "UsbDataStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setting isAvailable to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "networkUnvailable"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    const-string/jumbo v6, "networkUnvailable"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 220
    const-string v8, "UsbDataStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received state="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", old="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v9}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", reason="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_4

    const-string v6, "(unspecified)"

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string v8, "android.net.conn.USB_INTERNET_SYSTEM_KEY"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbInternetSystemType:I
    invoke-static {v6, v8}, Landroid/net/UsbDataStateTracker;->access$502(Landroid/net/UsbDataStateTracker;I)I

    .line 226
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    if-eq v6, v5, :cond_7

    .line 227
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v6, v5}, Landroid/net/UsbDataStateTracker;->access$402(Landroid/net/UsbDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 228
    sget-object v6, Landroid/net/UsbDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 230
    :pswitch_0
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v6}, Landroid/net/UsbDataStateTracker;->isTeardownRequested()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v6, v7}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 234
    :cond_2
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 216
    goto :goto_1

    :cond_4
    move-object v6, v4

    .line 220
    goto :goto_2

    .line 243
    :pswitch_1
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :pswitch_2
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_3
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 251
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    if-nez v6, :cond_5

    .line 252
    const-string v6, "UsbDataStateTracker"

    const-string v7, "CONNECTED event did not supply link properties."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 255
    :cond_5
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-static {}, Landroid/net/UsbDataStateTracker;->access$800()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbInternetSystemType:I
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 256
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    const-string v7, "208.67.222.222"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 258
    invoke-static {}, Landroid/net/UsbDataStateTracker;->access$900()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbInternetSystemType:I
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 259
    .local v0, addr:Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    new-instance v7, Landroid/net/LinkAddress;

    const/16 v8, 0x18

    invoke-direct {v7, v0, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 261
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v6, "linkCapabilities"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$1002(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 263
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1000(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v6

    if-nez v6, :cond_6

    .line 264
    const-string v6, "UsbDataStateTracker"

    const-string v7, "CONNECTED event did not supply link capabilities."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkCapabilities;

    invoke-direct {v7}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$1002(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 267
    :cond_6
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4, v1}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_7
    const-string/jumbo v6, "linkPropertiesChanged"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v6}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 274
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v6

    if-nez v6, :cond_8

    .line 275
    const-string v6, "UsbDataStateTracker"

    const-string v7, "No link property in LINK_PROPERTIES change event."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v7}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 279
    :cond_8
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1100(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 283
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 286
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 288
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #calls: Landroid/net/UsbDataStateTracker;->onHandleReadyForUsbInternet()V
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$1200(Landroid/net/UsbDataStateTracker;)V

    goto/16 :goto_0

    .line 291
    :cond_a
    const-string v6, "UsbDataStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcast received: ignore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
