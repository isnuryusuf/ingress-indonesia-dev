.class public final Lcom/nianticproject/ingress/common/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/common/q/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    .line 24
    iput p2, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    .line 25
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/q/a;)I
    .locals 2
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    iget v1, p1, Lcom/nianticproject/ingress/common/q/a;->a:I

    if-ne v0, v1, :cond_0

    .line 71
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    iget v1, p1, Lcom/nianticproject/ingress/common/q/a;->b:I

    sub-int/2addr v0, v1

    .line 73
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    iget v1, p1, Lcom/nianticproject/ingress/common/q/a;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/q/a;
    .locals 5
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/a/d/u;->b()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/a/d/u;->e()D

    move-result-wide v2

    new-instance v4, Lcom/nianticproject/ingress/common/q/a;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/q/b;->d(D)I

    move-result v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->e(D)I

    move-result v0

    invoke-direct {v4, v2, v0}, Lcom/nianticproject/ingress/common/q/a;-><init>(II)V

    return-object v4
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    return v0
.end method

.method public final c()Lcom/google/a/d/u;
    .locals 4

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->c(D)D

    move-result-wide v0

    iget v2, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/q/b;->b(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/nianticproject/ingress/common/q/a;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/q/a;->a(Lcom/nianticproject/ingress/common/q/a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    instance-of v0, p1, Lcom/nianticproject/ingress/common/q/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nianticproject/ingress/common/q/a;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/q/a;->a(Lcom/nianticproject/ingress/common/q/a;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nianticproject/ingress/common/q/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/q/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
