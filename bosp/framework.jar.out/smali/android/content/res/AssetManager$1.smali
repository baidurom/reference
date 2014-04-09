.class Landroid/content/res/AssetManager$1;
.super Landroid/database/ContentObserver;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/AssetManager;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 805
    iput-object p1, p0, Landroid/content/res/AssetManager$1;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 808
    iget-object v0, p0, Landroid/content/res/AssetManager$1;->this$0:Landroid/content/res/AssetManager;

    #calls: Landroid/content/res/AssetManager;->readChannelPkgsBackgroud()V
    invoke-static {v0}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;)V

    .line 809
    return-void
.end method
