.class public Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;
.super Landroid/view/TextureView;
.source "TemplateTextureView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setFeature()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setFeature()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setFeature()V

    .line 22
    return-void
.end method

.method private setFeature()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setOpaque(Z)V

    .line 26
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 27
    return-void
.end method
