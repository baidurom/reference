.class Landroid/content/res/AssetManager$2;
.super Ljava/lang/Thread;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/AssetManager;->readChannelPkgsBackgroud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Landroid/content/res/AssetManager$2;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/content/res/AssetManager$2;->this$0:Landroid/content/res/AssetManager;

    #calls: Landroid/content/res/AssetManager;->readChannelPkgs()V
    invoke-static {v0}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;)V

    .line 834
    return-void
.end method
