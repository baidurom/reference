.class final Lcom/android/server/power/DisplayPowerState$1;
.super Landroid/util/FloatProperty;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/server/power/DisplayPowerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/Float;
    .locals 1
    .parameter "object"

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/android/server/power/DisplayPowerState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerState$1;->get(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/server/power/DisplayPowerState;F)V
    .locals 0
    .parameter "object"
    .parameter "value"

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 103
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    check-cast p1, Lcom/android/server/power/DisplayPowerState;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/DisplayPowerState$1;->setValue(Lcom/android/server/power/DisplayPowerState;F)V

    return-void
.end method
