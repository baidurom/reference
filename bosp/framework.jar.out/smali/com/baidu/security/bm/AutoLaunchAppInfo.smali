.class public Lcom/baidu/security/bm/AutoLaunchAppInfo;
.super Ljava/lang/Object;
.source "AutoLaunchAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    }
.end annotation


# static fields
.field public static final AUTO_LAUNCH_TYPE_BACKGROUND:I = 0x2

.field public static final AUTO_LAUNCH_TYPE_BOOT_COMPLETED:I = 0x1

.field public static final AUTO_LAUNCH_TYPE_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_DISABLED_BY_THIRD_PARTY:I = 0x1

.field public static final STATE_OK:I


# instance fields
.field public appFlags:I

.field public appState:I

.field public enabled:Z

.field public launchFlags:I

.field public launchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/baidu/security/bm/AutoLaunchAppInfo$1;

    invoke-direct {v0}, Lcom/baidu/security/bm/AutoLaunchAppInfo$1;-><init>()V

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 45
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 66
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 45
    iput v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    .line 51
    iput-boolean v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 66
    iput v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 112
    return-void

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/security/bm/AutoLaunchAppInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "launchFlags"
    .parameter "appFlags"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 45
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 66
    iput v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 72
    iput-object p1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 74
    iput p3, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoLaunchAppInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
