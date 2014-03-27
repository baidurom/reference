.class Lcom/android/phone/IPCallWhiteListActivity$5$1;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IPCallWhiteListActivity$5;


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$5$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$5$1;->this$1:Lcom/android/phone/IPCallWhiteListActivity$5;

    iget-object v0, v0, Lcom/android/phone/IPCallWhiteListActivity$5;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #getter for: Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c028d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 303
    return-void
.end method
