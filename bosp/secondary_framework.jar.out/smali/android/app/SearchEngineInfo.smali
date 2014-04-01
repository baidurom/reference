.class public final Landroid/app/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON:I = 0x2

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field private static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "SearchEngineInfo"

    sput-object v0, Landroid/app/SearchEngineInfo;->TAG:Ljava/lang/String;

    .line 233
    new-instance v0, Landroid/app/SearchEngineInfo$1;

    invoke-direct {v0}, Landroid/app/SearchEngineInfo$1;-><init>()V

    sput-object v0, Landroid/app/SearchEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v9, 0x3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Landroid/app/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 102
    sget-object v6, Landroid/app/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchEngineInfo consturctor called, search engine name is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 105
    .local v5, res:Landroid/content/res/Resources;
    const-string v6, "array"

    const-string v7, "com.mediatek"

    invoke-virtual {v5, p2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, id_data:I
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 108
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 109
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No data found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_0
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    .line 112
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid number of fields - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    :cond_1
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has an empty search URI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 121
    .local v4, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, language:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 123
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, language_str:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v9

    const-string v8, "{language}"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 130
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v10

    const-string v8, "{language}"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 134
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v0, v6, v11

    .line 135
    .local v0, enc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    const-string v0, "UTF-8"

    .line 137
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aput-object v0, v6, v11

    .line 141
    :cond_4
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v9

    const-string v8, "{inputEncoding}"

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 143
    iget-object v6, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v10

    const-string v8, "{inputEncoding}"

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 145
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 254
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "templateUri"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    :goto_0
    return-object v2

    .line 216
    :cond_0
    iget-object v3, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 218
    .local v1, enc:Ljava/lang/String;
    :try_start_0
    const-string v3, "{searchTerms}"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Landroid/app/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured when encoding query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSpecifiedSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:Landroid/app/SearchEngineInfo;
    new-instance v0, Landroid/app/SearchEngineInfo;

    .end local v0           #result:Landroid/app/SearchEngineInfo;
    invoke-direct {v0, p0, p1}, Landroid/app/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .restart local v0       #result:Landroid/app/SearchEngineInfo;
    return-object v0
.end method

.method private searchUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private suggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public faviconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/app/SearchEngineInfo;->searchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/app/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keyWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/app/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngineInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/app/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 267
    return-void
.end method
