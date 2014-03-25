.class Lcom/android/internal/telephony/SpnHelper$MncEntry;
.super Ljava/lang/Object;
.source "SpnHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SpnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MncEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/SpnHelper$MncEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mccmnc:I

.field res:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "mccmnc"
    .parameter "res"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/internal/telephony/SpnHelper$MncEntry;->mccmnc:I

    .line 17
    iput p2, p0, Lcom/android/internal/telephony/SpnHelper$MncEntry;->res:I

    .line 18
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/SpnHelper$MncEntry;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/internal/telephony/SpnHelper$MncEntry;->mccmnc:I

    iget v1, p1, Lcom/android/internal/telephony/SpnHelper$MncEntry;->mccmnc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SpnHelper$MncEntry;->compareTo(Lcom/android/internal/telephony/SpnHelper$MncEntry;)I

    move-result v0

    return v0
.end method
