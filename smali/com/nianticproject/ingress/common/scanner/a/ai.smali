.class final Lcom/nianticproject/ingress/common/scanner/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/nianticproject/ingress/common/scanner/a/aj;

.field b:Lcom/nianticproject/ingress/common/scanner/a/aj;

.field c:D

.field d:D

.field e:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/a/ai;-><init>()V

    return-void
.end method


# virtual methods
.method final a(D)D
    .locals 4
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->d:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->e:D

    add-double/2addr v0, v2

    neg-double v0, v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->c:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    .line 61
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    .line 62
    iget-wide v0, p2, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->c:D

    .line 63
    iget-wide v0, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-wide v2, p2, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->d:D

    .line 64
    iget-wide v0, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->d:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    neg-double v0, v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ai;->e:D

    .line 65
    return-void
.end method
