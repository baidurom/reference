.class public Lyi/support/v1/utils/ViewCapturer;
.super Ljava/lang/Object;
.source "ViewCapturer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static snapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 13
    .local v2, isDrawingCacheEnabled:Z
    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 19
    .local v3, snapshot:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 21
    :try_start_0
    const-class v4, Landroid/view/View;

    const-string v5, "mUnscaledDrawingCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 22
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 23
    .local v0, accessible:Z
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0           #accessible:Z
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 29
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 32
    :cond_1
    return-object v3

    .line 26
    :catch_0
    move-exception v4

    goto :goto_0
.end method
