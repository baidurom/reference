.class public Lcom/android/internal/telephony/UsimGroup;
.super Ljava/lang/Object;
.source "UsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "UsimGroup"


# instance fields
.field alphaTag:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/telephony/UsimGroup$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/UsimGroup$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "recordNumber"
    .parameter "alphaTag"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    .line 103
    iput p1, p0, Lcom/android/internal/telephony/UsimGroup;->recordNumber:I

    .line 104
    iput-object p2, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 136
    if-ne p0, p1, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 139
    :cond_0
    if-nez p0, :cond_1

    .line 140
    const-string p0, ""

    .line 142
    :cond_1
    if-nez p1, :cond_2

    .line 143
    const-string p1, ""

    .line 145
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/telephony/UsimGroup;->recordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/UsimGroup;)Z
    .locals 2
    .parameter "uGas"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UsimGroup;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphaString"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/internal/telephony/UsimGroup;->recordNumber:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsimGroup \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UsimGroup;->recordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 158
    iget v0, p0, Lcom/android/internal/telephony/UsimGroup;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/UsimGroup;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method
