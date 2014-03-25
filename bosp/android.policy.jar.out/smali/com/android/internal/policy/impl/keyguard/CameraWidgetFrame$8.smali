.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

.field final synthetic val$offscreen:[Landroid/graphics/Bitmap;

.field final synthetic val$thrown:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;[Ljava/lang/Throwable;[Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$thrown:[Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$offscreen:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$thrown:[Ljava/lang/Throwable;

    aget-object v2, v2, v5

    if-nez v2, :cond_0

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$offscreen:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$thrown:[Ljava/lang/Throwable;

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    .line 251
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, t:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$thrown:[Ljava/lang/Throwable;

    aput-object v1, v2, v5

    goto :goto_0

    .line 243
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error rendering camera widget"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->val$thrown:[Ljava/lang/Throwable;

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->removeAllViews()V

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1400(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1500(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, genericView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 248
    .end local v0           #genericView:Landroid/view/View;
    :catch_1
    move-exception v1

    .line 249
    .restart local v1       #t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error inflating generic camera widget"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
