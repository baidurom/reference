.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 48
    .local v3, fragment:I
    if-lez v3, :cond_0

    .line 49
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 52
    :cond_0
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 53
    .local v4, query:I
    if-lez v4, :cond_1

    .line 54
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_1
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 58
    .local v2, filenamePos:I
    if-ltz v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, filename:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 66
    .local v0, dotPos:I
    if-ltz v0, :cond_3

    .line 67
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .end local v0           #dotPos:I
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenamePos:I
    .end local v3           #fragment:I
    .end local v4           #query:I
    :goto_1
    return-object v5

    .restart local v2       #filenamePos:I
    .restart local v3       #fragment:I
    .restart local v4       #query:I
    :cond_2
    move-object v1, p0

    .line 58
    goto :goto_0

    .line 72
    .end local v2           #filenamePos:I
    .end local v3           #fragment:I
    .end local v4           #query:I
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 95
    invoke-static {p0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 115
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 90
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .parameter "extension"

    .prologue
    .line 104
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 81
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mimeType"
    .parameter "url"
    .parameter "contentDisposition"

    .prologue
    .line 133
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, filename:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 140
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_1
    const/4 v1, 0x0

    .line 144
    .local v1, extension:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 145
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 146
    .local v0, dotPos:I
    if-ltz v0, :cond_3

    .line 147
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .end local v0           #dotPos:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, newMimeType:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 157
    move-object p1, v3

    .line 179
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #newMimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 149
    .restart local v0       #dotPos:I
    .restart local v1       #extension:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 152
    .end local v0           #dotPos:I
    :cond_4
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 159
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "text/vnd.wap.wml"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    const-string v4, "application/vnd.wap.xhtml+xml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "application/xhtml+xml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    :cond_6
    const-string/jumbo p1, "text/html"

    goto :goto_1
.end method
