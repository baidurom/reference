.class public Landroid/telephony/SmsMemoryStatus;
.super Ljava/lang/Object;
.source "SmsMemoryStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsMemoryStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mTotal:I

.field public mUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/telephony/SmsMemoryStatus$1;

    invoke-direct {v0}, Landroid/telephony/SmsMemoryStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsMemoryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 66
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "used"
    .parameter "total"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 71
    iput p2, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    return v0
.end method

.method public getUnused()I
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    iget v1, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 88
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 96
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
