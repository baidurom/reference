.class final Lyi/support/v1/menu/PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "PanelFeatureState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/PanelFeatureState$SavedState;
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
        "Lyi/support/v1/menu/PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lyi/support/v1/menu/PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 219
    #calls: Lyi/support/v1/menu/PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;
    invoke-static {p1}, Lyi/support/v1/menu/PanelFeatureState$SavedState;->access$100(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lyi/support/v1/menu/PanelFeatureState$SavedState$1;->newArray(I)[Lyi/support/v1/menu/PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/support/v1/menu/PanelFeatureState$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 223
    new-array v0, p1, [Lyi/support/v1/menu/PanelFeatureState$SavedState;

    return-object v0
.end method
