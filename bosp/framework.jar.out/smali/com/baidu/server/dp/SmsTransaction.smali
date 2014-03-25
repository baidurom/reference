.class public Lcom/baidu/server/dp/SmsTransaction;
.super Ljava/lang/Object;
.source "SmsTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/baidu/server/dp/Transaction;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/server/dp/SmsTransaction;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_SENDDATA:I = 0x3

.field static final TYPE_SENDMULTIPARTTEXT:I = 0x2

.field static final TYPE_SENDTEXT:I = 0x1


# instance fields
.field private mData:[B

.field private mDeliveryIntent:Landroid/app/PendingIntent;

.field private mDeliveryIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field mDestAddr:Ljava/lang/String;

.field private mDestPort:I

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSentIntent:Landroid/app/PendingIntent;

.field private mSentIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field mSrcAddr:Ljava/lang/String;

.field mText:Ljava/lang/String;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/baidu/server/dp/SmsTransaction$1;

    invoke-direct {v0}, Lcom/baidu/server/dp/SmsTransaction$1;-><init>()V

    sput-object v0, Lcom/baidu/server/dp/SmsTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mText:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntents:Ljava/util/ArrayList;

    .line 178
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 180
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntents:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestPort:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mData:[B

    .line 185
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    .line 186
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/server/dp/SmsTransaction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/SmsTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "destAddr"
    .parameter "srcAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    .line 214
    iput p3, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestPort:I

    .line 215
    iput-object p4, p0, Lcom/baidu/server/dp/SmsTransaction;->mData:[B

    .line 216
    iput-object p5, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    .line 217
    iput-object p6, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 218
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "destAddr"
    .parameter "srcAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/baidu/server/dp/SmsTransaction;->mText:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    .line 197
    iput-object p5, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "destAddr"
    .parameter "srcAddr"
    .parameter
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    .line 206
    iput-object p4, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    .line 207
    iput-object p5, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntents:Ljava/util/ArrayList;

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    .line 209
    return-void
.end method

.method private createContent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 64
    :cond_1
    return-object v0

    .line 60
    :cond_2
    const-string v0, ""

    .line 61
    .local v0, content:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createContent([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private sendDenyPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "pi"

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 151
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendDenyPendingIntent(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, pi:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p1, :cond_0

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/baidu/server/dp/SmsTransaction;->sendDenyPendingIntent(Landroid/app/PendingIntent;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, content:Ljava/lang/String;
    iget v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mText:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/baidu/server/dp/SmsTransaction;->createContent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mData:[B

    invoke-direct {p0, v1}, Lcom/baidu/server/dp/SmsTransaction;->createContent([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    return-object v0
.end method

.method public trans(ILandroid/content/Context;)V
    .locals 7
    .parameter "grant"
    .parameter "context"

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 123
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 124
    .local v0, sm:Landroid/telephony/SmsManager;
    iget v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 146
    .end local v0           #sm:Landroid/telephony/SmsManager;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #sm:Landroid/telephony/SmsManager;
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/server/dp/SmsTransaction;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntents:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestPort:I

    int-to-short v3, v3

    iget-object v4, p0, Lcom/baidu/server/dp/SmsTransaction;->mData:[B

    iget-object v5, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 135
    .end local v0           #sm:Landroid/telephony/SmsManager;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 136
    iget v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/baidu/server/dp/SmsTransaction;->sendDenyPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/baidu/server/dp/SmsTransaction;->sendDenyPendingIntent(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 82
    iget v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSrcAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mParts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDestPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lcom/baidu/server/dp/SmsTransaction;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
