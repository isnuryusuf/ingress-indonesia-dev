.class public final Lcom/nianticproject/ingress/common/w/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "StopWatch"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/al;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/w/al;->b:J

    .line 16
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/w/al;->c:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/al;->d:Z

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w/al;->a:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/w/al;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/w/al;->b:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/al;->d:Z

    .line 43
    return-object p0
.end method

.method public final b()Lcom/nianticproject/ingress/common/w/al;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/w/al;->c:J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/al;->d:Z

    .line 54
    return-object p0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/w/al;->d:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/w/al;->b:J

    sub-long/2addr v0, v2

    .line 73
    :goto_0
    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    .line 71
    :cond_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/w/al;->c:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/w/al;->b:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
