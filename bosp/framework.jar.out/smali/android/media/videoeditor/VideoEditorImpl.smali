.class public Landroid/media/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor;


# static fields
.field private static final ATTR_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "after_media_item"

.field private static final ATTR_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final ATTR_AUDIO_WAVEFORM_FILENAME:Ljava/lang/String; = "waveform"

.field private static final ATTR_BEFORE_MEDIA_ITEM_ID:Ljava/lang/String; = "before_media_item"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "begin_time"

.field private static final ATTR_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final ATTR_BLENDING:Ljava/lang/String; = "blending"

.field private static final ATTR_COLOR_EFFECT_TYPE:Ljava/lang/String; = "color_type"

.field private static final ATTR_COLOR_EFFECT_VALUE:Ljava/lang/String; = "color_value"

.field private static final ATTR_DIRECTION:Ljava/lang/String; = "direction"

.field private static final ATTR_DUCKED_TRACK_VOLUME:Ljava/lang/String; = "ducking_volume"

.field private static final ATTR_DUCK_ENABLED:Ljava/lang/String; = "ducking_enabled"

.field private static final ATTR_DUCK_THRESHOLD:Ljava/lang/String; = "ducking_threshold"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_END_RECT_BOTTOM:Ljava/lang/String; = "end_b"

.field private static final ATTR_END_RECT_LEFT:Ljava/lang/String; = "end_l"

.field private static final ATTR_END_RECT_RIGHT:Ljava/lang/String; = "end_r"

.field private static final ATTR_END_RECT_TOP:Ljava/lang/String; = "end_t"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end_time"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_GENERATED_IMAGE_CLIP:Ljava/lang/String; = "generated_image_clip"

.field private static final ATTR_GENERATED_TRANSITION_CLIP:Ljava/lang/String; = "generated_transition_clip"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INVERT:Ljava/lang/String; = "invert"

.field private static final ATTR_IS_IMAGE_CLIP_GENERATED:Ljava/lang/String; = "is_image_clip_generated"

.field private static final ATTR_IS_TRANSITION_GENERATED:Ljava/lang/String; = "is_transition_generated"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_MASK:Ljava/lang/String; = "mask"

.field private static final ATTR_MUTED:Ljava/lang/String; = "muted"

.field private static final ATTR_OVERLAY_FRAME_HEIGHT:Ljava/lang/String; = "overlay_frame_height"

.field private static final ATTR_OVERLAY_FRAME_WIDTH:Ljava/lang/String; = "overlay_frame_width"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT:Ljava/lang/String; = "resized_RGBframe_height"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH:Ljava/lang/String; = "resized_RGBframe_width"

.field private static final ATTR_OVERLAY_RGB_FILENAME:Ljava/lang/String; = "overlay_rgb_filename"

.field private static final ATTR_REGENERATE_PCM:Ljava/lang/String; = "regeneratePCMFlag"

.field private static final ATTR_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final ATTR_START_RECT_BOTTOM:Ljava/lang/String; = "start_b"

.field private static final ATTR_START_RECT_LEFT:Ljava/lang/String; = "start_l"

.field private static final ATTR_START_RECT_RIGHT:Ljava/lang/String; = "start_r"

.field private static final ATTR_START_RECT_TOP:Ljava/lang/String; = "start_t"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "start_time"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4

.field private static final PROJECT_FILENAME:Ljava/lang/String; = "videoeditor.xml"

.field private static final TAG:Ljava/lang/String; = "VideoEditorImpl"

.field private static final TAG_AUDIO_TRACK:Ljava/lang/String; = "audio_track"

.field private static final TAG_AUDIO_TRACKS:Ljava/lang/String; = "audio_tracks"

.field private static final TAG_EFFECT:Ljava/lang/String; = "effect"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effects"

.field private static final TAG_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final TAG_MEDIA_ITEMS:Ljava/lang/String; = "media_items"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"

.field private static final TAG_OVERLAY_USER_ATTRIBUTES:Ljava/lang/String; = "overlay_user_attributes"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "transition"

.field private static final TAG_TRANSITIONS:Ljava/lang/String; = "transitions"


# instance fields
.field private mAspectRatio:I

.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mMallocDebug:Z

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewInProgress:Z

.field private final mProjectPath:Ljava/lang/String;

.field private final mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "projectPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    .line 139
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 150
    const-string/jumbo v3, "libc.debug.malloc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, s:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iput-boolean v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    .line 154
    :try_start_0
    const-string v3, "HeapAtStart"

    invoke-static {v3}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    .line 162
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, p1, v4, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 163
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    .line 164
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "videoeditor.xml"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, projectXml:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :try_start_1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->load()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_1
    return-void

    .line 155
    .end local v1           #projectXml:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VideoEditorImpl"

    const-string v4, "dumpHeap returned error in constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    goto :goto_0

    .line 168
    .restart local v1       #projectXml:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 169
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 174
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    goto :goto_1
.end method

.method private computeTimelineDuration()V
    .locals 7

    .prologue
    .line 1817
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1818
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1819
    .local v2, mediaItemsCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1820
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1821
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1822
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1823
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    .line 1824
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1828
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_1
    return-void
.end method

.method private static dumpHeap(Ljava/lang/String;)V
    .locals 6
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1973
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1974
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1975
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1976
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1977
    .local v2, state:Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1978
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, extDir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1984
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1988
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v1, ost:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 1991
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1993
    .end local v0           #extDir:Ljava/lang/String;
    .end local v1           #ost:Ljava/io/FileOutputStream;
    :cond_1
    return-void
.end method

.method private generateProjectThumbnail()V
    .locals 13

    .prologue
    .line 1837
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "thumbnail.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1838
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "thumbnail.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1843
    :cond_0
    iget-object v10, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1844
    iget-object v10, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 1848
    .local v4, mI:Landroid/media/videoeditor/MediaItem;
    const/16 v3, 0x1e0

    .line 1849
    .local v3, height:I
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v10

    mul-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v11

    div-int v9, v10, v11

    .line 1851
    .local v9, width:I
    const/4 v6, 0x0

    .line 1852
    .local v6, projectBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 1853
    .local v2, filename:Ljava/lang/String;
    instance-of v10, v4, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v10, :cond_3

    .line 1854
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1855
    .local v7, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1857
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1858
    const/4 v7, 0x0

    .line 1859
    if-nez v0, :cond_1

    .line 1860
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thumbnail extraction from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1862
    .local v5, msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1865
    .end local v5           #msg:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    invoke-static {v0, v9, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1881
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_0
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "thumbnail.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v8, stream:Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1884
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1885
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1889
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1892
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #height:I
    .end local v4           #mI:Landroid/media/videoeditor/MediaItem;
    .end local v6           #projectBitmap:Landroid/graphics/Bitmap;
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .end local v9           #width:I
    :cond_2
    return-void

    .line 1869
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #height:I
    .restart local v4       #mI:Landroid/media/videoeditor/MediaItem;
    .restart local v6       #projectBitmap:Landroid/graphics/Bitmap;
    .restart local v9       #width:I
    :cond_3
    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-virtual {v4, v9, v3, v10, v11}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1870
    :catch_0
    move-exception v1

    .line 1871
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Project thumbnail extraction from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1873
    .restart local v5       #msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1874
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #msg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1875
    .local v1, e:Ljava/io/IOException;
    const-string v5, "IO Error creating project thumbnail"

    .line 1876
    .restart local v5       #msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1886
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #msg:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1887
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Error creating project thumbnail"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1889
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    throw v10
.end method

.method private load()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "videoeditor.xml"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .local v10, file:Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 971
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v14, ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 974
    .local v19, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v23, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 975
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 977
    .local v8, eventType:I
    const/4 v5, 0x0

    .line 978
    .local v5, currentMediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v6, 0x0

    .line 979
    .local v6, currentOverlay:Landroid/media/videoeditor/Overlay;
    const/16 v20, 0x0

    .line 980
    .local v20, regenerateProjectThumbnail:Z
    const/16 v21, 0x0

    .line 982
    .local v21, resaveXml:Z
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_b

    .line 983
    packed-switch v8, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 985
    :pswitch_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 986
    .local v18, name:Ljava/lang/String;
    const-string/jumbo v23, "project"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 987
    const-string v23, ""

    const-string v24, "aspect_ratio"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 990
    const-string v23, ""

    const-string/jumbo v24, "regeneratePCMFlag"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 993
    .local v16, mRegenPCM:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1125
    .end local v5           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v6           #currentOverlay:Landroid/media/videoeditor/Overlay;
    .end local v8           #eventType:I
    .end local v14           #ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #mRegenPCM:Z
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #regenerateProjectThumbnail:Z
    .end local v21           #resaveXml:Z
    :catchall_0
    move-exception v23

    if-eqz v12, :cond_1

    .line 1126
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v23

    .line 994
    .restart local v5       #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v6       #currentOverlay:Landroid/media/videoeditor/Overlay;
    .restart local v8       #eventType:I
    .restart local v14       #ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20       #regenerateProjectThumbnail:Z
    .restart local v21       #resaveXml:Z
    :cond_2
    :try_start_1
    const-string/jumbo v23, "media_item"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 995
    const-string v23, ""

    const-string v24, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 997
    .local v17, mediaItemId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 999
    :catch_0
    move-exception v9

    .line 1000
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v23, "VideoEditorImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot load media item: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    const/4 v5, 0x0

    .line 1005
    const/16 v21, 0x1

    .line 1006
    const/16 v20, 0x1

    .line 1014
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1016
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v17           #mediaItemId:Ljava/lang/String;
    :cond_3
    const-string/jumbo v23, "transition"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    if-eqz v23, :cond_4

    .line 1018
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Landroid/media/videoeditor/VideoEditorImpl;->parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;

    move-result-object v22

    .line 1022
    .local v22, transition:Landroid/media/videoeditor/Transition;
    if-eqz v22, :cond_0

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1025
    .end local v22           #transition:Landroid/media/videoeditor/Transition;
    :catch_1
    move-exception v9

    .line 1026
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "VideoEditorImpl"

    const-string v24, "Cannot load transition"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1028
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v23, "overlay"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v23

    if-eqz v23, :cond_5

    .line 1029
    if-eqz v5, :cond_0

    .line 1031
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/media/videoeditor/VideoEditorImpl;->parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;

    move-result-object v6

    .line 1032
    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 1033
    :catch_2
    move-exception v9

    .line 1034
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_7
    const-string v23, "VideoEditorImpl"

    const-string v24, "Cannot load overlay"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1037
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v23, "overlay_user_attributes"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1038
    if-eqz v6, :cond_0

    .line 1039
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 1040
    .local v3, attributesCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v3, :cond_0

    .line 1041
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1045
    .end local v3           #attributesCount:I
    .end local v13           #i:I
    :cond_6
    const-string v23, "effect"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v23

    if-eqz v23, :cond_9

    .line 1046
    if-eqz v5, :cond_0

    .line 1048
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/media/videoeditor/VideoEditorImpl;->parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;

    move-result-object v7

    .line 1049
    .local v7, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v5, v7}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 1051
    instance-of v0, v7, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1052
    const-string v23, ""

    const-string/jumbo v24, "is_image_clip_generated"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1055
    .local v15, isImageClipGenerated:Z
    if-eqz v15, :cond_8

    .line 1056
    const-string v23, ""

    const-string v24, "generated_image_clip"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, filename:Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1059
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1061
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 1076
    .end local v7           #effect:Landroid/media/videoeditor/Effect;
    .end local v11           #filename:Ljava/lang/String;
    .end local v15           #isImageClipGenerated:Z
    :catch_3
    move-exception v9

    .line 1077
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "VideoEditorImpl"

    const-string v24, "Cannot load effect"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 1064
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v7       #effect:Landroid/media/videoeditor/Effect;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v15       #isImageClipGenerated:Z
    :cond_7
    :try_start_a
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1066
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    goto/16 :goto_1

    .line 1070
    .end local v11           #filename:Ljava/lang/String;
    :cond_8
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1072
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 1080
    .end local v7           #effect:Landroid/media/videoeditor/Effect;
    .end local v15           #isImageClipGenerated:Z
    :cond_9
    :try_start_b
    const-string v23, "audio_track"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v23

    if-eqz v23, :cond_0

    .line 1082
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v4

    .line 1083
    .local v4, audioTrack:Landroid/media/videoeditor/AudioTrack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/VideoEditorImpl;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 1084
    .end local v4           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    :catch_4
    move-exception v9

    .line 1085
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_d
    const-string v23, "VideoEditorImpl"

    const-string v24, "Cannot load audio track"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const/16 v21, 0x1

    .line 1088
    goto/16 :goto_1

    .line 1094
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v18           #name:Ljava/lang/String;
    :pswitch_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1095
    .restart local v18       #name:Ljava/lang/String;
    const-string/jumbo v23, "media_item"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1096
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1097
    :cond_a
    const-string/jumbo v23, "overlay"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1098
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1109
    .end local v18           #name:Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 1111
    if-eqz v21, :cond_c

    .line 1112
    const-string v23, "VideoEditorImpl"

    const-string v24, "Resave the xml"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->save()V

    .line 1114
    const/16 v21, 0x0

    .line 1119
    :cond_c
    if-eqz v20, :cond_d

    .line 1120
    const-string v23, "VideoEditorImpl"

    const-string v24, "Start regenerate project thumbnail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1125
    :cond_d
    if-eqz v12, :cond_e

    .line 1126
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 1129
    :cond_e
    return-void

    .line 983
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private lock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1927
    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1928
    const-string v0, "VideoEditorImpl"

    const-string/jumbo v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1930
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1932
    const-string v0, "VideoEditorImpl"

    const-string/jumbo v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    return-void
.end method

.method private lock(J)Z
    .locals 5
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1945
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1946
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lock: grabbing semaphore with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1949
    :cond_0
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1950
    .local v0, acquireSem:Z
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1951
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lock: grabbed semaphore status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_1
    return v0
.end method

.method private parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;
    .locals 20
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1358
    const-string v3, ""

    const-string v19, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1359
    .local v4, audioTrackId:Ljava/lang/String;
    const-string v3, ""

    const-string v19, "filename"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    .local v5, filename:Ljava/lang/String;
    const-string v3, ""

    const-string/jumbo v19, "start_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1361
    .local v6, startTimeMs:J
    const-string v3, ""

    const-string v19, "begin_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1362
    .local v8, beginMs:J
    const-string v3, ""

    const-string v19, "end_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1363
    .local v10, endMs:J
    const-string v3, ""

    const-string/jumbo v19, "volume"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1364
    .local v13, volume:I
    const-string v3, ""

    const-string/jumbo v19, "muted"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1365
    .local v14, muted:Z
    const-string v3, ""

    const-string/jumbo v19, "loop"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1366
    .local v12, loop:Z
    const-string v3, ""

    const-string v19, "ducking_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1368
    .local v15, duckingEnabled:Z
    const-string v3, ""

    const-string v19, "ducking_threshold"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1370
    .local v16, duckThreshold:I
    const-string v3, ""

    const-string v19, "ducking_volume"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1373
    .local v17, duckedTrackVolume:I
    const-string v3, ""

    const-string/jumbo v19, "waveform"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1374
    .local v18, waveformFilename:Ljava/lang/String;
    new-instance v2, Landroid/media/videoeditor/AudioTrack;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v18}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    .line 1383
    .local v2, audioTrack:Landroid/media/videoeditor/AudioTrack;
    return-object v2
.end method

.method private parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;
    .locals 20
    .parameter "parser"
    .parameter "mediaItem"

    .prologue
    .line 1312
    const-string v2, ""

    const-string v10, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    .local v3, effectId:Ljava/lang/String;
    const-string v2, ""

    const-string/jumbo v10, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1314
    .local v19, type:Ljava/lang/String;
    const-string v2, ""

    const-string v10, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1315
    .local v6, durationMs:J
    const-string v2, ""

    const-string v10, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1318
    .local v4, startTimeMs:J
    const-class v2, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1319
    const-string v2, ""

    const-string v10, "color_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1322
    .local v8, colorEffectType:I
    const/4 v2, 0x1

    if-eq v8, v2, :cond_0

    const/4 v2, 0x2

    if-ne v8, v2, :cond_1

    .line 1324
    :cond_0
    const-string v2, ""

    const-string v10, "color_value"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1328
    .local v9, color:I
    :goto_0
    new-instance v1, Landroid/media/videoeditor/EffectColor;

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 1347
    .end local v8           #colorEffectType:I
    .end local v9           #color:I
    .local v1, effect:Landroid/media/videoeditor/Effect;
    :goto_1
    return-object v1

    .line 1326
    .end local v1           #effect:Landroid/media/videoeditor/Effect;
    .restart local v8       #colorEffectType:I
    :cond_1
    const/4 v9, 0x0

    .restart local v9       #color:I
    goto :goto_0

    .line 1330
    .end local v8           #colorEffectType:I
    .end local v9           #color:I
    :cond_2
    const-class v2, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1331
    new-instance v13, Landroid/graphics/Rect;

    const-string v2, ""

    const-string/jumbo v10, "start_l"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, ""

    const-string/jumbo v11, "start_t"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, ""

    const-string/jumbo v12, "start_r"

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, ""

    const-string/jumbo v15, "start_b"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v13, v2, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1336
    .local v13, startRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const-string v2, ""

    const-string v10, "end_l"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, ""

    const-string v11, "end_t"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, ""

    const-string v12, "end_r"

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, ""

    const-string v15, "end_b"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v14, v2, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1341
    .local v14, endRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/media/videoeditor/EffectKenBurns;

    move-object v10, v1

    move-object/from16 v11, p2

    move-object v12, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v10 .. v18}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    .line 1343
    .restart local v1       #effect:Landroid/media/videoeditor/Effect;
    goto/16 :goto_1

    .line 1344
    .end local v1           #effect:Landroid/media/videoeditor/Effect;
    .end local v13           #startRect:Landroid/graphics/Rect;
    .end local v14           #endRect:Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid effect type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;
    .locals 29
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    const-string v5, ""

    const-string v11, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1139
    .local v6, mediaItemId:Ljava/lang/String;
    const-string v5, ""

    const-string/jumbo v11, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1140
    .local v27, type:Ljava/lang/String;
    const-string v5, ""

    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1141
    .local v7, filename:Ljava/lang/String;
    const-string v5, ""

    const-string/jumbo v11, "rendering_mode"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1145
    .local v10, renderingMode:I
    const-class v5, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1146
    const-string v5, ""

    const-string v11, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1147
    .local v8, durationMs:J
    new-instance v4, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1169
    .end local v8           #durationMs:J
    .local v4, currentMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_0
    return-object v4

    .line 1149
    .end local v4           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_0
    const-class v5, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1150
    const-string v5, ""

    const-string v11, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1151
    .local v16, beginMs:J
    const-string v5, ""

    const-string v11, "end_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1152
    .local v18, endMs:J
    const-string v5, ""

    const-string/jumbo v11, "volume"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1153
    .local v20, volume:I
    const-string v5, ""

    const-string/jumbo v11, "muted"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 1154
    .local v21, muted:Z
    const-string v5, ""

    const-string/jumbo v11, "waveform"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1156
    .local v22, audioWaveformFilename:Ljava/lang/String;
    new-instance v4, Landroid/media/videoeditor/MediaVideoItem;

    move-object v11, v4

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move v15, v10

    invoke-direct/range {v11 .. v22}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 1159
    .restart local v4       #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v5, ""

    const-string v11, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 1160
    .local v23, beginTimeMs:J
    const-string v5, ""

    const-string v11, "end_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .local v25, endTimeMs:J
    move-object v5, v4

    .line 1161
    check-cast v5, Landroid/media/videoeditor/MediaVideoItem;

    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    .line 1163
    const-string v5, ""

    const-string/jumbo v11, "volume"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .local v28, volumePercent:I
    move-object v5, v4

    .line 1164
    check-cast v5, Landroid/media/videoeditor/MediaVideoItem;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    goto/16 :goto_0

    .line 1166
    .end local v4           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v16           #beginMs:J
    .end local v18           #endMs:J
    .end local v20           #volume:I
    .end local v21           #muted:Z
    .end local v22           #audioWaveformFilename:Ljava/lang/String;
    .end local v23           #beginTimeMs:J
    .end local v25           #endTimeMs:J
    .end local v28           #volumePercent:I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown media item type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;
    .locals 17
    .parameter "parser"
    .parameter "mediaItem"

    .prologue
    .line 1267
    const-string v2, ""

    const-string v15, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, overlayId:Ljava/lang/String;
    const-string v2, ""

    const-string/jumbo v15, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1269
    .local v14, type:Ljava/lang/String;
    const-string v2, ""

    const-string v15, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1270
    .local v7, durationMs:J
    const-string v2, ""

    const-string v15, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1273
    .local v5, startTimeMs:J
    const-class v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    const-string v2, ""

    const-string v15, "filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1275
    .local v4, filename:Ljava/lang/String;
    new-instance v1, Landroid/media/videoeditor/OverlayFrame;

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1280
    .local v1, overlay:Landroid/media/videoeditor/Overlay;
    const-string v2, ""

    const-string/jumbo v15, "overlay_rgb_filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1281
    .local v11, overlayRgbFileName:Ljava/lang/String;
    if-eqz v11, :cond_0

    move-object v2, v1

    .line 1282
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v11}, Landroid/media/videoeditor/OverlayFrame;->setFilename(Ljava/lang/String;)V

    .line 1284
    const-string v2, ""

    const-string/jumbo v15, "overlay_frame_width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1286
    .local v10, overlayFrameWidth:I
    const-string v2, ""

    const-string/jumbo v15, "overlay_frame_height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, overlayFrameHeight:I
    move-object v2, v1

    .line 1289
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v10}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameWidth(I)V

    move-object v2, v1

    .line 1290
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v9}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameHeight(I)V

    .line 1292
    const-string v2, ""

    const-string/jumbo v15, "resized_RGBframe_width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1294
    .local v13, resizedRGBFrameWidth:I
    const-string v2, ""

    const-string/jumbo v15, "resized_RGBframe_height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, resizedRGBFrameHeight:I
    move-object v2, v1

    .line 1297
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v13, v12}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    .line 1300
    .end local v9           #overlayFrameHeight:I
    .end local v10           #overlayFrameWidth:I
    .end local v12           #resizedRGBFrameHeight:I
    .end local v13           #resizedRGBFrameWidth:I
    :cond_0
    return-object v1

    .line 1277
    .end local v1           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v4           #filename:Ljava/lang/String;
    .end local v11           #overlayRgbFileName:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid overlay type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;
    .locals 25
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/videoeditor/Transition;"
        }
    .end annotation

    .prologue
    .line 1181
    .local p2, ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, ""

    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, transitionId:Ljava/lang/String;
    const-string v12, ""

    const-string/jumbo v13, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1183
    .local v24, type:Ljava/lang/String;
    const-string v12, ""

    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1184
    .local v6, durationMs:J
    const-string v12, ""

    const-string v13, "behavior"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1186
    .local v8, behavior:I
    const-string v12, ""

    const-string v13, "before_media_item"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1188
    .local v21, beforeMediaItemId:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 1189
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1191
    const/4 v2, 0x0

    .line 1255
    :cond_0
    :goto_0
    return-object v2

    .line 1194
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 1199
    .local v5, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_1
    const-string v12, ""

    const-string v13, "after_media_item"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1201
    .local v20, afterMediaItemId:Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 1202
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1204
    const/4 v2, 0x0

    goto :goto_0

    .line 1196
    .end local v5           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v20           #afterMediaItemId:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_1

    .line 1207
    .restart local v20       #afterMediaItemId:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 1213
    .local v4, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_2
    const-class v12, Landroid/media/videoeditor/TransitionAlpha;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1214
    const-string v12, ""

    const-string v13, "blending"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1215
    .local v10, blending:I
    const-string v12, ""

    const-string/jumbo v13, "mask"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1216
    .local v9, maskFilename:Ljava/lang/String;
    const-string v12, ""

    const-string/jumbo v13, "invert"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1217
    .local v11, invert:Z
    new-instance v2, Landroid/media/videoeditor/TransitionAlpha;

    invoke-direct/range {v2 .. v11}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 1233
    .end local v9           #maskFilename:Ljava/lang/String;
    .end local v10           #blending:I
    .end local v11           #invert:Z
    .local v2, transition:Landroid/media/videoeditor/Transition;
    :goto_3
    const-string v12, ""

    const-string/jumbo v13, "is_transition_generated"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1235
    .local v22, isTransitionGenerated:Z
    const/4 v12, 0x1

    move/from16 v0, v22

    if-ne v0, v12, :cond_4

    .line 1236
    const-string v12, ""

    const-string v13, "generated_transition_clip"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1239
    .local v23, transitionFile:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1240
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    .line 1247
    .end local v23           #transitionFile:Ljava/lang/String;
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 1248
    invoke-virtual {v5, v2}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1251
    :cond_5
    if-eqz v4, :cond_0

    .line 1252
    invoke-virtual {v4, v2}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    goto/16 :goto_0

    .line 1209
    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    .end local v4           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v22           #isTransitionGenerated:Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_2

    .line 1219
    :cond_7
    const-class v12, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1220
    new-instance v2, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-direct/range {v2 .. v8}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    goto :goto_3

    .line 1222
    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    :cond_8
    const-class v12, Landroid/media/videoeditor/TransitionSliding;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1223
    const-string v12, ""

    const-string v13, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1224
    .local v19, direction:I
    new-instance v2, Landroid/media/videoeditor/TransitionSliding;

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-wide/from16 v16, v6

    move/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 1226
    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    goto :goto_3

    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    .end local v19           #direction:I
    :cond_9
    const-class v12, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1227
    new-instance v2, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-direct/range {v2 .. v8}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    goto/16 :goto_3

    .line 1230
    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    :cond_a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid transition type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1242
    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    .restart local v22       #isTransitionGenerated:Z
    .restart local v23       #transitionFile:Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .parameter "mediaItem"

    .prologue
    const/4 v3, 0x0

    .line 1742
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    .line 1743
    .local v0, beginTransition:Landroid/media/videoeditor/Transition;
    if-eqz v0, :cond_1

    .line 1744
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1745
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1747
    :cond_0
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1748
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1751
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    .line 1752
    .local v1, endTransition:Landroid/media/videoeditor/Transition;
    if-eqz v1, :cond_3

    .line 1753
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1754
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1756
    :cond_2
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1757
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1760
    :cond_3
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1761
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1762
    return-void
.end method

.method private declared-synchronized removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;
    .locals 4
    .parameter "mediaItemId"
    .parameter "flag"

    .prologue
    .line 851
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, firstItemString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 854
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_0

    .line 855
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 859
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 863
    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 864
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 871
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 872
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :cond_1
    monitor-exit p0

    return-object v1

    .line 851
    .end local v0           #firstItemString:Ljava/lang/String;
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeTransitionAfter(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 1793
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1794
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1795
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1796
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1797
    .local v2, t:Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 1798
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1799
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1800
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1801
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1805
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_1

    .line 1806
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1811
    .end local v2           #t:Landroid/media/videoeditor/Transition;
    :cond_1
    return-void
.end method

.method private removeTransitionBefore(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 1770
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1771
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1772
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1774
    .local v2, t:Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 1775
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1776
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1777
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1778
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1779
    if-lez p1, :cond_1

    .line 1780
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1785
    .end local v2           #t:Landroid/media/videoeditor/Transition;
    :cond_1
    return-void
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 1962
    const-string v0, "VideoEditorImpl"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1965
    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    .locals 3
    .parameter "audioTrack"

    .prologue
    const/4 v2, 0x1

    .line 189
    monitor-enter p0

    if-nez p1, :cond_0

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio Track is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 193
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No more tracks can be added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 202
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, audioTrackPCMFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addMediaItem(Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .parameter "mediaItem"

    .prologue
    const/4 v3, 0x1

    .line 226
    monitor-enter p0

    if-nez p1, :cond_0

    .line 227
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Media item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media item already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 241
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    .local v0, mediaItemsCount:I
    if-lez v0, :cond_2

    .line 243
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 249
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 256
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 257
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addTransition(Landroid/media/videoeditor/Transition;)V
    .locals 6
    .parameter "transition"

    .prologue
    const/4 v5, -0x1

    .line 266
    monitor-enter p0

    if-nez p1, :cond_0

    .line 267
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null Transition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 270
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    .line 271
    .local v2, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 275
    .local v0, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 276
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No media items are added"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 280
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 281
    .local v1, afterMediaItemIndex:I
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    .local v3, beforeMediaItemIndex:I
    if-eq v1, v5, :cond_2

    if-ne v3, v5, :cond_3

    .line 284
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Either of the mediaItem is not found in the list"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_3
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_4

    .line 289
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MediaItems are not in sequence"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v1           #afterMediaItemIndex:I
    .end local v3           #beforeMediaItemIndex:I
    :cond_4
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 295
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 305
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 306
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 311
    :cond_6
    if-eqz v2, :cond_8

    .line 316
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 317
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 318
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    :cond_7
    invoke-virtual {v2, p1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 323
    :cond_8
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    monitor-exit p0

    return-void
.end method

.method public cancelExport(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 330
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public cancelGenerating()V
    .locals 2

    .prologue
    .line 2017
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->cancelGenerating()V

    .line 2022
    :goto_0
    return-void

    .line 2020
    :cond_0
    const-string v0, "VideoEditorImpl"

    const-string v1, "cancelGenerating() mMANativeHelper = null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 1901
    if-nez p1, :cond_0

    .line 1902
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1905
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1906
    .local v0, surface:Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 1907
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1910
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1911
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1914
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_3

    .line 1915
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->clearPreviewSurface(Landroid/view/Surface;)V

    .line 1919
    :goto_0
    return-void

    .line 1917
    :cond_3
    const-string v1, "VideoEditorImpl"

    const-string v2, "Native helper was not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 21
    .parameter "filename"
    .parameter "height"
    .parameter "bitrate"
    .parameter "audioCodec"
    .parameter "videoCodec"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v11, 0x0

    .line 343
    .local v11, audcodec:I
    const/16 v20, 0x0

    .line 344
    .local v20, vidcodec:I
    if-nez p1, :cond_0

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "export: filename is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v19, tempPathFile:Ljava/io/File;
    if-nez v19, :cond_1

    .line 350
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No MediaItems added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported height value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 373
    .local v17, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    .end local v17           #message:Ljava/lang/String;
    :sswitch_0
    sparse-switch p3, :sswitch_data_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported bitrate value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 407
    .restart local v17       #message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    .end local v17           #message:Ljava/lang/String;
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 411
    const-wide/32 v12, 0x17700

    .line 412
    .local v12, audioBitrate:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    move/from16 v0, p3

    int-to-long v4, v0

    const-wide/32 v6, 0x17700

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    div-long v15, v2, v4

    .line 413
    .local v15, fileSize:J
    const-wide v2, 0x80000000L

    cmp-long v2, v2, v15

    if-gtz v2, :cond_3

    .line 414
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Export Size is more than 2GB"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_3
    packed-switch p4, :pswitch_data_0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio codec type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 426
    .restart local v17       #message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v17           #message:Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x2

    .line 430
    :goto_0
    packed-switch p5, :pswitch_data_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 443
    .restart local v17       #message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    .end local v17           #message:Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x1

    .line 422
    goto :goto_0

    .line 432
    :pswitch_2
    const/16 v20, 0x1

    .line 447
    :goto_1
    const/16 v18, 0x0

    .line 449
    .local v18, semAcquireDone:Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 450
    const/16 v18, 0x1

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_5

    .line 453
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :catch_0
    move-exception v14

    .line 460
    .local v14, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v18, :cond_4

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 466
    .end local v14           #ex:Ljava/lang/InterruptedException;
    :cond_4
    :goto_2
    return-void

    .line 435
    .end local v18           #semAcquireDone:Z
    :pswitch_3
    const/16 v20, 0x2

    .line 436
    goto :goto_1

    .line 438
    :pswitch_4
    const/16 v20, 0x3

    .line 439
    goto :goto_1

    .line 455
    .restart local v18       #semAcquireDone:Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2, v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioCodec(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setVideoCodec(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 462
    if-eqz v18, :cond_4

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_2

    .line 462
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_6

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_6
    throw v2

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_0
        0x120 -> :sswitch_0
        0x168 -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_0
    .end sparse-switch

    .line 377
    :sswitch_data_1
    .sparse-switch
        0x6d60 -> :sswitch_1
        0x9c40 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x17700 -> :sswitch_1
        0x1f400 -> :sswitch_1
        0x2ee00 -> :sswitch_1
        0x3e800 -> :sswitch_1
        0x5dc00 -> :sswitch_1
        0x7d000 -> :sswitch_1
        0xc3500 -> :sswitch_1
        0x1e8480 -> :sswitch_1
        0x4c4b40 -> :sswitch_1
        0x7a1200 -> :sswitch_1
    .end sparse-switch

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 430
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 7
    .parameter "filename"
    .parameter "height"
    .parameter "bitrate"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v4, 0x2

    .line 475
    .local v4, defaultAudiocodec:I
    invoke-virtual {p0}, Landroid/media/videoeditor/VideoEditorImpl;->getExportVideoFormat()I

    move-result v5

    .local v5, defaultVideocodec:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 476
    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/VideoEditorImpl;->export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 478
    return-void
.end method

.method public generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 486
    .local v1, semAcquireDone:Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 487
    const/4 v1, 0x1

    .line 489
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_1

    .line 490
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in previewStoryBoard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    if-eqz v1, :cond_0

    .line 501
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 504
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 494
    :cond_2
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    :cond_3
    if-eqz v1, :cond_0

    .line 501
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 501
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_4
    throw v2
.end method

.method public getAllAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getAllMediaItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getAllTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 3
    .parameter "audioTrackId"

    .prologue
    .line 538
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 539
    .local v0, at:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    .end local v0           #at:Landroid/media/videoeditor/AudioTrack;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 555
    iget-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-wide v0
.end method

.method public getExportVideoFormat()I
    .locals 3

    .prologue
    .line 2000
    const/4 v0, 0x2

    .line 2001
    .local v0, videoformat:I
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_0

    .line 2002
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getExportVideoFormat()I

    move-result v0

    .line 2006
    :goto_0
    return v0

    .line 2004
    :cond_0
    const-string v1, "VideoEditorImpl"

    const-string v2, "getExportVideoFormat() mMANativeHelper = null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 3
    .parameter "mediaItemId"

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 570
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 569
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 3
    .parameter "transitionId"

    .prologue
    .line 588
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 589
    .local v1, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    .end local v1           #transition:Landroid/media/videoeditor/Transition;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized insertAudioTrack(Landroid/media/videoeditor/AudioTrack;Ljava/lang/String;)V
    .locals 6
    .parameter "audioTrack"
    .parameter "afterAudioTrackId"

    .prologue
    const/4 v4, 0x1

    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 602
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No more tracks can be added"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 605
    :cond_0
    if-nez p2, :cond_1

    .line 606
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 607
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 610
    .local v1, audioTrackCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 611
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 612
    .local v0, at:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 614
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    .end local v0           #at:Landroid/media/videoeditor/AudioTrack;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioTrack not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V
    .locals 6
    .parameter "mediaItem"
    .parameter "afterMediaItemId"

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 631
    :cond_0
    if-nez p2, :cond_2

    .line 632
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 633
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 637
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 640
    :cond_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 641
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 642
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :goto_0
    monitor-exit p0

    return-void

    .line 644
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 645
    .local v1, mediaItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 646
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 647
    .local v2, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 648
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 652
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 656
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 657
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_0

    .line 645
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 662
    .end local v2           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaItem not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized moveAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "audioTrackId"
    .parameter "afterAudioTrackId"

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"

    .prologue
    .line 677
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 678
    .local v3, moveMediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v3, :cond_0

    .line 679
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local v3           #moveMediaItem:Landroid/media/videoeditor/MediaItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 682
    .restart local v3       #moveMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_0
    if-nez p2, :cond_2

    .line 683
    :try_start_1
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 684
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 689
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 694
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 695
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 697
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    :goto_0
    monitor-exit p0

    return-void

    .line 699
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot move media item (it is the only item)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_2
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 703
    .local v1, mediaItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 704
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 705
    .local v2, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 706
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 710
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 714
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 715
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_0

    .line 703
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    .end local v2           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/media/videoeditor/VideoEditorImpl;->stopPreview()J

    .line 730
    const/4 v1, 0x0

    .line 732
    .local v1, semAcquireDone:Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 733
    const/4 v1, 0x1

    .line 735
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 737
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 738
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 739
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    .line 740
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_0
    if-eqz v1, :cond_1

    .line 746
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 749
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    if-eqz v2, :cond_2

    .line 751
    :try_start_1
    const-string v2, "HeapAtEnd"

    invoke-static {v2}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :cond_2
    :goto_1
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 745
    if-eqz v1, :cond_1

    .line 746
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_0

    .line 745
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 746
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_3
    throw v2

    .line 752
    :catch_1
    move-exception v0

    .line 753
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "VideoEditorImpl"

    const-string v3, "dumpHeap returned error in release"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized removeAllMediaItems()V
    .locals 5

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 764
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 769
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 770
    .local v1, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 762
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #transition:Landroid/media/videoeditor/Transition;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 772
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 774
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 778
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 3
    .parameter "audioTrackId"

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v0

    .line 789
    .local v0, audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-eqz v0, :cond_0

    .line 790
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 791
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->invalidate()V

    .line 793
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->invalidatePcmFile()V

    .line 794
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit p0

    return-object v0

    .line 796
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " No more audio tracks"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .end local v0           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 9
    .parameter "mediaItemId"

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, firstItemString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 807
    .local v3, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v3, :cond_3

    .line 808
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 812
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 813
    instance-of v7, v3, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v7, :cond_0

    .line 814
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->invalidate()V

    .line 816
    :cond_0
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v6

    .line 817
    .local v6, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 818
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/Overlay;

    .line 819
    .local v4, overlay:Landroid/media/videoeditor/Overlay;
    instance-of v7, v4, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v7, :cond_1

    .line 820
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v5, v0

    .line 821
    .local v5, overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual {v5}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 805
    .end local v1           #firstItemString:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v4           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v5           #overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    .end local v6           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 829
    .restart local v1       #firstItemString:Ljava/lang/String;
    .restart local v3       #mediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v6       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 830
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 837
    .end local v6           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 838
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V

    .line 841
    :cond_4
    instance-of v7, v3, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_5

    .line 845
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :cond_5
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 6
    .parameter "transitionId"

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v2

    .line 882
    .local v2, transition:Landroid/media/videoeditor/Transition;
    if-nez v2, :cond_0

    .line 883
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transition not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 886
    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 891
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 892
    .local v0, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v0, :cond_1

    .line 893
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 896
    :cond_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 897
    .local v1, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_2

    .line 898
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 901
    :cond_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 903
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    monitor-exit p0

    return-object v2
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 12
    .parameter "surfaceHolder"
    .parameter "timeMs"
    .parameter "overlayData"

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface Holder is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 917
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_1

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from Surface holder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_3

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_3
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-lez v0, :cond_4

    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time more than duration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_4
    const-wide/16 v9, 0x0

    .line 932
    .local v9, result:J
    const/4 v11, 0x0

    .line 934
    .local v11, semAcquireDone:Z
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v11

    .line 935
    if-nez v11, :cond_6

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timeout waiting for semaphore"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :catch_0
    move-exception v7

    .line 951
    .local v7, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v0, "VideoEditorImpl"

    const-string v2, "The thread was interrupted"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The thread was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    .end local v7           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_5

    .line 955
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_5
    throw v0

    .line 939
    :cond_6
    :try_start_2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_7

    .line 940
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_7
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 944
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 945
    .local v8, frame:Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-wide v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v9

    .line 954
    .end local v8           #frame:Landroid/graphics/Rect;
    :goto_0
    if-eqz v11, :cond_8

    .line 955
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 958
    :cond_8
    return-wide v9

    .line 948
    :cond_9
    const-wide/16 v9, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 1391
    .local v22, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v28, Ljava/io/StringWriter;

    invoke-direct/range {v28 .. v28}, Ljava/io/StringWriter;-><init>()V

    .line 1392
    .local v28, writer:Ljava/io/StringWriter;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1393
    const-string v29, "UTF-8"

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1394
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1395
    const-string v29, ""

    const-string v30, "aspect_ratio"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1398
    const-string v29, ""

    const-string/jumbo v30, "regeneratePCMFlag"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioflag()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1401
    const-string v29, ""

    const-string/jumbo v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/videoeditor/MediaItem;

    .line 1403
    .local v15, mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v29, ""

    const-string/jumbo v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1404
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1405
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1407
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    const-string v29, ""

    const-string/jumbo v30, "rendering_mode"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1410
    instance-of v0, v15, Landroid/media/videoeditor/MediaVideoItem;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v16, v15

    .line 1411
    check-cast v16, Landroid/media/videoeditor/MediaVideoItem;

    .line 1412
    .local v16, mvi:Landroid/media/videoeditor/MediaVideoItem;
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1417
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1419
    const-string v29, ""

    const-string/jumbo v30, "muted"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1421
    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 1422
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1430
    .end local v16           #mvi:Landroid/media/videoeditor/MediaVideoItem;
    :cond_0
    :goto_1
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v21

    .line 1431
    .local v21, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_7

    .line 1432
    const-string v29, ""

    const-string/jumbo v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1433
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/videoeditor/Overlay;

    .line 1434
    .local v19, overlay:Landroid/media/videoeditor/Overlay;
    const-string v29, ""

    const-string/jumbo v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1435
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1438
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/media/videoeditor/OverlayFrame;

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v20, v19

    .line 1443
    check-cast v20, Landroid/media/videoeditor/OverlayFrame;

    .line 1444
    .local v20, overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 1445
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 1446
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1450
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 1451
    const-string v29, ""

    const-string/jumbo v30, "overlay_rgb_filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1454
    const-string v29, ""

    const-string/jumbo v30, "overlay_frame_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1456
    const-string v29, ""

    const-string/jumbo v30, "overlay_frame_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1458
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1460
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1470
    .end local v20           #overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    :cond_2
    const-string v29, ""

    const-string/jumbo v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1471
    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getUserAttributes()Ljava/util/Map;

    move-result-object v26

    .line 1472
    .local v26, userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1473
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1474
    .local v27, value:Ljava/lang/String;
    if-eqz v27, :cond_3

    .line 1475
    const-string v29, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1425
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v21           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v26           #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #value:Ljava/lang/String;
    :cond_4
    instance-of v0, v15, Landroid/media/videoeditor/MediaImageItem;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1426
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1478
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v19       #overlay:Landroid/media/videoeditor/Overlay;
    .restart local v21       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .restart local v26       #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v29, ""

    const-string/jumbo v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1480
    const-string v29, ""

    const-string/jumbo v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 1482
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v26           #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string v29, ""

    const-string/jumbo v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    :cond_7
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v9

    .line 1486
    .local v9, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_d

    .line 1487
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1488
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/videoeditor/Effect;

    .line 1489
    .local v8, effect:Landroid/media/videoeditor/Effect;
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1490
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1495
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1497
    instance-of v0, v8, Landroid/media/videoeditor/EffectColor;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    move-object v7, v8

    .line 1498
    check-cast v7, Landroid/media/videoeditor/EffectColor;

    .line 1499
    .local v7, colorEffect:Landroid/media/videoeditor/EffectColor;
    const-string v29, ""

    const-string v30, "color_type"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1501
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 1503
    :cond_8
    const-string v29, ""

    const-string v30, "color_value"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1538
    .end local v7           #colorEffect:Landroid/media/videoeditor/EffectColor;
    :cond_9
    :goto_5
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1506
    :cond_a
    instance-of v0, v8, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v29, v8

    .line 1507
    check-cast v29, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 1508
    .local v23, startRect:Landroid/graphics/Rect;
    const-string v29, ""

    const-string/jumbo v30, "start_l"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1510
    const-string v29, ""

    const-string/jumbo v30, "start_t"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1512
    const-string v29, ""

    const-string/jumbo v30, "start_r"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1514
    const-string v29, ""

    const-string/jumbo v30, "start_b"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v29, v8

    .line 1517
    check-cast v29, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1518
    .local v10, endRect:Landroid/graphics/Rect;
    const-string v29, ""

    const-string v30, "end_l"

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1520
    const-string v29, ""

    const-string v30, "end_t"

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1522
    const-string v29, ""

    const-string v30, "end_r"

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    const-string v29, ""

    const-string v30, "end_b"

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1526
    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v14

    .local v14, mItem:Landroid/media/videoeditor/MediaItem;
    move-object/from16 v29, v14

    .line 1527
    check-cast v29, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_b

    .line 1528
    const-string v29, ""

    const-string/jumbo v30, "is_image_clip_generated"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1530
    const-string v29, ""

    const-string v30, "generated_image_clip"

    check-cast v14, Landroid/media/videoeditor/MediaImageItem;

    .end local v14           #mItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v14}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1533
    .restart local v14       #mItem:Landroid/media/videoeditor/MediaItem;
    :cond_b
    const-string v29, ""

    const-string/jumbo v30, "is_image_clip_generated"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1540
    .end local v8           #effect:Landroid/media/videoeditor/Effect;
    .end local v10           #endRect:Landroid/graphics/Rect;
    .end local v14           #mItem:Landroid/media/videoeditor/MediaItem;
    .end local v23           #startRect:Landroid/graphics/Rect;
    :cond_c
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1543
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_d
    const-string v29, ""

    const-string/jumbo v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1545
    .end local v9           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v15           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v21           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_e
    const-string v29, ""

    const-string/jumbo v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/videoeditor/Transition;

    .line 1550
    .local v25, transition:Landroid/media/videoeditor/Transition;
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1551
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1552
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1553
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1554
    const-string v29, ""

    const-string v30, "behavior"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1555
    const-string v29, ""

    const-string/jumbo v30, "is_transition_generated"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1557
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1558
    const-string v29, ""

    const-string v30, "generated_transition_clip"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1560
    :cond_f
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 1561
    .local v4, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v4, :cond_10

    .line 1562
    const-string v29, ""

    const-string v30, "after_media_item"

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1565
    :cond_10
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v6

    .line 1566
    .local v6, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v6, :cond_11

    .line 1567
    const-string v29, ""

    const-string v30, "before_media_item"

    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1570
    :cond_11
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionSliding;

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 1571
    const-string v29, ""

    const-string v30, "direction"

    check-cast v25, Landroid/media/videoeditor/TransitionSliding;

    .end local v25           #transition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1583
    :cond_12
    :goto_7
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_6

    .line 1573
    .restart local v25       #transition:Landroid/media/videoeditor/Transition;
    :cond_13
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionAlpha;

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v24, v25

    .line 1574
    check-cast v24, Landroid/media/videoeditor/TransitionAlpha;

    .line 1575
    .local v24, ta:Landroid/media/videoeditor/TransitionAlpha;
    const-string v29, ""

    const-string v30, "blending"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1577
    const-string v29, ""

    const-string/jumbo v30, "invert"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1579
    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_12

    .line 1580
    const-string v29, ""

    const-string/jumbo v30, "mask"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 1585
    .end local v4           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v6           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v24           #ta:Landroid/media/videoeditor/TransitionAlpha;
    .end local v25           #transition:Landroid/media/videoeditor/Transition;
    :cond_14
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1586
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/AudioTrack;

    .line 1588
    .local v5, at:Landroid/media/videoeditor/AudioTrack;
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1589
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1590
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1591
    const-string v29, ""

    const-string/jumbo v30, "start_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1592
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1593
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1594
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1595
    const-string v29, ""

    const-string v30, "ducking_enabled"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1597
    const-string v29, ""

    const-string v30, "ducking_volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1599
    const-string v29, ""

    const-string v30, "ducking_threshold"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1601
    const-string v29, ""

    const-string/jumbo v30, "muted"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1602
    const-string v29, ""

    const-string/jumbo v30, "loop"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_15

    .line 1604
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1608
    :cond_15
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    .line 1610
    .end local v5           #at:Landroid/media/videoeditor/AudioTrack;
    :cond_16
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1612
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1613
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1618
    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "videoeditor.xml"

    invoke-direct/range {v29 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1620
    .local v18, out:Ljava/io/FileOutputStream;
    invoke-virtual/range {v28 .. v28}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1621
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 1622
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 1623
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 8
    .parameter "aspectRatio"

    .prologue
    .line 1629
    iput p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 1633
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1635
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/Transition;

    .line 1636
    .local v5, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    .line 1639
    .end local v5           #transition:Landroid/media/videoeditor/Transition;
    :cond_0
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1641
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1642
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 1643
    .local v4, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v3

    .line 1644
    .local v3, overlayList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 1646
    .local v2, overlay:Landroid/media/videoeditor/Overlay;
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    .end local v2           #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v2}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_1

    .line 1649
    .end local v3           #overlayList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v4           #t:Landroid/media/videoeditor/MediaItem;
    :cond_2
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 11
    .parameter "surfaceHolder"
    .parameter "fromMs"
    .parameter "toMs"
    .parameter "loop"
    .parameter "callbackAfterFrameCount"
    .parameter "listener"

    .prologue
    .line 1658
    if-nez p1, :cond_0

    .line 1659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1662
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1663
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_1

    .line 1664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_2
    if-nez p8, :cond_3

    .line 1672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1675
    :cond_3
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_4

    .line 1676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1679
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_5

    .line 1680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1683
    :cond_5
    const/4 v10, 0x0

    .line 1684
    .local v10, semAcquireDone:Z
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-nez v0, :cond_9

    .line 1686
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v10

    .line 1687
    if-nez v10, :cond_6

    .line 1688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timeout waiting for semaphore"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :catch_0
    move-exception v9

    .line 1706
    .local v9, ex:Ljava/lang/InterruptedException;
    const-string v0, "VideoEditorImpl"

    const-string v2, "The thread was interrupted"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The thread was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    .end local v9           #ex:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_7

    .line 1692
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_7
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1697
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 1699
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1712
    :cond_8
    return-void

    .line 1710
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Preview already in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPreview()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1718
    const-wide/16 v0, 0x0

    .line 1719
    .local v0, result:J
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-eqz v2, :cond_0

    .line 1721
    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopPreview()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1726
    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1727
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    move-wide v2, v0

    .line 1732
    :goto_0
    return-wide v2

    .line 1726
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1727
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    throw v2

    .line 1732
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method updateTimelineDuration()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 563
    return-void
.end method
