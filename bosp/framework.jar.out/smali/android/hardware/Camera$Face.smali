.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1368
    iput-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1377
    iput-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1386
    iput-object v1, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1306
    return-void
.end method
