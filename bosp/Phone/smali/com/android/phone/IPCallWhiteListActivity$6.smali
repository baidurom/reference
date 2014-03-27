.class Lcom/android/phone/IPCallWhiteListActivity$6;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IPCallWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$6;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$6;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    invoke-virtual {v0}, Lcom/android/phone/IPCallWhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/IPCallWhiteListActivity$6;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 474
    return-void
.end method
