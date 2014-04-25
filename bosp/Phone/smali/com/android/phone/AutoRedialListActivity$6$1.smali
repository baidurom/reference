.class Lcom/android/phone/AutoRedialListActivity$6$1;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/AutoRedialListActivity$6;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$6$1;->this$1:Lcom/android/phone/AutoRedialListActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$6$1;->this$1:Lcom/android/phone/AutoRedialListActivity$6;

    iget-object v0, v0, Lcom/android/phone/AutoRedialListActivity$6;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    return-void
.end method
