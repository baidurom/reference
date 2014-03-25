.class public Landroid/telephony/SimSmsInsertStatus;
.super Ljava/lang/Object;
.source "SimSmsInsertStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SimSmsInsertStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SimSmsInsertStatus"


# instance fields
.field public indexInIcc:Ljava/lang/String;

.field public insertStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/telephony/SimSmsInsertStatus$1;

    invoke-direct {v0}, Landroid/telephony/SimSmsInsertStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/SimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "index"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 68
    iput p1, p0, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 69
    iput-object p2, p0, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v4, p0, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :cond_1
    iget-object v4, p0, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, temp:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 103
    array-length v4, v3

    new-array v2, v4, [I

    .line 104
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 106
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    .line 107
    const-string v4, "SimSmsInsertStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TAG"

    const-string v5, "fail to parse index"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v4, -0x1

    aput v4, v2, v1

    goto :goto_2

    .line 116
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v2           #ret:[I
    :cond_2
    const-string v4, "SimSmsInsertStatus"

    const-string/jumbo v5, "should not arrive here"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
