.class Lcom/android/phone/ServiceSelectList$SimItem;
.super Ljava/lang/Object;
.source "ServiceSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ServiceSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimItem"
.end annotation


# static fields
.field public static final DESCRIPTION_LIST_ITEM_SIMID:J = -0x2L

.field public static final OFF_LIST_ITEM_SIMID:J = -0x1L


# instance fields
.field public has3GCapability:Z

.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I

.field final synthetic this$0:Lcom/android/phone/ServiceSelectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ServiceSelectList;Landroid/provider/Telephony$SIMInfo;)V
    .locals 4
    .parameter
    .parameter "siminfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->this$0:Lcom/android/phone/ServiceSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-boolean v1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->has3GCapability:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    .line 395
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 396
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 397
    iput v1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 398
    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    .line 399
    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    .line 400
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    .line 401
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mState:I

    .line 415
    iput-boolean v0, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    .line 416
    iget-object v2, p2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 417
    iget-object v2, p2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 418
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 419
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    .line 420
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    .line 421
    iget-wide v2, p2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    .line 422
    #getter for: Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/android/phone/ServiceSelectList;->access$300(Lcom/android/phone/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    iget v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    #getter for: Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/android/phone/ServiceSelectList;->access$300(Lcom/android/phone/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/ServiceSelectList$SimItem;->has3GCapability:Z

    .line 425
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 423
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/ServiceSelectList;Ljava/lang/String;IJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "color"
    .parameter "simID"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 404
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->this$0:Lcom/android/phone/ServiceSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-boolean v1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->has3GCapability:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    .line 395
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 396
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 397
    iput v1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 398
    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    .line 399
    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    .line 400
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    .line 401
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mState:I

    .line 405
    iput-object p2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 406
    iput p3, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    .line 407
    iput-boolean v1, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    .line 408
    iput-wide p4, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    .line 409
    #getter for: Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/android/phone/ServiceSelectList;->access$300(Lcom/android/phone/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 410
    iget v2, p0, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    #getter for: Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/android/phone/ServiceSelectList;->access$300(Lcom/android/phone/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/ServiceSelectList$SimItem;->has3GCapability:Z

    .line 412
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 410
    goto :goto_0
.end method
