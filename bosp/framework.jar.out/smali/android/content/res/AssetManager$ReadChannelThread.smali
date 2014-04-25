.class Landroid/content/res/AssetManager$ReadChannelThread;
.super Ljava/lang/Thread;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadChannelThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Landroid/content/res/AssetManager$ReadChannelThread;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;Landroid/content/res/AssetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager$ReadChannelThread;-><init>(Landroid/content/res/AssetManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Landroid/content/res/AssetManager$ReadChannelThread;->this$0:Landroid/content/res/AssetManager;

    #calls: Landroid/content/res/AssetManager;->readChannelPkgs()V
    invoke-static {v0}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;)V

    .line 950
    return-void
.end method
