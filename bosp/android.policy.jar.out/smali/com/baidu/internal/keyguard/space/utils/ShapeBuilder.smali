.class public Lcom/baidu/internal/keyguard/space/utils/ShapeBuilder;
.super Ljava/lang/Object;
.source "ShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCubeData([F[F[F[F[F[F[F[FI)[F
    .locals 18
    .parameter "point1"
    .parameter "point2"
    .parameter "point3"
    .parameter "point4"
    .parameter "point5"
    .parameter "point6"
    .parameter "point7"
    .parameter "point8"
    .parameter "elementsPerPoint"

    .prologue
    .line 12
    const/4 v3, 0x0

    .line 13
    .local v3, FRONT:I
    const/4 v5, 0x1

    .line 14
    .local v5, RIGHT:I
    const/4 v1, 0x2

    .line 15
    .local v1, BACK:I
    const/4 v4, 0x3

    .line 16
    .local v4, LEFT:I
    const/4 v6, 0x4

    .line 17
    .local v6, TOP:I
    const/4 v2, 0x5

    .line 19
    .local v2, BOTTOM:I
    mul-int/lit8 v17, p8, 0x6

    mul-int/lit8 v16, v17, 0x6

    .line 20
    .local v16, size:I
    move/from16 v0, v16

    new-array v7, v0, [F

    .line 22
    .local v7, cubeData:[F
    const/4 v8, 0x0

    .local v8, face:I
    :goto_0
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 28
    packed-switch v8, :pswitch_data_0

    .line 61
    move-object/from16 v12, p7

    .line 62
    .local v12, p1:[F
    move-object/from16 v13, p6

    .line 63
    .local v13, p2:[F
    move-object/from16 v14, p3

    .line 64
    .local v14, p3:[F
    move-object/from16 v15, p2

    .line 81
    .local v15, p4:[F
    :goto_1
    mul-int v17, v8, p8

    mul-int/lit8 v10, v17, 0x6

    .line 83
    .local v10, offset:I
    const/4 v9, 0x0

    .local v9, i:I
    move v11, v10

    .end local v10           #offset:I
    .local v11, offset:I
    :goto_2
    move/from16 v0, p8

    if-ge v9, v0, :cond_0

    .line 84
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v12, v9

    aput v17, v7, v11

    .line 83
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_2

    .line 30
    .end local v9           #i:I
    .end local v11           #offset:I
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :pswitch_0
    move-object/from16 v12, p0

    .line 31
    .restart local v12       #p1:[F
    move-object/from16 v13, p1

    .line 32
    .restart local v13       #p2:[F
    move-object/from16 v14, p2

    .line 33
    .restart local v14       #p3:[F
    move-object/from16 v15, p3

    .line 34
    .restart local v15       #p4:[F
    goto :goto_1

    .line 36
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :pswitch_1
    move-object/from16 v12, p1

    .line 37
    .restart local v12       #p1:[F
    move-object/from16 v13, p5

    .line 38
    .restart local v13       #p2:[F
    move-object/from16 v14, p3

    .line 39
    .restart local v14       #p3:[F
    move-object/from16 v15, p7

    .line 40
    .restart local v15       #p4:[F
    goto :goto_1

    .line 42
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :pswitch_2
    move-object/from16 v12, p5

    .line 43
    .restart local v12       #p1:[F
    move-object/from16 v13, p4

    .line 44
    .restart local v13       #p2:[F
    move-object/from16 v14, p7

    .line 45
    .restart local v14       #p3:[F
    move-object/from16 v15, p6

    .line 46
    .restart local v15       #p4:[F
    goto :goto_1

    .line 48
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :pswitch_3
    move-object/from16 v12, p4

    .line 49
    .restart local v12       #p1:[F
    move-object/from16 v13, p0

    .line 50
    .restart local v13       #p2:[F
    move-object/from16 v14, p6

    .line 51
    .restart local v14       #p3:[F
    move-object/from16 v15, p2

    .line 52
    .restart local v15       #p4:[F
    goto :goto_1

    .line 54
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :pswitch_4
    move-object/from16 v12, p4

    .line 55
    .restart local v12       #p1:[F
    move-object/from16 v13, p5

    .line 56
    .restart local v13       #p2:[F
    move-object/from16 v14, p0

    .line 57
    .restart local v14       #p3:[F
    move-object/from16 v15, p1

    .line 58
    .restart local v15       #p4:[F
    goto :goto_1

    .line 86
    .restart local v9       #i:I
    .restart local v11       #offset:I
    :cond_0
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, p8

    if-ge v9, v0, :cond_1

    .line 87
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v14, v9

    aput v17, v7, v11

    .line 86
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_3

    .line 89
    :cond_1
    const/4 v9, 0x0

    :goto_4
    move/from16 v0, p8

    if-ge v9, v0, :cond_2

    .line 90
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v13, v9

    aput v17, v7, v11

    .line 89
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_4

    .line 92
    :cond_2
    const/4 v9, 0x0

    :goto_5
    move/from16 v0, p8

    if-ge v9, v0, :cond_3

    .line 93
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v14, v9

    aput v17, v7, v11

    .line 92
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_5

    .line 95
    :cond_3
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, p8

    if-ge v9, v0, :cond_4

    .line 96
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v15, v9

    aput v17, v7, v11

    .line 95
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_6

    .line 98
    :cond_4
    const/4 v9, 0x0

    :goto_7
    move/from16 v0, p8

    if-ge v9, v0, :cond_5

    .line 99
    add-int/lit8 v10, v11, 0x1

    .end local v11           #offset:I
    .restart local v10       #offset:I
    aget v17, v13, v9

    aput v17, v7, v11

    .line 98
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #offset:I
    .restart local v11       #offset:I
    goto :goto_7

    .line 22
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 103
    .end local v9           #i:I
    .end local v11           #offset:I
    .end local v12           #p1:[F
    .end local v13           #p2:[F
    .end local v14           #p3:[F
    .end local v15           #p4:[F
    :cond_6
    return-object v7

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
