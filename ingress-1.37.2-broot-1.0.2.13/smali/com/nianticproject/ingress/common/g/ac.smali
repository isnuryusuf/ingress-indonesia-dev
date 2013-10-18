.class public final Lcom/nianticproject/ingress/common/g/ac;
.super Lcom/nianticproject/ingress/common/g/ab;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/ab;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/ab;->d:D

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/a/d/u;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/ab;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/ab;->d:D

    .line 29
    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/g/ac;->b(Lcom/google/a/d/u;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/f;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PointIndex;

    .line 36
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/ac;->f:Lcom/google/a/d/h;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PointIndex;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/a/d/h;->b(Lcom/google/a/d/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0
.end method
