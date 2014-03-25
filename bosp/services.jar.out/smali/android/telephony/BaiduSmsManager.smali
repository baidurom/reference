.class public final Landroid/telephony/BaiduSmsManager;
.super Ljava/lang/Object;
.source "BaiduSmsManager.java"


# static fields
.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "BaiduSMS"

.field private static final TEST_MODE_CTA:I = 0x1

.field private static final TEST_MODE_FTA:I = 0x2

.field private static final TEST_MODE_IOT:I = 0x3

.field private static final TEST_MODE_PROPERTY_KEY:Ljava/lang/String; = "gsm.gcf.testmode"

.field private static final TEST_MODE_PROPERTY_KEY2:Ljava/lang/String; = "gsm.gcf.testmode2"

.field private static final TEST_MODE_UNKNOWN:I = -0x1

.field private static lastReceivedSmsSimId:I

.field private static final sInstance:Landroid/telephony/BaiduSmsManager;


# instance fields
.field private testMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/telephony/BaiduSmsManager;

    invoke-direct {v0}, Landroid/telephony/BaiduSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/BaiduSmsManager;->sInstance:Landroid/telephony/BaiduSmsManager;

    .line 67
    const/4 v0, 0x0

    sput v0, Landroid/telephony/BaiduSmsManager;->lastReceivedSmsSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/BaiduSmsManager;->testMode:I

    return-void
.end method

.method public static getDefault()Landroid/telephony/BaiduSmsManager;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Landroid/telephony/BaiduSmsManager;->sInstance:Landroid/telephony/BaiduSmsManager;

    return-object v0
.end method

.method private setLastIncomingSmsSimId(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 327
    :cond_0
    sput p1, Landroid/telephony/BaiduSmsManager;->lastReceivedSmsSimId:I

    .line 329
    :cond_1
    return-void
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "slotId"

    .prologue
    .line 242
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/gemini/GeminiSmsManager;->copyMessageToIccGemini([B[BII)Z

    move-result v0

    return v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I
    .locals 1
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJI)I"
        }
    .end annotation

    .prologue
    .line 261
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p7}, Landroid/telephony/gemini/GeminiSmsManager;->copyTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "slotId"

    .prologue
    .line 277
    invoke-static {p1, p2}, Landroid/telephony/gemini/GeminiSmsManager;->deleteMessageFromIccGemini(II)Z

    move-result v0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getAllMessagesFromIccGemini(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAddress(Landroid/telephony/SmsMessage;I)Ljava/lang/String;
    .locals 1
    .parameter "sms"
    .parameter "status"

    .prologue
    .line 355
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlotIdFromSMSIntent(Landroid/content/Intent;)I
    .locals 3
    .parameter "intent"

    .prologue
    .line 212
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, slotId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0, v0}, Landroid/telephony/BaiduSmsManager;->setLastIncomingSmsSimId(I)V

    .line 216
    :cond_0
    return v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 198
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p7

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 201
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 166
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 110
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 113
    return-void
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "slotId"

    .prologue
    .line 297
    invoke-static {p1, p2, p3, p4}, Landroid/telephony/gemini/GeminiSmsManager;->updateMessageOnIccGemini(II[BI)Z

    move-result v0

    return v0
.end method
