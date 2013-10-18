.class final Lcom/nianticproject/ingress/common/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/r;

.field private b:Lcom/google/a/d/u;

.field private final c:I

.field private final d:Lcom/nianticproject/ingress/common/g/ab;

.field private e:Lcom/google/a/d/u;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/r;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w;->a:Lcom/nianticproject/ingress/common/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w;->e:Lcom/google/a/d/u;

    .line 297
    iput p2, p0, Lcom/nianticproject/ingress/common/w;->c:I

    .line 301
    new-instance v0, Lcom/nianticproject/ingress/common/g/ab;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/ab;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w;->d:Lcom/nianticproject/ingress/common/g/ab;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/r;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/w;-><init>(Lcom/nianticproject/ingress/common/r;I)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/w;)Lcom/nianticproject/ingress/common/g/h;
    .locals 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w;->b:Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w;->e:Lcom/google/a/d/u;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/w;->b:Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w;->e:Lcom/google/a/d/u;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/w;->d:Lcom/nianticproject/ingress/common/g/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w;->e:Lcom/google/a/d/u;

    iget v2, p0, Lcom/nianticproject/ingress/common/w;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/g/ab;->a(Lcom/google/a/d/u;I)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w;->d:Lcom/nianticproject/ingress/common/g/ab;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w;->a:Lcom/nianticproject/ingress/common/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/r;->c(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/v;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nianticproject/ingress/common/v;->b(Lcom/nianticproject/ingress/common/v;Lcom/nianticproject/ingress/common/w;)V

    .line 307
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w;->b:Lcom/google/a/d/u;

    .line 312
    return-void
.end method
