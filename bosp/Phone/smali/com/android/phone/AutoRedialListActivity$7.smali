.class Lcom/android/phone/AutoRedialListActivity$7;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$7;->this$0:Lcom/android/phone/AutoRedialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$7;->this$0:Lcom/android/phone/AutoRedialListActivity;

    invoke-virtual {v0}, Lcom/android/phone/AutoRedialListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/AutoRedialListActivity$7;->this$0:Lcom/android/phone/AutoRedialListActivity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 478
    return-void
.end method
