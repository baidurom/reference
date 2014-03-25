.class public Lcom/android/internal/telephony/cat/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultText:Ljava/lang/String;

.field public digitOnly:Z

.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public echo:Z

.field public helpAvailable:Z

.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public maxLen:I

.field public minLen:I

.field public packed:Z

.field public text:Ljava/lang/String;

.field public ucs2:Z

.field public yesNo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/Input$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 87
    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 114
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto :goto_1

    :cond_2
    move v0, v2

    .line 110
    goto :goto_2

    :cond_3
    move v0, v2

    .line 111
    goto :goto_3

    :cond_4
    move v0, v2

    .line 112
    goto :goto_4

    :cond_5
    move v0, v2

    .line 113
    goto :goto_5

    :cond_6
    move v1, v2

    .line 117
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Input$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 160
    .local v0, self:Lcom/android/internal/telephony/cat/Input;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "Icon"

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    goto :goto_1

    :cond_2
    move v0, v2

    .line 133
    goto :goto_2

    :cond_3
    move v0, v2

    .line 134
    goto :goto_3

    :cond_4
    move v0, v2

    .line 135
    goto :goto_4

    :cond_5
    move v0, v2

    .line 136
    goto :goto_5

    :cond_6
    move v1, v2

    .line 140
    goto :goto_6
.end method
