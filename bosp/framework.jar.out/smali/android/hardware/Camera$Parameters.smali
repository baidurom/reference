.class public Landroid/hardware/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# static fields
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final FALSE:Ljava/lang/String; = "false"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .parameter

    .prologue
    .line 1995
    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    .line 1997
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1663
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    return-void
.end method

.method private cameraFormatForPixelFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "pixel_format"

    .prologue
    .line 2569
    sparse-switch p1, :sswitch_data_0

    .line 2577
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2570
    :sswitch_0
    const-string/jumbo v0, "yuv422sp"

    goto :goto_0

    .line 2571
    :sswitch_1
    const-string/jumbo v0, "yuv420sp"

    goto :goto_0

    .line 2572
    :sswitch_2
    const-string/jumbo v0, "yuv422i-yuyv"

    goto :goto_0

    .line 2573
    :sswitch_3
    const-string/jumbo v0, "yuv420p"

    goto :goto_0

    .line 2574
    :sswitch_4
    const-string/jumbo v0, "rgb565"

    goto :goto_0

    .line 2575
    :sswitch_5
    const-string v0, "jpeg"

    goto :goto_0

    .line 2576
    :sswitch_6
    const-string v0, "bayer-rggb"

    goto :goto_0

    .line 2569
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_2
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x32315659 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 3634
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3636
    .end local p2
    :goto_0
    return p2

    .line 3635
    .restart local p2
    :catch_0
    move-exception v0

    .line 3636
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 3643
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3645
    .end local p2
    :goto_0
    return p2

    .line 3644
    .restart local p2
    :catch_0
    move-exception v0

    .line 3645
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private pixelFormatForCameraFormat(Ljava/lang/String;)I
    .locals 2
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .line 2582
    if-nez p1, :cond_1

    .line 2603
    :cond_0
    :goto_0
    return v0

    .line 2585
    :cond_1
    const-string/jumbo v1, "yuv422sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2586
    const/16 v0, 0x10

    goto :goto_0

    .line 2588
    :cond_2
    const-string/jumbo v1, "yuv420sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2589
    const/16 v0, 0x11

    goto :goto_0

    .line 2591
    :cond_3
    const-string/jumbo v1, "yuv422i-yuyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2592
    const/16 v0, 0x14

    goto :goto_0

    .line 2594
    :cond_4
    const-string/jumbo v1, "yuv420p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2595
    const v0, 0x32315659

    goto :goto_0

    .line 2597
    :cond_5
    const-string/jumbo v1, "rgb565"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2598
    const/4 v0, 0x4

    goto :goto_0

    .line 2600
    :cond_6
    const-string v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2601
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x1

    .line 3743
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 3745
    :cond_0
    :goto_0
    return v0

    .line 3744
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3745
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private set(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v5, 0x2c

    .line 2090
    if-nez p2, :cond_0

    .line 2091
    const-string v4, "(0,0,0,0,0)"

    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :goto_0
    return-void

    .line 2093
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2094
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2095
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 2096
    .local v0, area:Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2097
    .local v3, rect:Landroid/graphics/Rect;
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2098
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2100
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2102
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2104
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2105
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2106
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2107
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2094
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2110
    .end local v0           #area:Landroid/hardware/Camera$Area;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3582
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 3590
    :cond_0
    return-object v3

    .line 3584
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3585
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3588
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 3710
    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_2

    .line 3712
    :cond_0
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid area string="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 3739
    :cond_1
    :goto_0
    return-object v5

    .line 3716
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3717
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v3, 0x1

    .line 3718
    .local v3, fromIndex:I
    const/4 v7, 0x5

    new-array v1, v7, [I

    .line 3720
    .local v1, array:[I
    :cond_3
    const-string v7, "),("

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 3721
    .local v2, endIndex:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 3722
    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 3723
    new-instance v4, Landroid/graphics/Rect;

    aget v7, v1, v11

    aget v8, v1, v12

    const/4 v9, 0x2

    aget v9, v1, v9

    const/4 v10, 0x3

    aget v10, v1, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3724
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v7, Landroid/hardware/Camera$Area;

    const/4 v8, 0x4

    aget v8, v1, v8

    invoke-direct {v7, v4, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3725
    add-int/lit8 v3, v2, 0x3

    .line 3726
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_3

    .line 3728
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    move-object v5, v6

    goto :goto_0

    .line 3730
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 3731
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 3732
    .local v0, area:Landroid/hardware/Camera$Area;
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 3733
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_1

    iget v7, v0, Landroid/hardware/Camera$Area;->weight:I

    if-nez v7, :cond_1

    move-object v5, v6

    .line 3735
    goto :goto_0
.end method

.method private splitFloat(Ljava/lang/String;[F)V
    .locals 6
    .parameter "str"
    .parameter "output"

    .prologue
    .line 3621
    if-nez p1, :cond_1

    .line 3629
    :cond_0
    return-void

    .line 3623
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3624
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3625
    const/4 v1, 0x0

    .line 3626
    .local v1, index:I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3627
    .local v3, s:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3596
    if-nez p1, :cond_1

    move-object v3, v4

    .line 3605
    :cond_0
    :goto_0
    return-object v3

    .line 3598
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3599
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3601
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3602
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3604
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;[I)V
    .locals 6
    .parameter "str"
    .parameter "output"

    .prologue
    .line 3609
    if-nez p1, :cond_1

    .line 3617
    :cond_0
    return-void

    .line 3611
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3612
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3613
    const/4 v1, 0x0

    .line 3614
    .local v1, index:I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3615
    .local v3, s:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3685
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_2

    .line 3687
    :cond_0
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid range list string="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 3703
    :cond_1
    :goto_0
    return-object v3

    .line 3691
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3692
    .local v3, rangeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v1, 0x1

    .line 3694
    .local v1, fromIndex:I
    :cond_3
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 3695
    .local v2, range:[I
    const-string v5, "),("

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 3696
    .local v0, endIndex:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 3697
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 3698
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3699
    add-int/lit8 v1, v0, 0x3

    .line 3700
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_3

    .line 3702
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3652
    if-nez p1, :cond_1

    move-object v3, v5

    .line 3662
    :cond_0
    :goto_0
    return-object v3

    .line 3654
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3655
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3657
    .local v3, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3658
    .local v1, s:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3659
    .local v2, size:Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3661
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 3668
    if-nez p1, :cond_0

    .line 3678
    :goto_0
    return-object v3

    .line 3670
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3671
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 3672
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3673
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3674
    .local v0, height:Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 3677
    .end local v0           #height:Ljava/lang/String;
    .end local v2           #width:Ljava/lang/String;
    :cond_1
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    .line 2005
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2007
    .local v1, k:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2009
    .end local v1           #k:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2021
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2022
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2028
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2029
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 2121
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2830
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 3125
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3126
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 3197
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2793
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 2

    .prologue
    .line 3025
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 2

    .prologue
    .line 3073
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2921
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 2993
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3382
    const-string v0, "focus-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistances([F)V
    .locals 2
    .parameter "output"

    .prologue
    .line 3320
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 3321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output must be a float array with three elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3324
    :cond_1
    const-string v0, "focus-distances"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    .line 3325
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2961
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 3003
    const-string v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    .prologue
    .line 2299
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    .prologue
    .line 2280
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .locals 4

    .prologue
    .line 2248
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    const-string v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 2

    .prologue
    .line 3050
    const-string/jumbo v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 2

    .prologue
    .line 3472
    const-string/jumbo v0, "max-num-detected-faces-hw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 2

    .prologue
    .line 3336
    const-string/jumbo v0, "max-num-focus-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 2

    .prologue
    .line 3404
    const-string/jumbo v0, "max-num-metering-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 2

    .prologue
    .line 3262
    const-string/jumbo v0, "max-zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3448
    const-string/jumbo v0, "metering-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMinExposureCompensation()I
    .locals 2

    .prologue
    .line 3061
    const-string/jumbo v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 2547
    const-string/jumbo v0, "picture-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureSize()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 2506
    const-string/jumbo v1, "picture-size"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 2220
    const-string/jumbo v1, "preferred-preview-size-for-video"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2221
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 2459
    const-string/jumbo v0, "preview-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewFpsRange([I)V
    .locals 2
    .parameter "range"

    .prologue
    .line 2366
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2367
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "range must be an array with two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2370
    :cond_1
    const-string/jumbo v0, "preview-fps-range"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 2371
    return-void
.end method

.method public getPreviewFrameRate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2324
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 2169
    const-string/jumbo v1, "preview-size"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2878
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2851
    const-string v1, "antibanding-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2852
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2814
    const-string v1, "effect-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2815
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2942
    const-string v1, "flash-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2982
    const-string v1, "focus-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2983
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2260
    const-string v1, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2558
    const-string/jumbo v5, "picture-format-values"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2559
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2560
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2561
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 2562
    .local v0, f:I
    if-eqz v0, :cond_0

    .line 2563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2565
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2517
    const-string/jumbo v1, "picture-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2473
    const-string/jumbo v5, "preview-format-values"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2474
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2475
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2476
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 2477
    .local v0, f:I
    if-eqz v0, :cond_0

    .line 2478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2480
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 2391
    const-string/jumbo v1, "preview-fps-range-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2392
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2336
    const-string/jumbo v1, "preview-frame-rate-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2337
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2180
    const-string/jumbo v1, "preview-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2905
    const-string/jumbo v1, "scene-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2906
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2200
    const-string/jumbo v1, "video-size-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2201
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2773
    const-string/jumbo v1, "whitebalance-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2774
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 3013
    const-string/jumbo v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVideoStabilization()Z
    .locals 2

    .prologue
    .line 3562
    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3563
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2746
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 3224
    const-string/jumbo v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3276
    const-string/jumbo v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 2

    .prologue
    .line 3139
    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3140
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .locals 2

    .prologue
    .line 3211
    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSmoothZoomSupported()Z
    .locals 2

    .prologue
    .line 3286
    const-string/jumbo v1, "smooth-zoom-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3287
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoSnapshotSupported()Z
    .locals 2

    .prologue
    .line 3525
    const-string/jumbo v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3526
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 2

    .prologue
    .line 3575
    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3576
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isZoomSupported()Z
    .locals 2

    .prologue
    .line 3248
    const-string/jumbo v1, "zoom-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3249
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2057
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    .prologue
    .line 2723
    const-string v0, "gps-latitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2724
    const-string v0, "gps-longitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2725
    const-string v0, "gps-altitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2726
    const-string v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2727
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2728
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2086
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2067
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2068
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :goto_0
    return-void

    .line 2071
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 2072
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2076
    :cond_3
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .parameter "antibanding"

    .prologue
    .line 2840
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 3110
    const-string v1, "auto-exposure-lock"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    return-void

    .line 3110
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 3180
    const-string v1, "auto-whitebalance-lock"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    return-void

    .line 3180
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2803
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3039
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3040
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2931
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3392
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v0, "focus-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 3393
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2971
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 2
    .parameter "altitude"

    .prologue
    .line 2695
    const-string v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 2676
    const-string v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 2686
    const-string v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "processing_method"

    .prologue
    .line 2715
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 2705
    const-string v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2290
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2291
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2271
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2272
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2237
    const-string v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2238
    const-string v0, "jpeg-thumbnail-height"

    invoke-virtual {p0, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2239
    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3459
    .local p1, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v0, "metering-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 3460
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 2531
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2537
    :cond_0
    const-string/jumbo v1, "picture-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method public setPictureSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2496
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "picture-size"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 2441
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 2442
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2447
    :cond_0
    const-string/jumbo v1, "preview-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2353
    const-string/jumbo v0, "preview-fps-range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .parameter "fps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2311
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2312
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "preview-size"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 2
    .parameter "hint"

    .prologue
    .line 3494
    const-string/jumbo v1, "recording-hint"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    return-void

    .line 3494
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 2660
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 2662
    :cond_0
    const-string/jumbo v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    return-void

    .line 2664
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2894
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 3550
    const-string/jumbo v1, "video-stabilization"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    return-void

    .line 3550
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2759
    const-string/jumbo v1, "whitebalance"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2760
    .local v0, oldValue:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2763
    :goto_0
    return-void

    .line 2761
    :cond_0
    const-string/jumbo v1, "whitebalance"

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    const-string v1, "auto-whitebalance-lock"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3238
    const-string/jumbo v0, "zoom"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3239
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .parameter "flattened"

    .prologue
    .line 2041
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2043
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2044
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2045
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2046
    .local v2, kv:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2047
    .local v3, pos:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 2050
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2051
    .local v1, k:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2052
    .local v5, v:Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2054
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #kv:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v5           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method
