.class public Lyi/util/IDHelper;
.super Ljava/lang/Object;
.source "IDHelper.java"


# static fields
.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

#the value of this static final field might be set in the static constructor
.field public static final DR_LOCK_MUSIC_DEFAULT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DR_LOCK_MUSIC_PAUSE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DR_LOCK_MUSIC_PLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DR_MEDIA_STOP:I = 0x0

.field private static final ID:Ljava/lang/String; = "id"

#the value of this static final field might be set in the static constructor
.field public static final ID_ALBUM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_BTN_NEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_BTN_PLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_BTN_PREV:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_CANCEL_BUTTON:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_CUSTOM_LIST:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_EMPTY_TEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_OK_BUTTON:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ID_VOICE_LIST:I = 0x0

.field private static final INTERNALR:Ljava/lang/String; = "com.android.internal.R"

.field private static final LAYOUT:Ljava/lang/String; = "layout"

#the value of this static final field might be set in the static constructor
.field public static final LAYOUT_RINGTONE_CUSTOM_ITEM:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LAYOUT_SELDLG_SINGLE_HOLO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LAYOUT_YI_RINGTONE:I = 0x0

.field private static final STRING:Ljava/lang/String; = "string"

#the value of this static final field might be set in the static constructor
.field public static final STR_12_HOUR_FORMAT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_24_HOUR_FORMAT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_DESP_TARGET_UNLOCK:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_LOCK_PAUSE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_LOCK_PLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_LOCK_STOP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_NUMERIC_DATA_FORMAT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_NUMERIC_DATA_TEMP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_DEFAULT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_PICK:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_PICK_CUST_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_PICK_NO_SEL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_PICK_SD_UNMOUNT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STR_RING_SILENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IDHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "ok_button"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    .line 13
    const-string v0, "btn_play"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_BTN_PLAY:I

    .line 14
    const-string v0, "voice_list"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_VOICE_LIST:I

    .line 15
    const-string v0, "empty_text"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_EMPTY_TEXT:I

    .line 16
    const-string v0, "custom_list"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_CUSTOM_LIST:I

    .line 17
    const-string v0, "album"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_ALBUM:I

    .line 18
    const-string v0, "btn_prev"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_BTN_PREV:I

    .line 19
    const-string v0, "cancel_button"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    .line 20
    const-string v0, "btn_next"

    invoke-static {v0}, Lyi/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->ID_BTN_NEXT:I

    .line 22
    const-string v0, "yi_ringtone"

    invoke-static {v0}, Lyi/util/IDHelper;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->LAYOUT_YI_RINGTONE:I

    .line 23
    const-string v0, "select_dialog_singlechoice_holo"

    invoke-static {v0}, Lyi/util/IDHelper;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->LAYOUT_SELDLG_SINGLE_HOLO:I

    .line 24
    const-string v0, "ringtone_custom_item"

    invoke-static {v0}, Lyi/util/IDHelper;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->LAYOUT_RINGTONE_CUSTOM_ITEM:I

    .line 26
    const-string v0, "ringtone_picker_nothing_selectecd"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_PICK_NO_SEL:I

    .line 27
    const-string v0, "description_target_unlock"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_DESP_TARGET_UNLOCK:I

    .line 28
    const-string v0, "ringtone_picker_custom_title"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_PICK_CUST_TITLE:I

    .line 29
    const-string v0, "ringtone_picker_sdcard_unmount"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_PICK_SD_UNMOUNT:I

    .line 30
    const-string v0, "ringtone_default"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_DEFAULT:I

    .line 31
    const-string v0, "ringtone_silent"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_SILENT:I

    .line 32
    const-string v0, "ringtone_picker_title"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_RING_PICK:I

    .line 33
    const-string v0, "numeric_date_template"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_NUMERIC_DATA_TEMP:I

    .line 34
    const-string v0, "twenty_four_hour_time_format"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_24_HOUR_FORMAT:I

    .line 35
    const-string v0, "twelve_hour_time_format"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_12_HOUR_FORMAT:I

    .line 36
    const-string v0, "numeric_date_format"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_NUMERIC_DATA_FORMAT:I

    .line 37
    const-string v0, "lockscreen_transport_pause_description"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_LOCK_PAUSE:I

    .line 38
    const-string v0, "lockscreen_transport_play_description"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_LOCK_PLAY:I

    .line 39
    const-string v0, "lockscreen_transport_stop_description"

    invoke-static {v0}, Lyi/util/IDHelper;->getStringByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->STR_LOCK_STOP:I

    .line 41
    const-string v0, "zz_lockscreen_music_play"

    invoke-static {v0}, Lyi/util/IDHelper;->getDrawableByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->DR_LOCK_MUSIC_PLAY:I

    .line 42
    const-string v0, "ic_media_stop"

    invoke-static {v0}, Lyi/util/IDHelper;->getDrawableByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->DR_MEDIA_STOP:I

    .line 43
    const-string v0, "zz_lockscreen_music_default"

    invoke-static {v0}, Lyi/util/IDHelper;->getDrawableByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->DR_LOCK_MUSIC_DEFAULT:I

    .line 44
    const-string v0, "zz_lockscreen_music_pause"

    invoke-static {v0}, Lyi/util/IDHelper;->getDrawableByName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lyi/util/IDHelper;->DR_LOCK_MUSIC_PAUSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 87
    const-string v0, "com.android.internal.R"

    const-string v1, "drawable"

    invoke-static {v0, v1, p0}, Lyi/util/IDHelper;->getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "cls"
    .parameter "subcls"
    .parameter "field"

    .prologue
    .line 47
    const/4 v5, -0x1

    .line 49
    .local v5, id:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v7

    .line 51
    .local v7, subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 52
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, clsName:Ljava/lang/String;
    const-string v8, "IDHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clsName is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 56
    aget-object v8, v7, v4

    invoke-virtual {v8, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 57
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 58
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 59
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 75
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsName:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v7           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v5

    .line 52
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #clsName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 69
    .local v2, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 73
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getIdByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 78
    const-string v0, "com.android.internal.R"

    const-string v1, "id"

    invoke-static {v0, v1, p0}, Lyi/util/IDHelper;->getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 81
    const-string v0, "com.android.internal.R"

    const-string v1, "layout"

    invoke-static {v0, v1, p0}, Lyi/util/IDHelper;->getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 84
    const-string v0, "com.android.internal.R"

    const-string v1, "string"

    invoke-static {v0, v1, p0}, Lyi/util/IDHelper;->getId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
