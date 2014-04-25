.class Lcom/android/phone/BaiduInCallTouchUi$4;
.super Ljava/lang/Object;
.source "BaiduInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BaiduInCallTouchUi;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BaiduInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/BaiduInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/BaiduInCallTouchUi$4;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$4;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    #getter for: Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/BaiduInCallTouchUi;->access$000(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 255
    return-void
.end method
