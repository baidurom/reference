.class Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentConsistency"
.end annotation


# instance fields
.field mContentHashCode:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->mContentHashCode:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 271
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->check(Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->isSame(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;)Z

    move-result v0

    return v0
.end method

.method private check(Landroid/view/ViewGroup;)Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;
    .locals 3
    .parameter "view"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->mContentHashCode:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->mContentHashCode:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0           #i:I
    :cond_0
    return-object p0
.end method

.method private isSame(Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;)Z
    .locals 2
    .parameter "consistency"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->mContentHashCode:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lyi/support/v1/menu/HybridMenuPanel$ContentConsistency;->mContentHashCode:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
