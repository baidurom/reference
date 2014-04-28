.class final Lcom/baidu/server/dp/SmsTransaction$1;
.super Ljava/lang/Object;
.source "SmsTransaction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/SmsTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/server/dp/SmsTransaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/server/dp/SmsTransaction;
    .locals 2
    .parameter "source"

    .prologue
    .line 110
    new-instance v0, Lcom/baidu/server/dp/SmsTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/server/dp/SmsTransaction;-><init>(Landroid/os/Parcel;Lcom/baidu/server/dp/SmsTransaction$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/baidu/server/dp/SmsTransaction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/server/dp/SmsTransaction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/server/dp/SmsTransaction;
    .locals 1
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p1, [Lcom/baidu/server/dp/SmsTransaction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/baidu/server/dp/SmsTransaction$1;->newArray(I)[Lcom/baidu/server/dp/SmsTransaction;

    move-result-object v0

    return-object v0
.end method
