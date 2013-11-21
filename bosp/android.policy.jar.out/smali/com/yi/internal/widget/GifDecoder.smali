.class public Lcom/yi/internal/widget/GifDecoder;
.super Ljava/lang/Thread;
.source "GifDecoder.java"


# static fields
.field private static final MAX_FRAME_WAIT:I = 0x5

.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISHED:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_OUT_MEMORY:I = 0x3

.field public static final STATUS_PARSING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private act:[I

.field private action:Lcom/yi/internal/widget/GifAction;

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/yi/internal/widget/GifFrame;

.field private delay:I

.field private dispose:I

.field private firstDecodeFlag:Z

.field private frameCount:I

.field private frameTotalCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/yi/internal/widget/GifFrame;

.field private ih:I

.field private image:[Landroid/graphics/Bitmap;

.field public imgHeight:I

.field public imgWidth:I

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isRun:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private mContext:Landroid/content/Context;

.field private mExternalHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private readNotify:Z

.field private restartNotify:Z

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/yi/internal/widget/GifAction;Landroid/content/Context;)V
    .locals 4
    .parameter "uri"
    .parameter "act"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    .line 46
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    .line 48
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    .line 60
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 64
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    .line 72
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->loopCount:I

    .line 82
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 84
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    .line 87
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 95
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    .line 107
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isShow:Z

    .line 109
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    .line 111
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 113
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    .line 115
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    .line 117
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    .line 125
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    .line 127
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 152
    iput-object p1, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    .line 153
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 155
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->initData()V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/yi/internal/widget/GifAction;Landroid/content/Context;)V
    .locals 4
    .parameter "is"
    .parameter "act"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    .line 46
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    .line 48
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    .line 60
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 64
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    .line 72
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->loopCount:I

    .line 82
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 84
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    .line 87
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 95
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    .line 107
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isShow:Z

    .line 109
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    .line 111
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 113
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    .line 115
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    .line 117
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    .line 125
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    .line 127
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 145
    iput-object p1, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 146
    iput-object p2, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 147
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->initData()V

    .line 149
    return-void
.end method

.method public constructor <init>([BLcom/yi/internal/widget/GifAction;)V
    .locals 4
    .parameter "data"
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    .line 46
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    .line 48
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    .line 60
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 64
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    .line 72
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->loopCount:I

    .line 82
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 84
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    .line 87
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 95
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    .line 107
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isShow:Z

    .line 109
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    .line 111
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 113
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    .line 115
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    .line 117
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    .line 125
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    .line 127
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 139
    iput-object p1, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 140
    iput-object p2, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 141
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->initData()V

    .line 142
    return-void
.end method

.method private decodeImageData()V
    .locals 29

    .prologue
    .line 868
    const/4 v2, -0x1

    .line 869
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yi/internal/widget/GifDecoder;->iw:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yi/internal/widget/GifDecoder;->ih:I

    move/from16 v28, v0

    mul-int v17, v27, v28

    .line 871
    .local v17, npix:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/GifDecoder;->getPixels(I)[B

    move-result-object v22

    .line 872
    .local v22, pixels:[B
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->getSuffix()[B

    move-result-object v24

    .line 873
    .local v24, suffix:[B
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->getPixelStack()[B

    move-result-object v21

    .line 874
    .local v21, pixelStack:[B
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->getPrefix()[S

    move-result-object v23

    .line 875
    .local v23, prefix:[S
    if-nez v22, :cond_1

    .line 876
    const/16 v27, 0x3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 977
    :cond_0
    return-void

    .line 879
    :cond_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 880
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/GifDecoder;->allocatePixels(I)V

    .line 888
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v11

    .line 889
    .local v11, data_size:I
    const/16 v27, 0x1

    shl-int v6, v27, v11

    .line 890
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 891
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 892
    .local v3, available:I
    move/from16 v18, v2

    .line 893
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 894
    .local v9, code_size:I
    const/16 v27, 0x1

    shl-int v27, v27, v9

    add-int/lit8 v8, v27, -0x1

    .line 895
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 896
    const/16 v27, 0x0

    aput-short v27, v23, v7

    .line 897
    int-to-byte v0, v7

    move/from16 v27, v0

    aput-byte v27, v24, v7

    .line 895
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 901
    :cond_3
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v25, v4

    .local v25, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 902
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v26, v25

    .end local v25           #top:I
    .local v26, top:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_f

    .line 903
    if-nez v26, :cond_10

    .line 904
    if-ge v5, v9, :cond_6

    .line 906
    if-nez v10, :cond_5

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->readBlock()I

    move-result v10

    .line 909
    if-gtz v10, :cond_4

    move/from16 v25, v26

    .line 974
    .end local v26           #top:I
    .restart local v25       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_0

    .line 975
    const/16 v27, 0x0

    aput-byte v27, v22, v15

    .line 974
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 912
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_4
    const/4 v4, 0x0

    .line 914
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    move-object/from16 v27, v0

    aget-byte v27, v27, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int v27, v27, v5

    add-int v12, v12, v27

    .line 915
    add-int/lit8 v5, v5, 0x8

    .line 916
    add-int/lit8 v4, v4, 0x1

    .line 917
    add-int/lit8 v10, v10, -0x1

    .line 918
    goto :goto_1

    .line 921
    :cond_6
    and-int v7, v12, v8

    .line 922
    shr-int/2addr v12, v9

    .line 923
    sub-int/2addr v5, v9

    .line 925
    if-gt v7, v3, :cond_f

    if-ne v7, v13, :cond_7

    move/from16 v25, v26

    .line 926
    .end local v26           #top:I
    .restart local v25       #top:I
    goto :goto_2

    .line 928
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_7
    if-ne v7, v6, :cond_8

    .line 930
    add-int/lit8 v9, v11, 0x1

    .line 931
    const/16 v27, 0x1

    shl-int v27, v27, v9

    add-int/lit8 v8, v27, -0x1

    .line 932
    add-int/lit8 v3, v6, 0x2

    .line 933
    move/from16 v18, v2

    .line 934
    goto :goto_1

    .line 936
    :cond_8
    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 937
    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    aget-byte v27, v24, v7

    aput-byte v27, v21, v26

    .line 938
    move/from16 v18, v7

    .line 939
    move v14, v7

    move/from16 v26, v25

    .line 940
    .end local v25           #top:I
    .restart local v26       #top:I
    goto :goto_1

    .line 942
    :cond_9
    move/from16 v16, v7

    .line 943
    .local v16, in_code:I
    if-ne v7, v3, :cond_a

    .line 944
    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    int-to-byte v0, v14

    move/from16 v27, v0

    aput-byte v27, v21, v26

    .line 945
    move/from16 v7, v18

    move/from16 v26, v25

    .line 947
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_a
    :goto_4
    if-le v7, v6, :cond_b

    .line 948
    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    aget-byte v27, v24, v7

    aput-byte v27, v21, v26

    .line 949
    aget-short v7, v23, v7

    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto :goto_4

    .line 951
    :cond_b
    aget-byte v27, v24, v7

    move/from16 v0, v27

    and-int/lit16 v14, v0, 0xff

    .line 953
    const/16 v27, 0x1000

    move/from16 v0, v27

    if-lt v3, v0, :cond_c

    move/from16 v25, v26

    .line 954
    .end local v26           #top:I
    .restart local v25       #top:I
    goto/16 :goto_2

    .line 956
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_c
    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    int-to-byte v0, v14

    move/from16 v27, v0

    aput-byte v27, v21, v26

    .line 957
    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v23, v3

    .line 958
    int-to-byte v0, v14

    move/from16 v27, v0

    aput-byte v27, v24, v3

    .line 959
    add-int/lit8 v3, v3, 0x1

    .line 960
    and-int v27, v3, v8

    if-nez v27, :cond_d

    const/16 v27, 0x1000

    move/from16 v0, v27

    if-ge v3, v0, :cond_d

    .line 961
    add-int/lit8 v9, v9, 0x1

    .line 962
    add-int/2addr v8, v3

    .line 964
    :cond_d
    move/from16 v18, v16

    .line 968
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v25, v25, -0x1

    .line 969
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 970
    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    aget-byte v27, v21, v25

    aput-byte v27, v22, v20

    .line 972
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto/16 :goto_1

    .end local v26           #top:I
    .restart local v25       #top:I
    :cond_e
    move/from16 v19, v20

    .end local v20           #pi:I
    .restart local v19       #pi:I
    goto :goto_6

    .end local v19           #pi:I
    .end local v25           #top:I
    .restart local v20       #pi:I
    .restart local v26       #top:I
    :cond_f
    move/from16 v25, v26

    .end local v26           #top:I
    .restart local v25       #top:I
    goto/16 :goto_2

    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_10
    move/from16 v25, v26

    .end local v26           #top:I
    .restart local v25       #top:I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 536
    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 537
    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    .line 538
    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    .line 539
    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 540
    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->gct:[I

    .line 541
    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->lct:[I

    .line 542
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 159
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->prefix:[S

    .line 160
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->suffix:[B

    .line 161
    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->pixelStack:[B

    .line 162
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 551
    :goto_0
    return v0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    .line 608
    const/4 v2, 0x0

    .line 609
    .local v2, n:I
    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 614
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 622
    :cond_0
    :goto_1
    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 623
    const/4 v3, 0x1

    iput v3, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 626
    .end local v0           #count:I
    :cond_1
    return v2

    .line 617
    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 557
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 14
    .parameter "ncolors"

    .prologue
    .line 644
    mul-int/lit8 v9, p1, 0x3

    .line 645
    .local v9, nbytes:I
    const/4 v11, 0x0

    .line 646
    .local v11, tab:[I
    new-array v1, v9, [B

    .line 647
    .local v1, c:[B
    const/4 v8, 0x0

    .line 649
    .local v8, n:I
    :try_start_0
    iget-object v12, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 653
    :goto_0
    if-ge v8, v9, :cond_1

    .line 654
    const/4 v12, 0x1

    iput v12, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 666
    :cond_0
    return-object v11

    .line 650
    :catch_0
    move-exception v2

    .line 651
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 657
    const/4 v4, 0x0

    .line 658
    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    move v5, v4

    .line 659
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 660
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 661
    .local v10, r:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 662
    .local v3, g:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 663
    .local v0, b:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6           #j:I
    .restart local v7       #j:I
    move v5, v4

    .line 664
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method private readContents()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 671
    const/4 v2, 0x0

    .line 672
    .local v2, done:Z
    :cond_0
    iget-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v5

    if-nez v5, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    .line 674
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 731
    const/4 v5, 0x1

    iput v5, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 733
    :goto_0
    :sswitch_0
    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-ne v5, v9, :cond_0

    .line 736
    .end local v1           #code:I
    :cond_1
    return-void

    .line 676
    .restart local v1       #code:I
    :sswitch_1
    monitor-enter p0

    .line 677
    :try_start_0
    iget-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    if-lt v5, v9, :cond_3

    .line 678
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 679
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    .line 681
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    .line 683
    const-wide/16 v5, 0x1e

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 684
    :catch_0
    move-exception v5

    goto :goto_1

    .line 687
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 688
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readImage()V

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 691
    :sswitch_2
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    .line 692
    sparse-switch v1, :sswitch_data_1

    .line 709
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->skip()V

    goto :goto_0

    .line 694
    :sswitch_3
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 697
    :sswitch_4
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readBlock()I

    .line 698
    const-string v0, ""

    .line 699
    .local v0, app:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v5, 0xb

    if-ge v4, v5, :cond_5

    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    aget-byte v6, v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 702
    :cond_5
    const-string v5, "NETSCAPE2.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 703
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 705
    :cond_6
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->skip()V

    goto :goto_0

    .line 713
    .end local v0           #app:Ljava/lang/String;
    .end local v4           #i:I
    :sswitch_5
    const/4 v2, 0x1

    .line 714
    iput v8, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    .line 716
    :try_start_4
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_8

    .line 717
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 718
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 726
    :cond_7
    :goto_3
    iput-boolean v8, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    goto/16 :goto_0

    .line 719
    :cond_8
    :try_start_5
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_7

    .line 720
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 723
    :catch_1
    move-exception v3

    .line 724
    .local v3, ept:Ljava/lang/Exception;
    const-string v5, "GifDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error to gif play: FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 692
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 739
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    .line 740
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v0

    .line 741
    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 742
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 743
    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 745
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    .line 746
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 747
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->transIndex:I

    .line 748
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    .line 749
    return-void

    .line 745
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 764
    const-string v1, ""

    .line 766
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 773
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 774
    const/4 v2, 0x1

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 782
    :cond_1
    :goto_2
    return-void

    .line 777
    :cond_2
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readLSD()V

    .line 778
    iget-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/yi/internal/widget/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->gct:[I

    .line 780
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->gct:[I

    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->bgColor:I

    goto :goto_2

    .line 767
    .end local v0           #i:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readImage()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 785
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->ix:I

    .line 786
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->iy:I

    .line 787
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->iw:I

    .line 788
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->ih:I

    .line 789
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v0

    .line 790
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->lctFlag:Z

    .line 791
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->interlace:Z

    .line 794
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->lctSize:I

    .line 795
    iget-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 796
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->lctSize:I

    invoke-direct {p0, v2}, Lcom/yi/internal/widget/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->lct:[I

    .line 797
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    .line 804
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 805
    .local v1, save:I
    iget-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 807
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 810
    iput v3, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 812
    :cond_2
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 851
    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    .line 790
    goto :goto_0

    :cond_5
    move v2, v4

    .line 791
    goto :goto_1

    .line 799
    :cond_6
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    .line 800
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 801
    iput v4, p0, Lcom/yi/internal/widget/GifDecoder;->bgColor:I

    goto :goto_2

    .line 815
    .restart local v1       #save:I
    :cond_7
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->decodeImageData()V

    .line 816
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-eq v2, v6, :cond_3

    .line 818
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->skip()V

    .line 819
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 822
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    .line 823
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    .line 827
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->setPixels()V

    .line 828
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-eq v2, v6, :cond_3

    .line 838
    iget-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 839
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    iget v4, p0, Lcom/yi/internal/widget/GifDecoder;->transIndex:I

    aput v1, v2, v4

    .line 841
    :cond_8
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->resetFrame()V

    .line 842
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    if-eqz v2, :cond_3

    .line 843
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    iget v4, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    invoke-interface {v2, v3, v4}, Lcom/yi/internal/widget/GifAction;->parseOk(ZI)V

    goto :goto_3
.end method

.method private readLSD()V
    .locals 3

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    .line 856
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    .line 858
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v0

    .line 859
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->gctFlag:Z

    .line 862
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->gctSize:I

    .line 863
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->bgIndex:I

    .line 864
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixelAspect:I

    .line 865
    return-void

    .line 859
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readBlock()I

    .line 754
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 756
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 757
    .local v0, b1:I
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 758
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->loopCount:I

    .line 760
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 566
    :goto_0
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 567
    :goto_1
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    if-nez v0, :cond_0

    .line 569
    :try_start_0
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 570
    :catch_0
    move-exception v0

    goto :goto_1

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->init()V

    .line 574
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readHeader()V

    .line 575
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readContents()V

    .line 577
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-ne v0, v5, :cond_3

    .line 594
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    if-eqz v0, :cond_2

    .line 595
    const/4 v0, 0x2

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 596
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    invoke-interface {v0, v4, v2}, Lcom/yi/internal/widget/GifAction;->parseOk(ZI)V

    .line 603
    :cond_2
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    return v0

    .line 579
    :cond_3
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    if-gez v0, :cond_4

    .line 580
    iput v3, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 581
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    invoke-interface {v0, v4, v2}, Lcom/yi/internal/widget/GifAction;->parseOk(ZI)V

    goto :goto_0

    .line 582
    :cond_4
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    if-gt v0, v5, :cond_5

    .line 583
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 584
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    invoke-interface {v0, v3, v2}, Lcom/yi/internal/widget/GifAction;->parseOk(ZI)V

    goto :goto_2

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    invoke-interface {v0, v3, v2}, Lcom/yi/internal/widget/GifAction;->parseOk(ZI)V

    goto :goto_0
.end method

.method private resetFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 630
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    .line 631
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->ix:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lrx:I

    .line 632
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->iy:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lry:I

    .line 633
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->iw:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lrw:I

    .line 634
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->ih:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lrh:I

    .line 635
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 636
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/yi/internal/widget/GifDecoder;->lastBgColor:I

    .line 637
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->dispose:I

    .line 638
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    .line 639
    iput v2, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->lct:[I

    .line 641
    return-void
.end method

.method private setPixels()V
    .locals 28

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 427
    .local v3, dest:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    if-lez v2, :cond_4

    .line 428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    if-ne v2, v4, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v21, v2, -0x2

    .line 431
    .local v21, n:I
    if-lez v21, :cond_2

    .line 432
    add-int/lit8 v2, v21, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yi/internal/widget/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 437
    .end local v21           #n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 440
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->lastDispose:I

    if-ne v2, v4, :cond_4

    .line 442
    const/4 v10, 0x0

    .line 443
    .local v10, c:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/yi/internal/widget/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 444
    move-object/from16 v0, p0

    iget v10, v0, Lcom/yi/internal/widget/GifDecoder;->lastBgColor:I

    .line 446
    :cond_1
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->lrh:I

    if-ge v15, v2, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->lry:I

    add-int/2addr v2, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->lrx:I

    add-int v22, v2, v4

    .line 448
    .local v22, n1:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->lrw:I

    add-int v23, v22, v2

    .line 449
    .local v23, n2:I
    move/from16 v19, v22

    .local v19, k:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 450
    aput v10, v3, v19

    .line 449
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 434
    .end local v10           #c:I
    .end local v15           #i:I
    .end local v19           #k:I
    .end local v22           #n1:I
    .end local v23           #n2:I
    .restart local v21       #n:I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 446
    .end local v21           #n:I
    .restart local v10       #c:I
    .restart local v15       #i:I
    .restart local v19       #k:I
    .restart local v22       #n1:I
    .restart local v23       #n2:I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 458
    .end local v10           #c:I
    .end local v15           #i:I
    .end local v19           #k:I
    .end local v22           #n1:I
    .end local v23           #n2:I
    :cond_4
    const/16 v24, 0x1

    .line 459
    .local v24, pass:I
    const/16 v17, 0x8

    .line 460
    .local v17, inc:I
    const/16 v16, 0x0

    .line 461
    .local v16, iline:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->ih:I

    if-ge v15, v2, :cond_a

    .line 462
    move/from16 v20, v15

    .line 463
    .local v20, line:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/yi/internal/widget/GifDecoder;->interlace:Z

    if-eqz v2, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->ih:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_5

    .line 465
    add-int/lit8 v24, v24, 0x1

    .line 466
    packed-switch v24, :pswitch_data_0

    .line 480
    :cond_5
    :goto_4
    move/from16 v20, v16

    .line 481
    add-int v16, v16, v17

    .line 483
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->iy:I

    add-int v20, v20, v2

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_9

    .line 485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    mul-int v19, v20, v2

    .line 486
    .restart local v19       #k:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->ix:I

    add-int v12, v19, v2

    .line 487
    .local v12, dx:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 488
    .local v11, dlim:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    add-int v2, v2, v19

    if-ge v2, v11, :cond_7

    .line 489
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    add-int v11, v19, v2

    .line 491
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yi/internal/widget/GifDecoder;->iw:I

    mul-int v26, v15, v2

    .line 493
    .local v26, sx:I
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifDecoder;->getPixels()[B

    move-result-object v25

    .line 494
    .local v25, pixels:[B
    if-nez v25, :cond_e

    .line 495
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yi/internal/widget/GifDecoder;->status:I

    .line 533
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v19           #k:I
    .end local v20           #line:I
    .end local v25           #pixels:[B
    .end local v26           #sx:I
    :goto_5
    return-void

    .line 468
    .restart local v20       #line:I
    :pswitch_0
    const/16 v16, 0x4

    .line 469
    goto :goto_4

    .line 471
    :pswitch_1
    const/16 v16, 0x2

    .line 472
    const/16 v17, 0x4

    .line 473
    goto :goto_4

    .line 475
    :pswitch_2
    const/16 v16, 0x1

    .line 476
    const/16 v17, 0x2

    goto :goto_4

    .line 498
    .restart local v11       #dlim:I
    .restart local v12       #dx:I
    .restart local v19       #k:I
    .restart local v25       #pixels:[B
    .local v27, sx:I
    :goto_6
    if-ge v12, v11, :cond_9

    .line 500
    add-int/lit8 v26, v27, 0x1

    .end local v27           #sx:I
    .restart local v26       #sx:I
    aget-byte v2, v25, v27

    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    .line 501
    .local v18, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    aget v10, v2, v18

    .line 502
    .restart local v10       #c:I
    if-eqz v10, :cond_8

    .line 503
    aput v10, v3, v12

    .line 505
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v27, v26

    .line 506
    .end local v26           #sx:I
    .restart local v27       #sx:I
    goto :goto_6

    .line 461
    .end local v10           #c:I
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v18           #index:I
    .end local v19           #k:I
    .end local v25           #pixels:[B
    .end local v27           #sx:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 510
    .end local v20           #line:I
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x3

    aget-object v2, v2, v4

    if-nez v2, :cond_b

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 514
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yi/internal/widget/GifDecoder;->imgWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/yi/internal/widget/GifDecoder;->imgHeight:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    if-nez v2, :cond_c

    .line 516
    new-instance v2, Lcom/yi/internal/widget/GifFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    invoke-direct {v2, v4, v5, v6}, Lcom/yi/internal/widget/GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 529
    :catch_0
    move-exception v13

    .line 530
    .local v13, eMem:Ljava/lang/OutOfMemoryError;
    const-string v2, "GifDecoder"

    const-string v4, "setPixels createBitmap out of memory error!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yi/internal/widget/GifDecoder;->status:I

    goto/16 :goto_5

    .line 521
    .end local v13           #eMem:Ljava/lang/OutOfMemoryError;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 522
    .local v14, f:Lcom/yi/internal/widget/GifFrame;
    :goto_7
    iget-object v2, v14, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    if-eqz v2, :cond_d

    .line 523
    iget-object v14, v14, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    goto :goto_7

    .line 525
    :cond_d
    new-instance v2, Lcom/yi/internal/widget/GifFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yi/internal/widget/GifDecoder;->frameCount:I

    invoke-direct {v2, v4, v5, v6}, Lcom/yi/internal/widget/GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object v2, v14, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .end local v14           #f:Lcom/yi/internal/widget/GifFrame;
    .restart local v11       #dlim:I
    .restart local v12       #dx:I
    .restart local v19       #k:I
    .restart local v20       #line:I
    .restart local v25       #pixels:[B
    .restart local v26       #sx:I
    :cond_e
    move/from16 v27, v26

    .end local v26           #sx:I
    .restart local v27       #sx:I
    goto/16 :goto_6

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readBlock()I

    .line 983
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    :cond_1
    return-void
.end method


# virtual methods
.method public allocatePixels(I)V
    .locals 4
    .parameter "npix"

    .prologue
    const/4 v3, 0x0

    .line 289
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    .line 291
    :try_start_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, eMem:Ljava/lang/OutOfMemoryError;
    const-string v1, "GifDecoder"

    const-string v2, "allocatePixels: new pixels buffer out of memory!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    goto :goto_0
.end method

.method public free()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 220
    .local v0, gf:Lcom/yi/internal/widget/GifFrame;
    :goto_0
    if-eqz v0, :cond_0

    .line 225
    iput-object v3, v0, Lcom/yi/internal/widget/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 226
    const/4 v0, 0x0

    .line 227
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    iget-object v2, v2, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 228
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 237
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    iget-object v2, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    .line 237
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    :cond_3
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    .line 244
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->mContext:Landroid/content/Context;

    .line 245
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 246
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    .line 247
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 248
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->action:Lcom/yi/internal/widget/GifAction;

    .line 249
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    .line 250
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->gct:[I

    .line 251
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->lct:[I

    .line 252
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->act:[I

    .line 253
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->block:[B

    .line 254
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->prefix:[S

    .line 255
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->suffix:[B

    .line 256
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->pixelStack:[B

    .line 257
    iput-object v3, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    .line 258
    return-void

    .line 233
    .end local v1           #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getCurrentFrame()Lcom/yi/internal/widget/GifFrame;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 313
    const/4 v1, -0x1

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 314
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    if-ge p1, v1, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/yi/internal/widget/GifDecoder;->getFrame(I)Lcom/yi/internal/widget/GifFrame;

    move-result-object v0

    .line 316
    .local v0, f:Lcom/yi/internal/widget/GifFrame;
    if-eqz v0, :cond_0

    .line 317
    iget v1, v0, Lcom/yi/internal/widget/GifFrame;->delay:I

    iput v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    .line 320
    .end local v0           #f:Lcom/yi/internal/widget/GifFrame;
    :cond_0
    iget v1, p0, Lcom/yi/internal/widget/GifDecoder;->delay:I

    return v1
.end method

.method public getDelays()[I
    .locals 4

    .prologue
    .line 325
    iget-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 326
    .local v1, f:Lcom/yi/internal/widget/GifFrame;
    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    new-array v0, v3, [I

    .line 327
    .local v0, d:[I
    const/4 v2, 0x0

    .line 329
    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    if-ge v2, v3, :cond_0

    .line 330
    iget v3, v1, Lcom/yi/internal/widget/GifFrame;->delay:I

    aput v3, v0, v2

    .line 331
    iget-object v1, v1, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-object v0
.end method

.method public getFrame(I)Lcom/yi/internal/widget/GifFrame;
    .locals 2
    .parameter "index"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 366
    .local v0, frame:Lcom/yi/internal/widget/GifFrame;
    const/4 v1, 0x0

    .line 367
    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    .line 368
    if-ne v1, p1, :cond_0

    .line 375
    .end local v0           #frame:Lcom/yi/internal/widget/GifFrame;
    :goto_1
    return-object v0

    .line 371
    .restart local v0       #frame:Lcom/yi/internal/widget/GifFrame;
    :cond_0
    iget-object v0, v0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->frameTotalCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "index"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->image:[Landroid/graphics/Bitmap;

    rem-int/lit8 v1, p1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/widget/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->loopCount:I

    return v0
.end method

.method public getPixelStack()[B
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->pixelStack:[B

    return-object v0
.end method

.method public getPixels()[B
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    return-object v0
.end method

.method public getPixels(I)[B
    .locals 3
    .parameter "npix"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    if-nez v1, :cond_0

    .line 279
    :try_start_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, eMem:Ljava/lang/OutOfMemoryError;
    const-string v1, "GifDecoder"

    const-string v2, "getPixels: new pixels buffer out of memory!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yi/internal/widget/GifDecoder;->pixels:[B

    goto :goto_0
.end method

.method public getPrefix()[S
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->prefix:[S

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    return v0
.end method

.method public getSuffix()[B
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->suffix:[B

    return-object v0
.end method

.method public next()Lcom/yi/internal/widget/GifFrame;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    .line 393
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isShow:Z

    .line 394
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 395
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    .line 419
    :goto_0
    return-object v0

    .line 397
    :cond_0
    monitor-enter p0

    .line 398
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yi/internal/widget/GifDecoder;->readNotify:Z

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget v0, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-nez v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    if-nez v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    .line 407
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    iget-object v0, v0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    if-nez v0, :cond_2

    .line 409
    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->restartNotify:Z

    .line 419
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    iget-object v0, v0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    iget-object v0, v0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    goto :goto_1

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    if-eqz v0, :cond_5

    .line 413
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    iget-object v0, v0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    goto :goto_2
.end method

.method public parseOk()Z
    .locals 2

    .prologue
    .line 308
    const/4 v0, -0x1

    iget v1, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->gifFrame:Lcom/yi/internal/widget/GifFrame;

    iput-object v0, p0, Lcom/yi/internal/widget/GifDecoder;->currentFrame:Lcom/yi/internal/widget/GifFrame;

    .line 385
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 167
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/16 v5, 0xa

    :try_start_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    iput-boolean v8, p0, Lcom/yi/internal/widget/GifDecoder;->firstDecodeFlag:Z

    .line 176
    iput-boolean v8, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    .line 178
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_1
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_4

    .line 196
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readStream()I

    .line 197
    const-string v5, "GifDecoder"

    const-string v6, "finish the gif decoder thread!!  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v5, p0, Lcom/yi/internal/widget/GifDecoder;->status:I

    if-ne v8, v5, :cond_0

    goto :goto_0

    .line 171
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "GifDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GifDecoder Thread: setThreadPriority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 181
    :catch_1
    move-exception v2

    .line 182
    .local v2, ept:Ljava/io/FileNotFoundException;
    const-string v5, "GifDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error to Gif play: FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x0

    .local v3, waitforfileopen:I
    move v4, v3

    .line 184
    .end local v3           #waitforfileopen:I
    .local v4, waitforfileopen:I
    :goto_3
    add-int/lit8 v3, v4, 0x1

    .end local v4           #waitforfileopen:I
    .restart local v3       #waitforfileopen:I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 186
    const-wide/16 v5, 0x12c

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 187
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;

    .line 188
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->in:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v5, :cond_2

    move v4, v3

    .line 192
    .end local v3           #waitforfileopen:I
    .restart local v4       #waitforfileopen:I
    goto :goto_3

    .line 190
    .end local v4           #waitforfileopen:I
    .restart local v3       #waitforfileopen:I
    :catch_2
    move-exception v1

    .line 191
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "GifDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 192
    .end local v3           #waitforfileopen:I
    .restart local v4       #waitforfileopen:I
    goto :goto_3

    .line 201
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ept:Ljava/io/FileNotFoundException;
    .end local v4           #waitforfileopen:I
    :cond_4
    iget-object v5, p0, Lcom/yi/internal/widget/GifDecoder;->gifData:[B

    if-eqz v5, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/yi/internal/widget/GifDecoder;->readByte()I

    goto/16 :goto_0
.end method

.method public stopGifDecoder()V
    .locals 4

    .prologue
    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yi/internal/widget/GifDecoder;->isRun:Z

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifDecoder;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "GifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error recycle:stop GifDecoder thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
