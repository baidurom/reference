.class public Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "MyCursorAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mImageCacheMap:Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 21
    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->mImageCacheMap:Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;

    .line 25
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Landroid/database/Cursor;)V
    .locals 7
    .parameter "iv"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, imageUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->mImageCacheMap:Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;

    invoke-virtual {v4, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 99
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 102
    :cond_2
    if-eqz v2, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 103
    const-string v4, "picdatas"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 104
    .local v3, picdatas:[B
    if-eqz v3, :cond_3

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 105
    :cond_3
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_4
    array-length v4, v3

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, bitMap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 110
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImageData;->resizeImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    const-string v4, "localpic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 112
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->mImageCacheMap:Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;

    invoke-virtual {v4, v2, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/ImgCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :cond_5
    const/4 v1, 0x0

    .line 117
    goto :goto_0

    .line 118
    .end local v0           #bitMap:Landroid/graphics/Bitmap;
    .end local v3           #picdatas:[B
    :cond_6
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 32
    const v7, #id@iqiyi_push_msg_title#t

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 34
    .local v4, title:Landroid/widget/TextView;
    const v7, #id@iqiyi_push_msg_content#t

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, content:Landroid/widget/TextView;
    const v7, #id@iqiyi_push_msg_image#t

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 37
    .local v3, pushImg:Landroid/widget/ImageView;
    const-string v7, "msgtitle"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, titleName:Ljava/lang/String;
    const-string v7, "msgcontent"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, titleContent:Ljava/lang/String;
    const-string v7, "picurl"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, imgUrl:Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 43
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    const-string v7, "localpic"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 45
    const v7, #drawable@baidu_keyguard_slide_iqiyi_edu#t

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 57
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 59
    return-void

    .line 47
    .end local v1           #id:I
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->loadImage(Landroid/widget/ImageView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_slide_iqiyi_list_item#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
