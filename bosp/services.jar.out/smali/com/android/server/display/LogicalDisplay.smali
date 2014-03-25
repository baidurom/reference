.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field private static final HW_ROTATION:Ljava/lang/String; = "ro.sf.hwrotation"


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 1
    .parameter "displayId"
    .parameter "layerStack"
    .parameter "primaryDisplayDevice"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 85
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 86
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 87
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 88
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 16
    .parameter "device"
    .parameter "isBlanked"

    .prologue
    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 258
    .local v2, displayInfo:Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 261
    .local v1, displayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz p2, :cond_2

    const/4 v11, -0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v15, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, orientation:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_0

    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    .line 274
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 278
    :cond_0
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v11, v7

    rem-int/lit8 v7, v11, 0x4

    .line 285
    const/4 v11, 0x1

    if-eq v7, v11, :cond_1

    const/4 v11, 0x3

    if-ne v7, v11, :cond_3

    :cond_1
    const/4 v10, 0x1

    .line 287
    .local v10, rotated:Z
    :goto_1
    if-eqz v10, :cond_4

    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 288
    .local v9, physWidth:I
    :goto_2
    if-eqz v10, :cond_5

    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 298
    .local v8, physHeight:I
    :goto_3
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v8

    if-ge v11, v12, :cond_6

    .line 301
    move v6, v9

    .line 302
    .local v6, displayRectWidth:I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int v3, v11, v12

    .line 308
    .local v3, displayRectHeight:I
    :goto_4
    sub-int v11, v8, v3

    div-int/lit8 v5, v11, 0x2

    .line 309
    .local v5, displayRectTop:I
    sub-int v11, v9, v6

    div-int/lit8 v4, v11, 0x2

    .line 310
    .local v4, displayRectLeft:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v12, v4, v6

    add-int v13, v5, v3

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 314
    return-void

    .line 261
    .end local v3           #displayRectHeight:I
    .end local v4           #displayRectLeft:I
    .end local v5           #displayRectTop:I
    .end local v6           #displayRectWidth:I
    .end local v7           #orientation:I
    .end local v8           #physHeight:I
    .end local v9           #physWidth:I
    .end local v10           #rotated:Z
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    goto :goto_0

    .line 285
    .restart local v7       #orientation:I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 287
    .restart local v10       #rotated:Z
    :cond_4
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_2

    .line 288
    .restart local v9       #physWidth:I
    :cond_5
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_3

    .line 305
    .restart local v8       #physHeight:I
    :cond_6
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v8

    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v6, v11, v12

    .line 306
    .restart local v6       #displayRectWidth:I
    move v3, v8

    .restart local v3       #displayRectHeight:I
    goto :goto_4
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    return-void

    .line 343
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 118
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    .line 121
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    goto :goto_0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 140
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 143
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 146
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 147
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .parameter "hasContent"

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 337
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 172
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iput-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    goto :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 189
    .local v0, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    const-string v2, "ro.sf.hwrotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, hworientation:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    .line 192
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->flags:I

    .line 193
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 196
    :cond_3
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 197
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v3, v2, Landroid/view/DisplayInfo;->type:I

    .line 200
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 203
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 204
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 205
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 206
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 208
    const-string v2, "270"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 209
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 210
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 211
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 212
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 213
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 224
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v3, v2, Landroid/view/DisplayInfo;->refreshRate:F

    .line 225
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 226
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v3, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 227
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v3, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 228
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 229
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 230
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 231
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 233
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 234
    iput-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto/16 :goto_0

    .line 214
    :cond_6
    const-string v2, "180"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x2

    iput v3, v2, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_1

    .line 216
    :cond_7
    const-string v2, "90"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 218
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 219
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 220
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 221
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_1
.end method
