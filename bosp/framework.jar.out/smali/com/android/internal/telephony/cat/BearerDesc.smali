.class public Lcom/android/internal/telephony/cat/BearerDesc;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public bearerType:I

.field public connectionElement:I

.field public dataCompression:I

.field public dataRate:I

.field public delay:I

.field public headerCompression:I

.field public mean:I

.field public pdpType:I

.field public peak:I

.field public precedence:I

.field public reliability:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 26
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 28
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 29
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 31
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 38
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 26
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 28
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 29
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 31
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 38
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDesc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->headerCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDesc;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
