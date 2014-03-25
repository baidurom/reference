.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field private static final BUFSIZE:I = 0x1000

.field public static final NO_BINDING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Frame"

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .parameter "format"
    .parameter "frameManager"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 53
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 55
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 57
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 60
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 61
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2
    .parameter "format"
    .parameter "frameManager"
    .parameter "bindingType"
    .parameter "bindingId"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 53
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 55
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 57
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 65
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 66
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 67
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 68
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 69
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 204
    .end local p0
    :goto_0
    return-object p0

    .line 198
    .restart local p0
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, result:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 200
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error converting bitmap to RGBA!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_2

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported row byte count in bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object p0, v0

    .line 204
    goto :goto_0
.end method

.method public static wait3DReady()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 337
    const/4 v8, 0x1

    .line 338
    .local v8, w:I
    const/4 v7, 0x1

    .line 339
    .local v7, h:I
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 340
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v3, v2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected assertFrameMutable()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify read-only frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    return-void
.end method

.method final decRefCount()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 238
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getBindingId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-wide v0
.end method

.method public getBindingType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    return v0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    return v0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-wide v0
.end method

.method protected abstract hasNativeAllocation()Z
.end method

.method final incRefCount()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 233
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return v0
.end method

.method final isReusable()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return v0
.end method

.method final markReadOnly()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 247
    return-void
.end method

.method protected onFrameFetch()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected onFrameStore()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    .line 159
    .end local p0
    :cond_0
    return-object p0
.end method

.method protected abstract releaseNativeAllocation()V
.end method

.method protected requestResize([I)Z
    .locals 1
    .parameter "newDimensions"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .parameter "newFormat"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 212
    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    .line 167
    .end local p0
    :cond_0
    return-object p0
.end method

.method public saveFrame(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 256
    const-string v2, "debug.effect.save.pixel"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 257
    .local v1, savePixel:I
    if-ne v1, v3, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterfw/core/Frame;->savePixel(Ljava/lang/String;[B)V

    .line 260
    :cond_0
    const-string v2, "debug.effect.save.image"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, saveImage:I
    if-ne v0, v3, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterfw/core/Frame;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 264
    :cond_1
    return-void
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 296
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/debug_mca_output/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_image.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v7, file:Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 299
    .local v8, uri:Landroid/net/Uri;
    const-string v9, "Frame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveImage("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v5, 0x0

    .line 302
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 303
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 305
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 308
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 309
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 310
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    invoke-static {v6}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v1}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v3}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 318
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v4

    .line 312
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "Frame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to store image. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    invoke-static {v5}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v0}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v2}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 314
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v5}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v0}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v2}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 314
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 311
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public savePixel(Ljava/lang/String;[B)V
    .locals 12
    .parameter "name"
    .parameter "data"

    .prologue
    .line 269
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/debug_mca_output/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_pixel.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v7, file:Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 272
    .local v8, uri:Landroid/net/Uri;
    const-string v9, "Frame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "savePixel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v5, 0x0

    .line 275
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 276
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 278
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 282
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 287
    invoke-static {v6}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v1}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v3}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 291
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v4

    .line 285
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "Frame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to store pixel. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    invoke-static {v5}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v0}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v2}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 287
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v5}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v0}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v2}, Landroid/filterfw/core/Frame;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 287
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 284
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    .line 123
    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 1
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 126
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 127
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 145
    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method protected setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 187
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set object value of unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 96
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 107
    :goto_0
    return-void

    .line 98
    .restart local p1
    :cond_0
    instance-of v0, p1, [F

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setFloats([F)V

    goto :goto_0

    .line 100
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 101
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 102
    .restart local p1
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 103
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 105
    .restart local p1
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setReusable(Z)V
    .locals 0
    .parameter "reusable"

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 183
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 136
    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 137
    return-void
.end method
