.class Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private language:[B

.field private mIsDate:Z

.field private mIsLanguage:Z

.field private minute:I

.field private month:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .parameter "timezone"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 303
    iput p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    .line 304
    iput p2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    .line 305
    iput p3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    .line 306
    iput p4, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    .line 307
    iput p5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    .line 308
    iput p6, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    .line 309
    iput p7, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 312
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "language"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 319
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    const/4 v6, 0x1

    .line 323
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    if-ne v5, v6, :cond_1

    .line 325
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 327
    .local v4, tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    .end local v4           #tag:I
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    if-ne v5, v6, :cond_0

    .line 339
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 341
    .restart local v4       #tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 344
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
