.class final Lcom/nianticproject/ingress/common/b/i;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/b/o;

.field final synthetic b:Lcom/nianticproject/ingress/common/j/c;

.field final synthetic c:Lcom/nianticproject/ingress/common/j/ab;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/o;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/j/ab;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p2, p0, Lcom/nianticproject/ingress/common/b/i;->a:Lcom/nianticproject/ingress/common/b/o;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/b/i;->b:Lcom/nianticproject/ingress/common/j/c;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/b/i;->c:Lcom/nianticproject/ingress/common/j/ab;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 7
    .parameter

    .prologue
    .line 633
    iget-object v6, p0, Lcom/nianticproject/ingress/common/b/i;->a:Lcom/nianticproject/ingress/common/b/o;

    new-instance v0, Lcom/nianticproject/ingress/common/j/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/i;->b:Lcom/nianticproject/ingress/common/j/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/c;->a:[F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/i;->b:Lcom/nianticproject/ingress/common/j/c;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/c;->b:[S

    iget-object v3, p0, Lcom/nianticproject/ingress/common/b/i;->b:Lcom/nianticproject/ingress/common/j/c;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/c;->c:[S

    iget-object v4, p0, Lcom/nianticproject/ingress/common/b/i;->b:Lcom/nianticproject/ingress/common/j/c;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/c;->d:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/b/i;->c:Lcom/nianticproject/ingress/common/j/ab;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/ai;-><init>([F[S[SLcom/badlogic/gdx/graphics/VertexAttributes;Lcom/nianticproject/ingress/common/j/ad;)V

    invoke-interface {v6, v0}, Lcom/nianticproject/ingress/common/b/o;->a(Ljava/lang/Object;)V

    .line 635
    const/4 v0, 0x0

    return-object v0
.end method
