.class public Lcom/mediatek/banyan/widget/MTKImageView$GifThread;
.super Ljava/lang/Object;
.source "MTKImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/banyan/widget/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GifThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/banyan/widget/MTKImageView;


# direct methods
.method protected constructor <init>(Lcom/mediatek/banyan/widget/MTKImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    #calls: Lcom/mediatek/banyan/widget/MTKImageView;->gifAnimation()V
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView;->access$400(Lcom/mediatek/banyan/widget/MTKImageView;)V

    .line 654
    return-void
.end method
