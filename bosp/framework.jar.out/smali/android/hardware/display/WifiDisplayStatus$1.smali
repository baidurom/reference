.class final Landroid/hardware/display/WifiDisplayStatus$1;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplayStatus;
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
        "Landroid/hardware/display/WifiDisplayStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 9
    .parameter "in"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, featureState:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, scanState:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, activeDisplayState:I
    const/4 v4, 0x0

    .line 69
    .local v4, activeDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #activeDisplay:Landroid/hardware/display/WifiDisplay;
    check-cast v4, Landroid/hardware/display/WifiDisplay;

    .line 73
    .restart local v4       #activeDisplay:Landroid/hardware/display/WifiDisplay;
    :cond_0
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    .line 74
    .local v5, availableDisplays:[Landroid/hardware/display/WifiDisplay;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v5

    if-ge v7, v0, :cond_1

    .line 75
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    aput-object v0, v5, v7

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/display/WifiDisplay;

    .line 79
    .local v6, rememberedDisplays:[Landroid/hardware/display/WifiDisplay;
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-ge v7, v0, :cond_2

    .line 80
    sget-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    aput-object v0, v6, v7

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 88
    new-array v0, p1, [Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplayStatus$1;->newArray(I)[Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method
