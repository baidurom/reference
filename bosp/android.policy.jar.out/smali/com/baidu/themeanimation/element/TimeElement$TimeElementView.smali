.class public Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
.super Landroid/widget/LinearLayout;
.source "TimeElement.java"

# interfaces
.implements Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/TimeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeElementView"
.end annotation


# instance fields
.field private mHour:I

.field private mMinute:I

.field private mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/TimeElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/TimeElement;Lcom/baidu/themeanimation/element/TimeElement;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "timeElement"
    .parameter "context"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    .line 91
    invoke-direct {p0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object p2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->setOrientation(I)V

    .line 97
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 98
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 99
    iget v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 100
    iget v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 103
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 104
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    rem-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 105
    const/16 v1, 0x3a

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 106
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 107
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    rem-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->addView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    .line 111
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/TimeElement;->setOnTimeTick(Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    return-void
.end method

.method private createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter "digit"
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    .line 181
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, srcPath:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-object v1
.end method

.method private getFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TimeElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, filename:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 166
    .local v0, dotIndex:I
    if-ltz p1, :cond_1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_1

    .line 167
    if-lez v0, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    :goto_0
    return-object v1

    .line 171
    :cond_1
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_0

    .line 172
    if-lez v0, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateLayoutParams()V
    .locals 5

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, width:I
    const/4 v0, 0x0

    .line 117
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 119
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 120
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 121
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4, v3}, Lcom/baidu/themeanimation/element/TimeElement;->setRealW(I)V

    .line 126
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setRealH(I)V

    .line 127
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/TimeElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->refreshTime()V

    .line 192
    return-void
.end method

.method public refreshTime()V
    .locals 6

    .prologue
    .line 131
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 132
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 133
    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 134
    .local v0, hour:I
    iget v2, v3, Landroid/text/format/Time;->minute:I

    .line 137
    .local v2, minute:I
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    if-eq v4, v0, :cond_2

    .line 138
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    div-int/lit8 v4, v4, 0xa

    div-int/lit8 v5, v0, 0xa

    if-eq v4, v5, :cond_0

    .line 139
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    div-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 142
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    rem-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v0, 0xa

    if-eq v4, v5, :cond_1

    .line 143
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 144
    .restart local v1       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    rem-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 146
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_1
    iput v0, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 149
    :cond_2
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    if-eq v4, v2, :cond_5

    .line 150
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    div-int/lit8 v4, v4, 0xa

    div-int/lit8 v5, v2, 0xa

    if-eq v4, v5, :cond_3

    .line 151
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .restart local v1       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    div-int/lit8 v5, v2, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 154
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_3
    iget v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    rem-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v2, 0xa

    if-eq v4, v5, :cond_4

    .line 155
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .restart local v1       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v4

    rem-int/lit8 v5, v2, 0xa

    invoke-direct {p0, v5}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 158
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_4
    iput v2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 160
    :cond_5
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    .line 161
    return-void
.end method
