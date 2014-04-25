.class Lcom/android/phone/PLMNListPreference$SIMCapability;
.super Ljava/lang/Object;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCapability"
.end annotation


# instance fields
.field firstFormat:I

.field firstIndex:I

.field lastFormat:I

.field lastIndex:I

.field final synthetic this$0:Lcom/android/phone/PLMNListPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/PLMNListPreference;IIII)V
    .locals 0
    .parameter
    .parameter "startIndex"
    .parameter "stopIndex"
    .parameter "startFormat"
    .parameter "stopFormat"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->this$0:Lcom/android/phone/PLMNListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput p2, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->firstIndex:I

    .line 580
    iput p3, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastIndex:I

    .line 581
    iput p4, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->firstFormat:I

    .line 582
    iput p5, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastFormat:I

    .line 583
    return-void
.end method


# virtual methods
.method public setCapability([I)V
    .locals 2
    .parameter "r"

    .prologue
    .line 586
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->firstIndex:I

    .line 591
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastIndex:I

    .line 592
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->firstFormat:I

    .line 593
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastFormat:I

    goto :goto_0
.end method
