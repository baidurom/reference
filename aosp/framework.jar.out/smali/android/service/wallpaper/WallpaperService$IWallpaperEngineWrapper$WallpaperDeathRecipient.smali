.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;->this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "WallpaperService"

    const-string v1, "WallpaperDeathRecipient.binderDied()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;->this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    .line 998
    return-void
.end method
