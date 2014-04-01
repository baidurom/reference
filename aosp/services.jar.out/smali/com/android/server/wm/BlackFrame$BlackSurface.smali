.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final left:I

.field final surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIII)V
    .locals 9
    .parameter
    .parameter "session"
    .parameter "layer"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 38
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 39
    sub-int v5, p6, p4

    .line 40
    .local v5, w:I
    sub-int v6, p7, p5

    .line 41
    .local v6, h:I
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "BlackSurface"

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    .line 43
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  BLACK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": CREATE layer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0, p3}, Landroid/view/Surface;->setLayer(I)V

    .line 48
    return-void
.end method


# virtual methods
.method clearMatrix()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 72
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "matrix"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v4, v4, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v4, v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 59
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Black Surface @ ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") matrix=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method
