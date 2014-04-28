.class Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->this$1:Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->val$elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->val$elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setMask(Landroid/graphics/Bitmap;)V

    .line 451
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;->val$elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->requestLayout()V

    .line 452
    return-void
.end method
