.class public Lyi/ubc/UBCConfiguration;
.super Ljava/lang/Object;
.source "UBCConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lyi/ubc/UBCConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public EventType:I

.field public MetricId:J

.field public final MetricType_Event:I

.field public final MetricType_Timer:I

.field public SamplingProportion:I

.field public StatisticsCycle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lyi/ubc/UBCConfiguration$1;

    invoke-direct {v0}, Lyi/ubc/UBCConfiguration$1;-><init>()V

    sput-object v0, Lyi/ubc/UBCConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 1
    .parameter "metric"
    .parameter "eventType"
    .parameter "statisticsCycle"
    .parameter "samplingProportion"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lyi/ubc/UBCConfiguration;->MetricType_Event:I

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lyi/ubc/UBCConfiguration;->MetricType_Timer:I

    .line 33
    iput-wide p1, p0, Lyi/ubc/UBCConfiguration;->MetricId:J

    .line 34
    iput p3, p0, Lyi/ubc/UBCConfiguration;->EventType:I

    .line 35
    iput p4, p0, Lyi/ubc/UBCConfiguration;->StatisticsCycle:I

    .line 36
    iput p5, p0, Lyi/ubc/UBCConfiguration;->SamplingProportion:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "pl"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lyi/ubc/UBCConfiguration;->MetricType_Event:I

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lyi/ubc/UBCConfiguration;->MetricType_Timer:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lyi/ubc/UBCConfiguration;->MetricId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lyi/ubc/UBCConfiguration;->EventType:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lyi/ubc/UBCConfiguration;->StatisticsCycle:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lyi/ubc/UBCConfiguration;->SamplingProportion:I

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    iget-wide v0, p0, Lyi/ubc/UBCConfiguration;->MetricId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget v0, p0, Lyi/ubc/UBCConfiguration;->EventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lyi/ubc/UBCConfiguration;->StatisticsCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lyi/ubc/UBCConfiguration;->SamplingProportion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
