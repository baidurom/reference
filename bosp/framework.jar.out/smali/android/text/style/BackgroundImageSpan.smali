.class public Landroid/text/style/BackgroundImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BackgroundImageSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/BackgroundImageSpan;->mWidth:I

    .line 68
    iput p1, p0, Landroid/text/style/BackgroundImageSpan;->mImageId:I

    .line 69
    iput-object p2, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/BackgroundImageSpan;->mWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BackgroundImageSpan;->mImageId:I

    .line 76
    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 6
    .parameter "text"
    .parameter "context"

    .prologue
    .line 130
    instance-of v3, p0, Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_1

    .line 144
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 134
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 136
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/BackgroundImageSpan;

    invoke-virtual {v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/BackgroundImageSpan;

    .line 137
    .local v2, spans:[Landroid/text/style/BackgroundImageSpan;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 142
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Landroid/text/style/BackgroundImageSpan;->convertToDrawable(Landroid/content/Context;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertToDrawable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/text/style/BackgroundImageSpan;->mImageId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "width"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "should call convertToDrawable() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    int-to-float v1, p4

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget-object v1, p0, Landroid/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p6, p4

    invoke-virtual {v1, v3, v3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 150
    iget v2, p0, Landroid/text/style/BackgroundImageSpan;->mWidth:I

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Landroid/text/style/BackgroundImageSpan;->draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V

    .line 154
    int-to-float v5, p7

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 155
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 160
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 161
    .local v0, size:F
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 164
    :cond_0
    float-to-int v1, v0

    iput v1, p0, Landroid/text/style/BackgroundImageSpan;->mWidth:I

    .line 165
    iget v1, p0, Landroid/text/style/BackgroundImageSpan;->mWidth:I

    return v1
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x17

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter "tp"

    .prologue
    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 111
    iget v0, p0, Landroid/text/style/BackgroundImageSpan;->mImageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
