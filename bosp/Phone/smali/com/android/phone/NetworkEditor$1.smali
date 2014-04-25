.class Lcom/android/phone/NetworkEditor$1;
.super Ljava/lang/Object;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/NetworkEditor$1;->this$0:Lcom/android/phone/NetworkEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/NetworkEditor$1;->this$0:Lcom/android/phone/NetworkEditor;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/NetworkEditor;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkEditor;->access$002(Lcom/android/phone/NetworkEditor;I)I

    .line 71
    iget-object v0, p0, Lcom/android/phone/NetworkEditor$1;->this$0:Lcom/android/phone/NetworkEditor;

    #calls: Lcom/android/phone/NetworkEditor;->setRemovedNetworkAndFinish()V
    invoke-static {v0}, Lcom/android/phone/NetworkEditor;->access$100(Lcom/android/phone/NetworkEditor;)V

    .line 72
    return-void
.end method
