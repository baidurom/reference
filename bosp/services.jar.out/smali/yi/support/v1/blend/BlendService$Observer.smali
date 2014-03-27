.class public abstract Lyi/support/v1/blend/BlendService$Observer;
.super Ljava/lang/Object;
.source "BlendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/blend/BlendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lyi/support/v1/blend/BlendService$Observer;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x3f80

    return v0
.end method

.method public abstract onBlendFinished(Landroid/graphics/Bitmap;)V
.end method
