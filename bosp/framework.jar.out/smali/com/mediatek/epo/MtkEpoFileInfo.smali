.class public final Lcom/mediatek/epo/MtkEpoFileInfo;
.super Ljava/lang/Object;
.source "MtkEpoFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/epo/MtkEpoFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downloadTime:J

.field public expireTime:J

.field public startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/mediatek/epo/MtkEpoFileInfo$1;

    invoke-direct {v0}, Lcom/mediatek/epo/MtkEpoFileInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/epo/MtkEpoFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .parameter "downloadTime"
    .parameter "startTime"
    .parameter "expireTime"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    .line 56
    iput-wide p3, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    .line 57
    iput-wide p5, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    .line 58
    return-void
.end method

.method private timeInMillis2Date(J)Ljava/lang/String;
    .locals 9
    .parameter "time"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 101
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 102
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 103
    const-string v2, "%04d-%02d-%02d %02d:%02d:%02d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, date:Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/epo/MtkEpoFileInfo;->timeInMillis2Date(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/epo/MtkEpoFileInfo;->timeInMillis2Date(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/epo/MtkEpoFileInfo;->timeInMillis2Date(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 111
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkEpoFileInfo downloadTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expireTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method
