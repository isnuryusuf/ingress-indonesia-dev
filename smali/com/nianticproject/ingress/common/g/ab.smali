.class public Lcom/nianticproject/ingress/common/g/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/h;


# instance fields
.field a:Lcom/google/a/d/u;

.field b:I

.field c:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation
.end field

.field d:D

.field e:I

.field f:Lcom/google/a/d/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/google/a/d/u;->a:Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/g/ab;->b:I

    .line 54
    const-wide/high16 v0, 0x4049

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/ab;->d:D

    .line 55
    const/16 v0, 0x14

    iput v0, p0, Lcom/nianticproject/ingress/common/g/ab;->e:I

    .line 61
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {v0}, Lcom/google/a/d/u;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    .line 62
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->c:Lcom/google/a/c/dc;

    .line 63
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->c:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final a(Lcom/google/a/d/u;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, p1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    .line 81
    iget v2, p0, Lcom/nianticproject/ingress/common/g/ab;->b:I

    if-ne v2, p2, :cond_0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/g/ab;->d:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/g/ab;->b(Lcom/google/a/d/u;I)V

    .line 84
    :cond_1
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/gameentity/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/google/a/d/u;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    .line 91
    iput p2, p0, Lcom/nianticproject/ingress/common/g/ab;->b:I

    .line 92
    :try_start_0
    const-string/jumbo v0, "SmartCapRegion.computeS2Cells"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/g/ab;->b:I

    int-to-double v1, v1

    const-wide v3, 0x41584db080000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;Lcom/google/a/d/d;)Lcom/google/a/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->f:Lcom/google/a/d/h;

    new-instance v0, Lcom/google/a/d/ae;

    invoke-direct {v0}, Lcom/google/a/d/ae;-><init>()V

    iget v1, p0, Lcom/nianticproject/ingress/common/g/ab;->e:I

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->b(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(I)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/ab;->f:Lcom/google/a/d/h;

    invoke-virtual {v0, v1}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/ab;->c:Lcom/google/a/c/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    const-string/jumbo v0, "SmartCapRegion lat: %f lon: %f radius: %d cells: %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    invoke-virtual {v3}, Lcom/google/a/d/u;->c()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/ab;->a:Lcom/google/a/d/u;

    invoke-virtual {v3}, Lcom/google/a/d/u;->f()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/common/g/ab;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/ab;->c:Lcom/google/a/c/dc;

    invoke-virtual {v3}, Lcom/google/a/c/dc;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
