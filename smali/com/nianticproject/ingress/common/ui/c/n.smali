.class final Lcom/nianticproject/ingress/common/ui/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/b/j;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/c/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/c/k;Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/n;->b:Lcom/nianticproject/ingress/common/ui/c/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/c/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/n;->b:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/k;->b(Lcom/nianticproject/ingress/common/ui/c/k;)V

    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->p:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->I()V

    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/n;->b:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/c/k;->c(Lcom/nianticproject/ingress/common/ui/c/k;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/util/Set;)V

    .line 165
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->s:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 170
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/n;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/c/n;->b:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/c/k;->d(Lcom/nianticproject/ingress/common/ui/c/k;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/util/Set;)V

    .line 175
    return-void
.end method
