.class public Lcom/android/phone/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final TYPE_GPRS:I = 0x4

.field static final TYPE_SMS:I = 0x3

.field static final TYPE_VIDEOCALL:I = 0x2

.field static final TYPE_VOICECALL:I = 0x1

.field static mSupport3G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Utils;->mSupport3G:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 40
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 41
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    aget v0, v0, p0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 17
    const-string v0, "Utils gemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 34
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 20
    :pswitch_1
    const v0, 0x2020121

    goto :goto_0

    .line 22
    :pswitch_2
    const v0, 0x202010e

    goto :goto_0

    .line 24
    :pswitch_3
    const v0, 0x2020107

    goto :goto_0

    .line 26
    :pswitch_4
    const v0, 0x2020128

    goto :goto_0

    .line 28
    :pswitch_5
    const v0, 0x2020126

    goto :goto_0

    .line 30
    :pswitch_6
    const v0, 0x20200fe

    goto :goto_0

    .line 32
    :pswitch_7
    const v0, 0x2020127

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
