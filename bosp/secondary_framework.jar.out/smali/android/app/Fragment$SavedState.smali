.class public Landroid/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 509
    new-instance v0, Landroid/app/Fragment$SavedState$1;

    invoke-direct {v0}, Landroid/app/Fragment$SavedState$1;-><init>()V

    sput-object v0, Landroid/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 490
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    .line 492
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 494
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 497
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 506
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 507
    return-void
.end method
