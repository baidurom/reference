.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictModeFlash"


# instance fields
.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "display"
    .parameter "session"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 40
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const-string v2, "StrictModeFlash"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayerStack(I)V

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v9, v9}, Landroid/view/Surface;->setPosition(II)V

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    .line 50
    iput-boolean v8, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 51
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v7

    .line 43
    .local v7, e:Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private drawIfNeeded()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/high16 v7, -0x1

    const/4 v6, 0x0

    .line 54
    iget-boolean v4, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 58
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 59
    .local v3, dw:I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 61
    .local v1, dh:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .local v2, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 64
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_1
    if-eqz v0, :cond_0

    .line 73
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 74
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 77
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v3, -0x14

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 80
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 82
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x14

    invoke-direct {v4, v6, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 83
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v4

    goto :goto_1

    .line 65
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 107
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    goto :goto_0
.end method
