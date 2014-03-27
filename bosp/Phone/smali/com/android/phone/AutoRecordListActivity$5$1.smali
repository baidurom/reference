.class Lcom/android/phone/AutoRecordListActivity$5$1;
.super Ljava/lang/Object;
.source "AutoRecordListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRecordListActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/AutoRecordListActivity$5;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRecordListActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/AutoRecordListActivity$5$1;->this$1:Lcom/android/phone/AutoRecordListActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity$5$1;->this$1:Lcom/android/phone/AutoRecordListActivity$5;

    iget-object v0, v0, Lcom/android/phone/AutoRecordListActivity$5;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #getter for: Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AutoRecordListActivity;->access$600(Lcom/android/phone/AutoRecordListActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c028d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    return-void
.end method
