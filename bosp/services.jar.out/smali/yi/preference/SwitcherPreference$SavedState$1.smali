.class final Lyi/preference/SwitcherPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SwitcherPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/preference/SwitcherPreference$SavedState;
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
        "Lyi/preference/SwitcherPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lyi/preference/SwitcherPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lyi/preference/SwitcherPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/preference/SwitcherPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 305
    new-instance v0, Lyi/preference/SwitcherPreference$SavedState;

    invoke-direct {v0, p1}, Lyi/preference/SwitcherPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lyi/preference/SwitcherPreference$SavedState$1;->newArray(I)[Lyi/preference/SwitcherPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/preference/SwitcherPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 309
    new-array v0, p1, [Lyi/preference/SwitcherPreference$SavedState;

    return-object v0
.end method
