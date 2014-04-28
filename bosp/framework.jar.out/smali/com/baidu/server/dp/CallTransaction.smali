.class public Lcom/baidu/server/dp/CallTransaction;
.super Ljava/lang/Object;
.source "CallTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/baidu/server/dp/Transaction;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/server/dp/CallTransaction;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_INTENT:I = 0x0

.field static final TYPE_INTENTS:I = 0x1


# instance fields
.field mIntent:Landroid/content/Intent;

.field mIntents:[Landroid/content/Intent;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/baidu/server/dp/CallTransaction$1;

    invoke-direct {v0}, Lcom/baidu/server/dp/CallTransaction$1;-><init>()V

    sput-object v0, Lcom/baidu/server/dp/CallTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    .line 96
    iput-object p1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    .line 85
    iget v1, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    if-nez v1, :cond_1

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v1, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, len:I
    new-array v1, v0, [Landroid/content/Intent;

    iput-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/server/dp/CallTransaction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/CallTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Landroid/content/Intent;)V
    .locals 1
    .parameter "intents"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    .line 100
    iput-object p1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, number:Ljava/lang/String;
    const/4 v0, 0x0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    if-nez v2, :cond_2

    .line 40
    iget-object v0, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    .line 44
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_1
    return-object v1

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto :goto_0
.end method

.method public trans(ILandroid/content/Context;)V
    .locals 3
    .parameter "grant"
    .parameter "context"

    .prologue
    const/high16 v2, 0x1000

    .line 23
    if-nez p1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 59
    iget v0, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/baidu/server/dp/CallTransaction;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget v0, p0, Lcom/baidu/server/dp/CallTransaction;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/baidu/server/dp/CallTransaction;->mIntents:[Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
