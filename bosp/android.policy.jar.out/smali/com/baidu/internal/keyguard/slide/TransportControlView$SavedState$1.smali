.class final Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState$1;
.super Ljava/lang/Object;
.source "TransportControlView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
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
        "Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 559
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;-><init>(Landroid/os/Parcel;Lcom/baidu/internal/keyguard/slide/TransportControlView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 563
    new-array v0, p1, [Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState$1;->newArray(I)[Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    move-result-object v0

    return-object v0
.end method
