.class public final Lcom/nianticproject/ingress/common/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:[Lcom/google/a/d/y;

.field private c:Lcom/google/a/d/y;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/w/a;->a:Z

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/a/d/y;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    .line 33
    iput v1, p0, Lcom/nianticproject/ingress/common/w/a;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/d/u;
    .locals 5

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/w/a;->a:Z

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    const-wide/high16 v1, 0x3ff0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    array-length v3, v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/a/d/u;

    invoke-direct {v1, v0}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/y;)V

    return-object v1
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/w/a;->a:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    iget v2, p0, Lcom/nianticproject/ingress/common/w/a;->d:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    iget v3, p0, Lcom/nianticproject/ingress/common/w/a;->d:I

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    invoke-static {v2, v1}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    invoke-static {v1, v0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    iget v0, p0, Lcom/nianticproject/ingress/common/w/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/w/a;->d:I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    invoke-virtual {p1}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->b:[Lcom/google/a/d/y;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    invoke-static {v2, v1}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/ingress/common/w/a;->c:Lcom/google/a/d/y;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/a;->a:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/a;->a:Z

    .line 107
    return-void
.end method
