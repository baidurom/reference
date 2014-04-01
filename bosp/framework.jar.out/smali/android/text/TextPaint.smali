.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public imageBackgroud:Z

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 36
    iput-boolean v1, p0, Landroid/text/TextPaint;->imageBackgroud:Z

    .line 41
    iput v1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 36
    iput-boolean v1, p0, Landroid/text/TextPaint;->imageBackgroud:Z

    .line 41
    iput v1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 36
    iput-boolean v1, p0, Landroid/text/TextPaint;->imageBackgroud:Z

    .line 41
    iput v1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 58
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 67
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 70
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 71
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 72
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 73
    iget-boolean v0, p1, Landroid/text/TextPaint;->imageBackgroud:Z

    iput-boolean v0, p0, Landroid/text/TextPaint;->imageBackgroud:Z

    .line 74
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 75
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 84
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 85
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 86
    return-void
.end method
