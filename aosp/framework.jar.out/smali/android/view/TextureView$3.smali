.class Landroid/view/TextureView$3;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/TextureView;->destroySurfaceSafely()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Landroid/view/TextureView$3;->this$0:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/view/TextureView$3;->this$0:Landroid/view/TextureView;

    #calls: Landroid/view/TextureView;->destroySurface()V
    invoke-static {v0}, Landroid/view/TextureView;->access$000(Landroid/view/TextureView;)V

    .line 820
    return-void
.end method
