.class Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;

.field final synthetic val$finalCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$finalConn:Lcom/android/internal/telephony/Connection;

.field final synthetic val$finalInfo:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$pre:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/CallerInfo;ILcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iput-object p2, p0, Lcom/android/phone/CallCard$2;->val$finalInfo:Lcom/android/internal/telephony/CallerInfo;

    iput p3, p0, Lcom/android/phone/CallCard$2;->val$pre:I

    iput-object p4, p0, Lcom/android/phone/CallCard$2;->val$finalCall:Lcom/android/internal/telephony/Call;

    iput-object p5, p0, Lcom/android/phone/CallCard$2;->val$finalConn:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 735
    iget-object v0, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->val$finalInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, p0, Lcom/android/phone/CallCard$2;->val$pre:I

    iget-object v4, p0, Lcom/android/phone/CallCard$2;->val$finalCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/CallCard$2;->val$finalConn:Lcom/android/internal/telephony/Connection;

    #calls: Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 736
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)Landroid/view/ViewGroup;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->onYellowInfoLoadComplete([Ljava/lang/Object;)V

    .line 737
    return-void
.end method
