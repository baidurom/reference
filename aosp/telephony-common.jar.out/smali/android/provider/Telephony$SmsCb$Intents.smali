.class public final Landroid/provider/Telephony$SmsCb$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;
    .locals 7
    .parameter "intent"

    .prologue
    .line 1174
    const-string v4, "message"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 1175
    .local v1, messages:[Landroid/os/Parcelable;
    if-nez v1, :cond_1

    .line 1176
    const/4 v2, 0x0

    .line 1187
    :cond_0
    return-object v2

    .line 1179
    :cond_1
    array-length v4, v1

    new-array v2, v4, [Landroid/telephony/SmsCbMessage;

    .line 1180
    .local v2, msgs:[Landroid/telephony/SmsCbMessage;
    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1182
    .local v3, simId:I
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get SmsCbMessage ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1185
    aget-object v4, v1, v0

    check-cast v4, Landroid/telephony/SmsCbMessage;

    aput-object v4, v2, v0

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
