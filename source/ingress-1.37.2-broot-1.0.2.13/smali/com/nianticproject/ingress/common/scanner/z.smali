.class public final Lcom/nianticproject/ingress/common/scanner/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 1
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/z;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/z;->a:Z

    .line 1397
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/k;->q(Lcom/nianticproject/ingress/common/scanner/k;)I

    .line 1398
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/z;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1401
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/z;->a:Z

    if-eqz v1, :cond_1

    .line 1402
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/z;->a:Z

    .line 1403
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/z;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->r(Lcom/nianticproject/ingress/common/scanner/k;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 1404
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/z;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->s(Lcom/nianticproject/ingress/common/scanner/k;)I

    .line 1407
    :cond_1
    return-void
.end method
