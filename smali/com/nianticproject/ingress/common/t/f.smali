.class final Lcom/nianticproject/ingress/common/t/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/nianticproject/ingress/common/t/f;

.field private final b:Lcom/nianticproject/ingress/common/t/b;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/t/b;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/t/f;->b:Lcom/nianticproject/ingress/common/t/b;

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->c:J

    .line 37
    return-void
.end method


# virtual methods
.method final a()J
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->d:J

    .line 41
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->d:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/t/f;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->e:J

    .line 42
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/t/f;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    .line 43
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->e:J

    return-wide v0
.end method

.method final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    .line 55
    return-void
.end method

.method final b()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/t/f;->d:J

    return-wide v0
.end method

.method final c()V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/f;->b:Lcom/nianticproject/ingress/common/t/b;

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/t/f;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/t/b;->a(JJ)V

    .line 64
    return-void
.end method

.method final d()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/f;->b:Lcom/nianticproject/ingress/common/t/b;

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/t/f;->f:J

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/t/f;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/t/b;->b(JJ)V

    .line 73
    return-void
.end method
