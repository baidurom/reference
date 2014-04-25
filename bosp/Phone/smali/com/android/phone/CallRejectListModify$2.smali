.class Lcom/android/phone/CallRejectListModify$2;
.super Ljava/lang/Object;
.source "CallRejectListModify.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallRejectListModify;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRejectListModify;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRejectListModify;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/phone/CallRejectListModify$2;->this$0:Lcom/android/phone/CallRejectListModify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify$2;->this$0:Lcom/android/phone/CallRejectListModify;

    invoke-virtual {v0}, Lcom/android/phone/CallRejectListModify;->finish()V

    .line 329
    return-void
.end method
