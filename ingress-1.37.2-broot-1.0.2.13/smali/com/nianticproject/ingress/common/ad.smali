.class public final Lcom/nianticproject/ingress/common/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/d/u;

.field private final b:J

.field private final c:F


# direct methods
.method public constructor <init>(Lcom/google/a/d/u;JF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ad;->a:Lcom/google/a/d/u;

    .line 22
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/ad;->b:J

    .line 23
    iput p4, p0, Lcom/nianticproject/ingress/common/ad;->c:F

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/u;)D
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ad;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, p1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ad;->a:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ad;->a:Lcom/google/a/d/u;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ad;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/ad;->c:F

    iget v1, p1, Lcom/nianticproject/ingress/common/ad;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ad;->b:J

    return-wide v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/nianticproject/ingress/common/ad;->c:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    instance-of v1, p1, Lcom/nianticproject/ingress/common/ad;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/common/ad;

    .line 81
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ad;->a(Lcom/nianticproject/ingress/common/ad;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/ad;->b:J

    iget-wide v3, p1, Lcom/nianticproject/ingress/common/ad;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
