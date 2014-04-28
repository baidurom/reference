.class Lcom/baidu/internal/keyguard/hotword/WordList$Word;
.super Ljava/lang/Object;
.source "WordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/WordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Word"
.end annotation


# instance fields
.field title:Ljava/lang/String;

.field type:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "url"
    .parameter "type"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->url:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    .line 56
    return-void
.end method
