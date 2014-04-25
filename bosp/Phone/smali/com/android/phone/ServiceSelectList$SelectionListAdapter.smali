.class Lcom/android/phone/ServiceSelectList$SelectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ServiceSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ServiceSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ServiceSelectList$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/ServiceSelectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ServiceSelectList;Landroid/content/Context;)V
    .locals 10
    .parameter
    .parameter "ctx"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    .line 205
    invoke-static {p2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 206
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    .line 207
    .local v7, info:Landroid/provider/Telephony$SIMInfo;
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    new-instance v1, Lcom/android/phone/ServiceSelectList$SimItem;

    invoke-direct {v1, p1, v7}, Lcom/android/phone/ServiceSelectList$SimItem;-><init>(Lcom/android/phone/ServiceSelectList;Landroid/provider/Telephony$SIMInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v7           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, offText:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    new-instance v0, Lcom/android/phone/ServiceSelectList$SimItem;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/ServiceSelectList$SimItem;-><init>(Lcom/android/phone/ServiceSelectList;Ljava/lang/String;IJ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/ServiceSelectList;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ServiceSelectList$SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/ServiceSelectList$SimItem;>;"
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    .line 201
    return-void
.end method

.method private setImageSim(Landroid/widget/RelativeLayout;Lcom/android/phone/ServiceSelectList$SimItem;)V
    .locals 5
    .parameter "imageSim"
    .parameter "simItem"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 308
    iget-boolean v1, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 309
    iget v1, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    invoke-static {v1}, Lcom/android/phone/Utils;->getSimColorResource(I)I

    move-result v0

    .line 310
    .local v0, resColor:I
    if-ltz v0, :cond_0

    .line 311
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 322
    .end local v0           #resColor:I
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v1, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mColor:I

    if-ne v1, v4, :cond_2

    .line 316
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    const v1, 0x20200f5

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageStatus(Landroid/widget/ImageView;Lcom/android/phone/ServiceSelectList$SimItem;)V
    .locals 4
    .parameter "imageStatus"
    .parameter "simItem"

    .prologue
    .line 294
    iget-boolean v2, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    #getter for: Lcom/android/phone/ServiceSelectList;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v2}, Lcom/android/phone/ServiceSelectList;->access$200(Lcom/android/phone/ServiceSelectList;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    iget v3, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v1

    .line 296
    .local v1, status:I
    invoke-static {v1}, Lcom/android/phone/Utils;->getStatusResource(I)I

    move-result v0

    .line 297
    .local v0, res:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 298
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    .end local v0           #res:I
    .end local v1           #status:I
    :cond_0
    :goto_0
    return-void

    .line 301
    .restart local v0       #res:I
    .restart local v1       #status:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/ServiceSelectList$SimItem;)V
    .locals 4
    .parameter "textName"
    .parameter "textNum"
    .parameter "simItem"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 345
    iget-object v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    iget-boolean v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p3, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_1
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setText3G(Landroid/widget/TextView;Lcom/android/phone/ServiceSelectList$SimItem;I)V
    .locals 2
    .parameter "text3G"
    .parameter "simItem"
    .parameter "position"

    .prologue
    .line 325
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    const-string v0, "OP02"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    #getter for: Lcom/android/phone/ServiceSelectList;->mSelected:I
    invoke-static {v0}, Lcom/android/phone/ServiceSelectList;->access$100(Lcom/android/phone/ServiceSelectList;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method

.method private setTextNumFormat(Landroid/widget/TextView;Lcom/android/phone/ServiceSelectList$SimItem;)V
    .locals 4
    .parameter "textNumFormat"
    .parameter "simItem"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 266
    iget-boolean v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mIsSim:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 275
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 283
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p2, Lcom/android/phone/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewHolderId(Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 335
    const v0, 0x7f07010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->textName:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f070110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->textNum:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f070111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->ckRadioOn:Landroid/widget/RadioButton;

    .line 342
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHas3GService()I
    .locals 4

    .prologue
    .line 227
    const/4 v1, -0x1

    .line 228
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ServiceSelectList$SimItem;

    .line 237
    .local v2, item:Lcom/android/phone/ServiceSelectList$SimItem;
    iget-boolean v3, v2, Lcom/android/phone/ServiceSelectList$SimItem;->has3GCapability:Z

    if-eqz v3, :cond_1

    .line 238
    move v1, v0

    .line 242
    .end local v2           #item:Lcom/android/phone/ServiceSelectList$SimItem;
    :cond_0
    return v1

    .line 228
    .restart local v2       #item:Lcom/android/phone/ServiceSelectList$SimItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 247
    if-nez p2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    #getter for: Lcom/android/phone/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/phone/ServiceSelectList;->access$000(Lcom/android/phone/ServiceSelectList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 249
    new-instance v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;-><init>(Lcom/android/phone/ServiceSelectList$SelectionListAdapter;)V

    .line 250
    .local v0, holder:Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->setViewHolderId(Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;Landroid/view/View;)V

    .line 251
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ServiceSelectList$SimItem;

    .line 257
    .local v1, simItem:Lcom/android/phone/ServiceSelectList$SimItem;
    iget-object v2, v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->textName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->textNum:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/ServiceSelectList$SimItem;)V

    .line 262
    iget-object v3, v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->ckRadioOn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->this$0:Lcom/android/phone/ServiceSelectList;

    #getter for: Lcom/android/phone/ServiceSelectList;->mSelected:I
    invoke-static {v2}, Lcom/android/phone/ServiceSelectList;->access$100(Lcom/android/phone/ServiceSelectList;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 263
    return-object p2

    .line 254
    .end local v0           #holder:Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;
    .end local v1           #simItem:Lcom/android/phone/ServiceSelectList$SimItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;
    goto :goto_0

    .line 262
    .restart local v1       #simItem:Lcom/android/phone/ServiceSelectList$SimItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
