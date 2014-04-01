.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 120
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 95
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 100
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 105
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 115
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 138
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 140
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 141
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 143
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "address"

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 471
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 473
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 475
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 487
    .end local v0           #addressType:I
    :goto_1
    return-object v3

    .line 476
    .restart local v0       #addressType:I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 478
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 483
    .end local v0           #addressType:I
    :catch_0
    move-exception v1

    .line 484
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 479
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 481
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 22
    .parameter "field"

    .prologue
    .line 494
    packed-switch p1, :pswitch_data_0

    .line 654
    :pswitch_0
    const/16 v20, 0x3

    .line 657
    :goto_0
    return v20

    .line 496
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 499
    .local v19, version:I
    if-nez v19, :cond_1

    .line 500
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 657
    .end local v19           #version:I
    :cond_0
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 502
    .restart local v19       #version:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 509
    .end local v19           #version:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 510
    .local v18, textString:[B
    if-nez v18, :cond_2

    .line 511
    const/16 v20, 0x2

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 521
    .end local v18           #textString:[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 523
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_3

    .line 524
    const/16 v20, 0x2

    goto :goto_0

    .line 528
    :cond_3
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 529
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 530
    .local v17, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_4

    .line 531
    const/16 v20, 0x1

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 528
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 541
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #i:I
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 544
    .local v12, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 549
    :cond_5
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 551
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 553
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 557
    .local v13, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 560
    .restart local v17       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_7

    .line 561
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 564
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 566
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 567
    .local v11, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 568
    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 579
    .end local v11           #flen:I
    .end local v12           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 580
    .local v16, octet:I
    if-nez v16, :cond_8

    .line 581
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 584
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 585
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 589
    .end local v16           #octet:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 590
    .local v4, date:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_9

    .line 591
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 594
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 595
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 599
    .end local v4           #date:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 601
    .local v6, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_a

    .line 602
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 605
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 610
    .end local v6           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 611
    .local v15, messageClass:[B
    if-nez v15, :cond_b

    .line 612
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 615
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 616
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 618
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 619
    :cond_c
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 621
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 622
    :cond_d
    const-string/jumbo v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 624
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 625
    :cond_e
    const-string v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 627
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 629
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 634
    .end local v15           #messageClass:[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 635
    .local v7, expiry:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_10

    .line 636
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 639
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 644
    .local v10, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 645
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 647
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 648
    .local v9, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 649
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 494
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    const/4 v0, 0x5

    .line 1338
    if-nez p0, :cond_0

    .line 1357
    :goto_0
    return v0

    .line 1342
    :cond_0
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1344
    const/4 v0, 0x3

    goto :goto_0

    .line 1345
    :cond_1
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1347
    const/4 v0, 0x1

    goto :goto_0

    .line 1348
    :cond_2
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1350
    const/4 v0, 0x2

    goto :goto_0

    .line 1351
    :cond_3
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1353
    const/4 v0, 0x4

    goto :goto_0

    .line 1356
    :cond_4
    const-string v1, "PduComposer"

    const-string v2, "checkAddressType PDU_UNKNOWN_ADDRESS_TYPE"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 810
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 811
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 812
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 816
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 817
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 820
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 832
    :cond_1
    :goto_0
    return v0

    .line 825
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 830
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 832
    goto :goto_0
.end method

.method private makeMessageBody(I)I
    .locals 32
    .parameter "pduType"

    .prologue
    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 1016
    .local v16, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1017
    .local v10, contentType:Ljava/lang/String;
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1018
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_0

    .line 1020
    const/16 v29, 0x1

    .line 1197
    :goto_0
    return v29

    .line 1023
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1026
    const/4 v5, 0x0

    .line 1027
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1033
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_4

    .line 1034
    :cond_2
    const-string v29, "PduComposer"

    const-string/jumbo v30, "makeMessageBody body == null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1039
    const/16 v29, 0x0

    goto :goto_0

    .line 1029
    :cond_3
    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_1

    .line 1044
    :cond_4
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 1046
    .local v23, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 1047
    .local v28, start:[B
    if-eqz v28, :cond_5

    .line 1048
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1049
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1057
    :cond_5
    :goto_2
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1058
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1065
    .local v15, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1066
    int-to-long v0, v15

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1070
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 1071
    .local v27, partNum:I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1072
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 1073
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 1074
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1077
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1080
    .local v11, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 1082
    .local v24, partContentType:[B
    if-nez v24, :cond_7

    .line 1084
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15           #ctLength:I
    .end local v20           #i:I
    .end local v24           #partContentType:[B
    .end local v27           #partNum:I
    .restart local v28       #start:[B
    :cond_6
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1060
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :catch_0
    move-exception v18

    .line 1061
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 1088
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15       #ctLength:I
    .restart local v20       #i:I
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v24       #partContentType:[B
    .restart local v27       #partNum:I
    :cond_7
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1090
    .local v25, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v25, :cond_9

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1100
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 1102
    .local v22, name:[B
    if-nez v22, :cond_a

    .line 1103
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 1105
    if-nez v22, :cond_a

    .line 1106
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 1107
    if-nez v22, :cond_a

    .line 1108
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    .line 1109
    if-eqz v22, :cond_8

    .line 1110
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "makeMessageBody name 1= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_8
    if-nez v22, :cond_a

    .line 1116
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v22           #name:[B
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_5

    .line 1121
    .restart local v22       #name:[B
    :cond_a
    if-eqz v22, :cond_b

    .line 1122
    const-string v29, "PduComposer"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "makeMessageBody name 2= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_b
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1128
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1129
    .local v7, charset:I
    if-eqz v7, :cond_c

    .line 1130
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1131
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1134
    :cond_c
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1135
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1136
    int-to-long v0, v13

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1140
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1142
    .local v8, contentId:[B
    if-eqz v8, :cond_d

    .line 1143
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1144
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 1145
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1152
    :cond_d
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1153
    .local v9, contentLocation:[B
    if-eqz v9, :cond_e

    .line 1154
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1155
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1159
    :cond_e
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1161
    .local v19, headerLength:I
    const/16 v17, 0x0

    .line 1162
    .local v17, dataLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 1164
    .local v26, partData:[B
    if-eqz v26, :cond_11

    .line 1165
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1166
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1187
    :cond_f
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 1188
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1147
    .end local v9           #contentLocation:[B
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v26           #partData:[B
    :cond_10
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_6

    .line 1170
    .restart local v9       #contentLocation:[B
    .restart local v17       #dataLength:I
    .restart local v19       #headerLength:I
    .restart local v26       #partData:[B
    :cond_11
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 1171
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1172
    .local v14, cr:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 1173
    .local v21, len:I
    :goto_7
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1176
    add-int v17, v17, v21

    goto :goto_7

    .line 1178
    .end local v6           #buffer:[B
    .end local v14           #cr:Ljava/io/InputStream;
    .end local v21           #len:I
    :catch_1
    move-exception v18

    .line 1179
    .local v18, e:Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1180
    .end local v18           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v18

    .line 1181
    .local v18, e:Ljava/io/IOException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v18           #e:Ljava/io/IOException;
    :catch_3
    move-exception v18

    .line 1183
    .local v18, e:Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1191
    .end local v18           #e:Ljava/lang/RuntimeException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1192
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1193
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1072
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1197
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v22           #name:[B
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #partContentType:[B
    .end local v25           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v26           #partData:[B
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method private makeNotifyInd()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 712
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 713
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 714
    iput v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 718
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 719
    const/16 v4, 0x82

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 722
    const/16 v4, 0x98

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 770
    :goto_0
    return v4

    .line 727
    :cond_1
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 728
    goto :goto_0

    .line 732
    :cond_2
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 733
    goto :goto_0

    .line 736
    :cond_3
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 737
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v1

    .line 738
    .local v1, size:J
    invoke-virtual {p0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 740
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 741
    goto :goto_0

    .line 744
    :cond_4
    const/16 v4, 0x83

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 745
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 746
    .local v0, contentLocation:[B
    if-eqz v0, :cond_5

    .line 747
    const-string v4, "PduComposer"

    const-string/jumbo v7, "makeNotifyInd contentLocation != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 753
    :goto_1
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 754
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 755
    .local v3, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_6

    .line 756
    const-string v4, "PduComposer"

    const-string/jumbo v7, "makeNotifyInd subject != null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 762
    :goto_2
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 763
    goto :goto_0

    .line 750
    .end local v3           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const-string v4, "PduComposer"

    const-string/jumbo v7, "makeNotifyInd contentLocation  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 759
    .restart local v3       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    const-string v4, "PduComposer"

    const-string/jumbo v7, "makeNotifyInd subject  = null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 766
    :cond_7
    const/16 v4, 0x95

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    .line 767
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 770
    goto/16 :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 777
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 778
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 779
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 783
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 784
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 787
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    :cond_1
    :goto_0
    return v0

    .line 792
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 797
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 802
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 803
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 664
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 665
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 666
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 670
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 671
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 674
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    :cond_1
    :goto_0
    return v0

    .line 679
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 684
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 689
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 694
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 697
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 705
    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 8

    .prologue
    const/16 v7, 0x98

    const/16 v6, 0x84

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 836
    const-string v4, "PduComposer"

    const-string/jumbo v5, "makeRetrievePdu begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 838
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 839
    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 843
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 844
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 847
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 849
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 850
    .local v1, trid:[B
    if-nez v1, :cond_2

    .line 852
    const-string v4, "PduComposer"

    const-string v5, "Transaction ID is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_0
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 917
    :cond_1
    :goto_1
    return v2

    .line 854
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    .line 863
    :cond_3
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 866
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 870
    const/4 v0, 0x0

    .line 873
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 874
    const/4 v0, 0x1

    .line 878
    :cond_4
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 879
    const/4 v0, 0x1

    .line 883
    :cond_5
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 884
    const/4 v0, 0x1

    .line 888
    :cond_6
    if-eqz v0, :cond_1

    .line 893
    const/16 v4, 0x96

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 897
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 900
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 903
    const/16 v4, 0x8f

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 906
    const/16 v4, 0x86

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 909
    const/16 v4, 0x90

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 912
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 915
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    .line 916
    const-string v2, "PduComposer"

    const-string/jumbo v4, "makeRetrievePdu end"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 917
    goto :goto_1
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 924
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 925
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 926
    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 930
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 931
    const/16 v4, 0x80

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 934
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 936
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 937
    .local v1, trid:[B
    if-nez v1, :cond_1

    .line 939
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 944
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1003
    :cond_2
    :goto_0
    return v2

    .line 949
    :cond_3
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 952
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 956
    const/4 v0, 0x0

    .line 959
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 960
    const/4 v0, 0x1

    .line 964
    :cond_4
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 965
    const/4 v0, 0x1

    .line 969
    :cond_5
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 970
    const/4 v0, 0x1

    .line 974
    :cond_6
    if-eqz v0, :cond_2

    .line 979
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 983
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 986
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 989
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 992
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 995
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 998
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1001
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move v2, v3

    .line 1003
    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 210
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 410
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter "enStr"

    .prologue
    .line 337
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 340
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 341
    .local v3, textString:[B
    if-nez v3, :cond_1

    .line 360
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 351
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 353
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 354
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 356
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 357
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 358
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 359
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 9
    .parameter "longInt"

    .prologue
    const/16 v7, 0x8

    .line 270
    move-wide v3, p1

    .line 273
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v7, :cond_0

    .line 274
    ushr-long/2addr v3, v7

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 282
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 284
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 285
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 286
    add-int/lit8 v1, v1, -0x8

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 239
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 465
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 447
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 448
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 449
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 450
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 227
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 228
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 252
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 325
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 303
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 304
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 307
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 309
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 377
    const-wide/16 v1, 0x7f

    .line 379
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 380
    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    .line 387
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 388
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 389
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 391
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 393
    add-int/lit8 v0, v0, -0x1

    .line 394
    goto :goto_1

    .line 384
    .end local v3           #temp:J
    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 397
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 426
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 427
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 202
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 158
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 160
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 175
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 180
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 185
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
