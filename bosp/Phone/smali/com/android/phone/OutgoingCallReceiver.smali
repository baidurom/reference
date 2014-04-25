.class public Lcom/android/phone/OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.android.phone.OutgoingCallReceiver"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "original"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v0, selectPhoneIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 20
    const-string v0, "com.android.phone.OutgoingCallReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    const-string v0, "+OutgoingCallReceiver.onReceive action"

    invoke-static {v0}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, number:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 26
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 30
    .local v10, uri:Landroid/net/Uri;
    const-string v0, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v0, "com.android.phone.extra.slot"

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v0, "com.android.phone.extra.video"

    const-string v2, "com.android.phone.extra.video"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    invoke-static {p2, v1}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 35
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object v0, p1

    move-object v3, p0

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 40
    const-string v0, "-OutgoingCallReceiver.onReceive action"

    invoke-static {v0}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 62
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    .end local v6           #number:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "+OutgoingCallReceiver.onReceive broadcast"

    invoke-static {v0}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v6

    .line 45
    .restart local v6       #number:Ljava/lang/String;
    const-string v0, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, originalUri:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 48
    .restart local v10       #uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v8, newIntent:Landroid/content/Intent;
    const-string v0, "com.android.phone.extra.video"

    const-string v2, "com.android.phone.extra.video"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.phone.extra.slot"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    :cond_3
    const-string v0, "sip"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    :cond_4
    invoke-virtual {p0, p1, v8}, Lcom/android/phone/OutgoingCallReceiver;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    :goto_1
    const-string v0, "-OutgoingCallReceiver.onReceive broadcast"

    invoke-static {v0}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v0, "com.android.phone.extra.slot"

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, number:Ljava/lang/String;
    const-string v3, "sip"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OutgoingCallReceiver;->newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, sipIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
