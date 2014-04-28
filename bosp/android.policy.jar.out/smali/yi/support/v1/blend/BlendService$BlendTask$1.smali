.class Lyi/support/v1/blend/BlendService$BlendTask$1;
.super Ljava/lang/Object;
.source "BlendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/blend/BlendService$BlendTask;->notifyObserver(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/blend/BlendService$BlendTask;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lyi/support/v1/blend/BlendService$BlendTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lyi/support/v1/blend/BlendService$BlendTask$1;->this$0:Lyi/support/v1/blend/BlendService$BlendTask;

    iput-object p2, p0, Lyi/support/v1/blend/BlendService$BlendTask$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask$1;->this$0:Lyi/support/v1/blend/BlendService$BlendTask;

    #getter for: Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;
    invoke-static {v0}, Lyi/support/v1/blend/BlendService$BlendTask;->access$100(Lyi/support/v1/blend/BlendService$BlendTask;)Lyi/support/v1/blend/BlendService$Observer;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/blend/BlendService$BlendTask$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lyi/support/v1/blend/BlendService$Observer;->onBlendFinished(Landroid/graphics/Bitmap;)V

    .line 116
    return-void
.end method
