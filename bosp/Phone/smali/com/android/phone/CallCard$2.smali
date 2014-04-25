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
    .line 778
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iput-object p2, p0, Lcom/android/phone/CallCard$2;->val$finalInfo:Lcom/android/internal/telephony/CallerInfo;

    iput p3, p0, Lcom/android/phone/CallCard$2;->val$pre:I

    iput-object p4, p0, Lcom/android/phone/CallCard$2;->val$finalCall:Lcom/android/internal/telephony/Call;

    iput-object p5, p0, Lcom/android/phone/CallCard$2;->val$finalConn:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->val$finalInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, p0, Lcom/android/phone/CallCard$2;->val$pre:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CallCard$2;->val$finalCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/CallCard$2;->val$finalConn:Lcom/android/internal/telephony/Connection;

    #calls: Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 781
    return-void
.end method
