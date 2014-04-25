.class public Lcom/android/phone/VTCallUtils;
.super Ljava/lang/Object;
.source "VTCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VTCallUtils$VTTimingMode;,
        Lcom/android/phone/VTCallUtils$VTScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTCallUtils"

.field private static final VDBG:Z = true

.field public static final VT_CALL_END:Ljava/lang/String; = "android.phone.extra.VT_CALL_END"

.field public static final VT_CALL_START:Ljava/lang/String; = "android.phone.extra.VT_CALL_START"

.field static final vtNumbers_default:[Ljava/lang/String;

.field static final vtNumbers_none:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12531"

    aput-object v1, v0, v2

    const-string v1, "+8612531"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/VTCallUtils;->vtNumbers_none:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12535"

    aput-object v1, v0, v2

    const-string v1, "13800100011"

    aput-object v1, v0, v3

    const-string v1, "+8612535"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+8613800100011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/VTCallUtils;->vtNumbers_default:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method public static checkVTFile()V
    .locals 7

    .prologue
    .line 88
    const-string v5, "start checkVTFile() ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 89
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    const-string v5, "checkVTFile() : the default pic file not exists , create it ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020258

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, btp1:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    const-string v5, "checkVTFile() : the default user select pic file not exists , create it ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 109
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020258

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, btp2:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .end local v1           #btp2:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    const-string v5, "checkVTFile() : the default pic2 file not exists , create it ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 123
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020258

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    .local v2, btp3:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    .end local v2           #btp3:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 135
    const-string v5, "checkVTFile() : the default user select pic2 file not exists , create it ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 138
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020258

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 139
    .local v3, btp4:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    .end local v3           #btp4:Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    const-string v5, "end checkVTFile() ! "

    invoke-static {v5}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 149
    return-void

    .line 98
    :catch_0
    move-exception v4

    .line 99
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 114
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 128
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 143
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static checkVTTimingMode(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTTimingMode;
    .locals 4
    .parameter "number"

    .prologue
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/phone/VTCallUtils;->vtNumbers_none:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v1, mArrayList_none:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/phone/VTCallUtils;->vtNumbers_default:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v0, mArrayList_default:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 212
    sget-object v2, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/android/phone/VTCallUtils$VTTimingMode;

    .line 224
    :goto_0
    return-object v2

    .line 215
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 219
    sget-object v2, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/phone/VTCallUtils$VTTimingMode;

    goto :goto_0

    .line 224
    :cond_1
    sget-object v2, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/phone/VTCallUtils$VTTimingMode;

    goto :goto_0
.end method

.method public static isVTCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 354
    if-nez p0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 51
    const-string v0, "VTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static placeVTCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;I)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "simId"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 228
    const/4 v4, 0x0

    .line 230
    .local v4, status:I
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeVTCall: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "simId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 232
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 350
    :goto_0
    return v6

    .line 235
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isIdleSsString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    const-string v7, "the number for VT call is idle ss string"

    invoke-static {v7}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "VTCallUtils"

    const-string v7, "Exception from vtDial()"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v4, 0x2

    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :goto_1
    move v6, v4

    .line 350
    goto :goto_0

    .line 240
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    instance-of v7, p0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v7, :cond_3

    .line 241
    :cond_2
    const-string v7, "the number for VT call is idle uri string"

    invoke-static {v7}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/VTInCallScreenFlags;->reset()V

    .line 246
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 247
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/VTSettingUtils;->updateVTSettingState()V

    .line 248
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> placeVTCall(): simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, nCSNetType:I
    if-nez p3, :cond_8

    .line 254
    const-string v7, "gsm.cs.network.type"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 264
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> placeVTCall(): nCSNetType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 266
    if-eq v9, v3, :cond_5

    if-ne v6, v3, :cond_6

    .line 267
    :cond_5
    const/4 v4, 0x3

    .line 270
    :cond_6
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    if-nez v6, :cond_7

    .line 271
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.phone.extra.VT_CALL_START"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 274
    :cond_7
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTIsMT:Z

    .line 275
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v7, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 276
    const-string v6, "- set VTManager open ! "

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V

    .line 284
    const-string v6, "- finish set VTManager open ! "

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v6, :cond_9

    .line 288
    const-string v6, "- set VTManager ready ! "

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 290
    const-string v6, "- finish set VTManager ready ! "

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 295
    :goto_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->placeCallRegister(Lcom/android/internal/telephony/Phone;)V

    .line 301
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p0, p1, v7}, Lcom/android/internal/telephony/gemini/MTKCallManager;->vtDialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 306
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vtDial() returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 307
    if-nez v0, :cond_b

    .line 308
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_a

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialed MMI code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 311
    const/4 v4, 0x1

    .line 312
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMMICommandToService(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :cond_8
    if-ne v9, p3, :cond_4

    .line 257
    const-string v7, "gsm.cs.network.type.2"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_2

    .line 292
    :cond_9
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    goto :goto_3

    .line 314
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    :cond_a
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 317
    :cond_b
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 324
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v1, "content"

    .line 325
    .local v1, content:Ljava/lang/String;
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 327
    .local v5, userDataObject:Ljava/lang/Object;
    if-nez v5, :cond_d

    .line 328
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 343
    .end local v5           #userDataObject:Ljava/lang/Object;
    :cond_c
    :goto_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 333
    .restart local v5       #userDataObject:Ljava/lang/Object;
    :cond_d
    instance-of v6, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_e

    .line 334
    check-cast v5, Lcom/android/internal/telephony/CallerInfo;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iput-object p2, v5, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_4

    .line 336
    .restart local v5       #userDataObject:Ljava/lang/Object;
    :cond_e
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iget-object v6, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v6, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitName"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v4, "saveMyBitmap()..."

    invoke-static {v4}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 157
    const/4 v2, 0x0

    .line 160
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 165
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :goto_2
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static showVTIncomingCallUi()V
    .locals 3

    .prologue
    .line 67
    const-string v1, "showVTIncomingCallUi()..."

    invoke-static {v1}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 71
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 74
    .local v0, app:Lcom/android/phone/PhoneApp;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 81
    const-string v1, "- updating notification from showVTIncomingCall()..."

    invoke-static {v1}, Lcom/android/phone/VTCallUtils;->log(Ljava/lang/String;)V

    .line 82
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    .line 84
    return-void

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method
