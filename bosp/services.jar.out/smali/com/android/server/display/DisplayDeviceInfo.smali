.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final EXTRA_TYPE_HDMI_MHL:I = 0x1

.field public static final EXTRA_TYPE_LCM:I = 0x0

.field public static final EXTRA_TYPE_SMARTBOOK:I = 0x2

.field public static final FLAG_DEFAULT_DISPLAY:I = 0x1

.field public static final FLAG_ROTATES_WITH_CONTENT:I = 0x2

.field public static final FLAG_SECURE:I = 0x4

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x8

.field public static final TOUCH_EXTERNAL:I = 0x2

.field public static final TOUCH_INTERNAL:I = 0x1

.field public static final TOUCH_NONE:I


# instance fields
.field public address:Ljava/lang/String;

.field public densityDpi:I

.field public flags:I

.field public height:I

.field public name:Ljava/lang/String;

.field public refreshRate:F

.field public rotation:I

.field public subtype:I

.field public touch:I

.field public type:I

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 161
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .parameter "flags"

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, msg:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, ", FLAG_DEFAULT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 245
    const-string v1, ", FLAG_ROTATES_WITH_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 248
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 251
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static touchToString(I)Ljava/lang/String;
    .locals 1
    .parameter "touch"

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 231
    :pswitch_1
    const-string v0, "INTERNAL"

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "EXTERNAL"

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 198
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 199
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 200
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 201
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 202
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 203
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 204
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 205
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 206
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 207
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 208
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 209
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 173
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->equals(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public setAssumedDensityForExternalDisplay(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 167
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 168
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->touchToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
