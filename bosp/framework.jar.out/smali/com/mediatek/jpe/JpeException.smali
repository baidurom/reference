.class public Lcom/mediatek/jpe/JpeException;
.super Ljava/lang/Exception;
.source "JpeException.java"


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iput-object v0, p0, Lcom/mediatek/jpe/JpeException;->errorMessage:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/mediatek/jpe/JpeException;->errorMessage:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, value:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/mediatek/jpe/JpeException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/jpe/JpeException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
