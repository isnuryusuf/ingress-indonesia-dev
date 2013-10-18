.class final Lcom/nianticproject/ingress/common/scanner/visuals/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/d/u;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lcom/google/a/d/u;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->a:Lcom/google/a/d/u;

    .line 118
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->b:F

    .line 119
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->c:F

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)F
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->c:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)Lcom/google/a/d/u;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->a:Lcom/google/a/d/u;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)F
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->b:F

    return v0
.end method
