.class final Lcom/nianticproject/ingress/common/scanner/visuals/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/bm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/d/u;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/bj;Lcom/google/a/d/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bl;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bl;->a:Lcom/google/a/d/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 289
    check-cast p1, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    check-cast p2, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    invoke-static {p2}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bl;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/google/a/d/u;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bl;->a:Lcom/google/a/d/u;

    invoke-virtual {v2, v3}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
