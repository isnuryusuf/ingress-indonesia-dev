.class public final Lcom/nianticproject/ingress/common/q/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    .line 41
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->a:J

    .line 42
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->b:J

    .line 43
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/q/a/f;->a:J

    .line 30
    iput-wide p3, p0, Lcom/nianticproject/ingress/common/q/a/f;->b:J

    .line 31
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    const/16 v2, 0x20

    shl-long v2, p1, v2

    const-wide v4, 0xffffffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v4, p3, v4

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p3

    const/4 v6, 0x4

    shl-long v6, v0, v6

    const/16 v8, 0x2c

    ushr-long/2addr v0, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xffffffffffffL

    and-long/2addr v0, v6

    xor-long/2addr v0, v2

    const/4 v2, 0x4

    shl-long v2, v0, v2

    const/16 v6, 0x2c

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    .line 32
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/common/q/a/f;

    if-eqz v2, :cond_5

    .line 85
    check-cast p1, Lcom/nianticproject/ingress/common/q/a/f;

    .line 86
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p1}, Lcom/nianticproject/ingress/common/q/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    :cond_2
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 89
    :cond_3
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/q/a/f;->a:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/common/q/a/f;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/q/a/f;->b:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/common/q/a/f;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/q/a/f;->c:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
