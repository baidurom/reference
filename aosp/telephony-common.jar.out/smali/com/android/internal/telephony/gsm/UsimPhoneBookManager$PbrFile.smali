.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# instance fields
.field mAasFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAdnFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAnrFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCcpFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEmailFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mExt1Fileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mGasFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mIapCount:I

.field mSliceCount:I

.field mSneFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    .line 1517
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    .line 1516
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mIapCount:I

    .line 1518
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1519
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    .line 1520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    .line 1521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    .line 1522
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    .line 1523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    .line 1524
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    .line 1525
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    .line 1526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    .line 1528
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    .line 1529
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1530
    .local v2, record:[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, v2

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1531
    .local v1, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1532
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    goto :goto_0

    .line 1534
    .end local v1           #recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v2           #record:[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V
    .locals 10
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .parameter "recNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/16 v8, 0xa9

    .line 1561
    const/4 v4, 0x0

    .line 1563
    .local v4, tagNumberWithinParentTag:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1564
    .local v3, tag:I
    if-ne p3, v8, :cond_1

    const/16 v5, 0xca

    if-ne v3, v5, :cond_1

    .line 1565
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v5, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1566
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1568
    :cond_1
    const-string v5, "UPBM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimPhoneBookManager parseEf tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    packed-switch v3, :pswitch_data_0

    .line 1632
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1633
    if-ne p3, v8, :cond_2

    .line 1634
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mIapCount:I

    .line 1636
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1637
    return-void

    .line 1583
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1584
    .local v0, data:[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 1585
    .local v1, efid:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1586
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1589
    .local v2, object:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iput v3, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    .line 1590
    iput p4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 1591
    iput v1, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    .line 1592
    iput p3, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    .line 1593
    if-ne p3, v8, :cond_4

    .line 1594
    iput v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 1596
    :cond_4
    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 1597
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    iput-byte v5, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    .line 1599
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pbr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1600
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1602
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1605
    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1608
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1611
    :pswitch_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1614
    :pswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1617
    :pswitch_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1620
    :pswitch_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1623
    :pswitch_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1600
    :pswitch_data_1
    .packed-switch 0xc0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .parameter "tlv"
    .parameter "recNum"

    .prologue
    .line 1540
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1542
    .local v3, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1543
    .local v1, tag:I
    packed-switch v1, :pswitch_data_0

    .line 1554
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1555
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    return-void

    .line 1547
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1548
    .local v0, data:[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1549
    .local v2, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V

    goto :goto_0

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
