.class Landroid/content/res/AssetManager$MContentObserver;
.super Landroid/database/ContentObserver;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 907
    iput-object p1, p0, Landroid/content/res/AssetManager$MContentObserver;->this$0:Landroid/content/res/AssetManager;

    .line 908
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 910
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 914
    iget-object v0, p0, Landroid/content/res/AssetManager$MContentObserver;->this$0:Landroid/content/res/AssetManager;

    #calls: Landroid/content/res/AssetManager;->readChannelPkgsBackgroud()V
    invoke-static {v0}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;)V

    .line 915
    return-void
.end method
