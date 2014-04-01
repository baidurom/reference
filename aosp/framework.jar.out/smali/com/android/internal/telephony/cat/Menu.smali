.class public Lcom/android/internal/telephony/cat/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultItem:I

.field public helpAvailable:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field public itemsIconSelfExplanatory:Z

.field public nextActionIndicator:[B

.field public presentationType:Lcom/android/internal/telephony/cat/PresentationType;

.field public softKeyPreferred:Z

.field public title:Ljava/lang/String;

.field public titleAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public titleIcon:Landroid/graphics/Bitmap;

.field public titleIconSelfExplanatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/internal/telephony/cat/Menu$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 49
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 72
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 73
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/cat/PresentationType;->values()[Lcom/android/internal/telephony/cat/PresentationType;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .local v2, naiLen:I
    if-gtz v2, :cond_5

    .line 85
    iput-object v7, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 91
    :goto_5
    return-void

    .end local v2           #naiLen:I
    :cond_1
    move v4, v6

    .line 76
    goto :goto_1

    :cond_2
    move v4, v6

    .line 77
    goto :goto_2

    :cond_3
    move v4, v6

    .line 78
    goto :goto_3

    :cond_4
    move v5, v6

    .line 79
    goto :goto_4

    .line 87
    .restart local v2       #naiLen:I
    :cond_5
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 88
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Menu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 102
    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/PresentationType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    if-nez v2, :cond_5

    const/4 v2, -0x1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    return-void

    :cond_1
    move v2, v4

    .line 107
    goto :goto_1

    :cond_2
    move v2, v4

    .line 108
    goto :goto_2

    :cond_3
    move v2, v4

    .line 109
    goto :goto_3

    :cond_4
    move v3, v4

    .line 110
    goto :goto_4

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v2, v2

    goto :goto_5
.end method
