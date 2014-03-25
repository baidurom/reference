.class public Lcom/baidu/internal/keyguard/slide/MusicInfo;
.super Ljava/lang/Object;
.source "MusicInfo.java"


# instance fields
.field public lrcLink:Ljava/lang/String;

.field public picSmall:Ljava/lang/String;

.field public singer:Ljava/lang/String;

.field public songid:Ljava/lang/String;

.field public songname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songname:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->singer:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->lrcLink:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->picSmall:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_name"
    .parameter "_singer"
    .parameter "_songid"
    .parameter "_lrclink"
    .parameter "_picsmall"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songname:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->singer:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songid:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->lrcLink:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->picSmall:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getLrcLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->lrcLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPicSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->picSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songid:Ljava/lang/String;

    return-object v0
.end method

.method public getSongname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songname:Ljava/lang/String;

    return-object v0
.end method

.method public setLrcLink(Ljava/lang/String;)V
    .locals 0
    .parameter "lrcLink"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->lrcLink:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPicSmall(Ljava/lang/String;)V
    .locals 0
    .parameter "picSmall"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->picSmall:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0
    .parameter "singer"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->singer:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSongid(Ljava/lang/String;)V
    .locals 0
    .parameter "songid"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSongname(Ljava/lang/String;)V
    .locals 0
    .parameter "songname"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/MusicInfo;->songname:Ljava/lang/String;

    .line 33
    return-void
.end method
