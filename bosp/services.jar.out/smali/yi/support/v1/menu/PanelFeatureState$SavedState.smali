.class Lyi/support/v1/menu/PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "PanelFeatureState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lyi/support/v1/menu/PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isInExpandedMode:Z

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lyi/support/v1/menu/PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lyi/support/v1/menu/PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/PanelFeatureState$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Lyi/support/v1/menu/PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-static {p0}, Lyi/support/v1/menu/PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lyi/support/v1/menu/PanelFeatureState$SavedState;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 205
    new-instance v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;

    invoke-direct {v0}, Lyi/support/v1/menu/PanelFeatureState$SavedState;-><init>()V

    .line 206
    .local v0, savedState:Lyi/support/v1/menu/PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->featureId:I

    .line 207
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 210
    iget-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 214
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 207
    goto :goto_0

    :cond_2
    move v2, v3

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isInExpandedMode:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 196
    goto :goto_0

    :cond_2
    move v1, v2

    .line 197
    goto :goto_1
.end method
