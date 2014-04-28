.class final Lcom/baidu/ifttt/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/Task;
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
        "Lcom/baidu/ifttt/Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/ifttt/Task;
    .locals 2
    .parameter "in"

    .prologue
    .line 121
    new-instance v0, Lcom/baidu/ifttt/Task;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/ifttt/Task;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/Task$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/ifttt/Task;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/ifttt/Task;
    .locals 1
    .parameter "size"

    .prologue
    .line 125
    new-array v0, p1, [Lcom/baidu/ifttt/Task;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/Task$1;->newArray(I)[Lcom/baidu/ifttt/Task;

    move-result-object v0

    return-object v0
.end method
