.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# instance fields
.field private mBlanked:Z

.field private final mBuiltInDisplayId:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

.field private final mPhysEx:Landroid/view/Surface$PhysicalDisplayInfoEx;

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/Surface$PhysicalDisplayInfo;)V
    .locals 1
    .parameter
    .parameter "displayToken"
    .parameter "builtInDisplayId"
    .parameter "phys"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 115
    new-instance v0, Landroid/view/Surface$PhysicalDisplayInfoEx;

    invoke-direct {v0}, Landroid/view/Surface$PhysicalDisplayInfoEx;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysEx:Landroid/view/Surface$PhysicalDisplayInfoEx;

    .line 120
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 121
    new-instance v0, Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v0, p4}, Landroid/view/Surface$PhysicalDisplayInfo;-><init>(Landroid/view/Surface$PhysicalDisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    .line 127
    return-void
.end method

.method private findDensityBucket()I
    .locals 6

    .prologue
    const/high16 v5, 0x4320

    const/high16 v4, 0x3f00

    .line 209
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v0, v1

    .line 210
    .local v0, density:I
    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    .line 211
    const/16 v1, 0x8c

    if-ge v0, v1, :cond_1

    .line 212
    const/16 v0, 0xa0

    .line 220
    :cond_0
    :goto_0
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density mapping from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v3, v3, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v0

    .line 213
    :cond_1
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    .line 214
    const/16 v0, 0xa0

    goto :goto_0

    .line 215
    :cond_2
    const/16 v1, 0x118

    if-ge v0, v1, :cond_3

    .line 216
    const/16 v0, 0xf0

    goto :goto_0

    .line 218
    :cond_3
    const/16 v0, 0x140

    goto :goto_0
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 144
    :cond_0
    return-void
.end method

.method public blankLocked()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBlanked:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/Surface;->blankDisplay(Landroid/os/IBinder;)V

    .line 228
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuiltInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 148
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 150
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 151
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 152
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 156
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget-boolean v1, v1, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v2, 0xc

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 161
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v1, :cond_4

    .line 163
    const-string v1, "ro.sf.hwrotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, hworientation:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #string@display_manager_built_in_display_name#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 168
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 169
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    const/high16 v3, 0x4320

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 170
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 171
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 172
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 174
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 175
    const-string v1, "270"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 205
    .end local v0           #hworientation:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v1

    .line 177
    .restart local v0       #hworientation:Ljava/lang/String;
    :cond_2
    const-string v1, "180"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    goto :goto_0

    .line 179
    :cond_3
    const-string v1, "90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    goto :goto_0

    .line 184
    .end local v0           #hworientation:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 185
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #string@display_manager_hdmi_display_name#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 188
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    iget v3, v3, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 192
    const-string v1, "portrait"

    const-string v2, "persist.demo.hdmirotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    goto :goto_0
.end method

.method public unblankLocked()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBlanked:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/Surface;->unblankDisplay(Landroid/os/IBinder;)V

    .line 234
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked(Landroid/view/Surface$PhysicalDisplayInfo;)Z
    .locals 2
    .parameter "phys"

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/Surface$PhysicalDisplayInfo;->equals(Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/Surface$PhysicalDisplayInfo;->copyFrom(Landroid/view/Surface$PhysicalDisplayInfo;)V

    .line 132
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
