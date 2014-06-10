.class Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field wasIRCDRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState$1;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState$1;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->wasIRCDRegistered:Z

    .line 548
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/internal/keyguard/slide/TransportControlView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 542
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 552
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 554
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->wasIRCDRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
