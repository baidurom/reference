.class public Lyi/phone/DefaultPhoneUtil;
.super Ljava/lang/Object;
.source "DefaultPhoneUtil.java"

# interfaces
.implements Lyi/phone/IPhoneUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, imei:Ljava/lang/String;
    iget-object v2, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 26
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lyi/phone/DefaultPhoneUtil;->isSlotEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetOperaterName(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 84
    iget-object v1, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOperatior(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lyi/phone/DefaultPhoneUtil;->isSlotEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 67
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 70
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lyi/phone/DefaultPhoneUtil;->isSlotEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 77
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 79
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCompatable()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public isSlotEnabled(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, result:Z
    iget-object v2, p0, Lyi/phone/DefaultPhoneUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 36
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slot"

    .prologue
    .line 47
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 50
    const/4 v1, 0x1

    return v1
.end method
