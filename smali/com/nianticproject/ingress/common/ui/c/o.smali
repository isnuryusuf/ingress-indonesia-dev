.class public final Lcom/nianticproject/ingress/common/ui/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/c/q;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/scanner/ej;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/o;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/o;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    if-nez v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/o;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->tmp()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/high16 v3, 0x41a0

    sub-float/2addr v0, v3

    .line 41
    cmpg-float v0, v0, p4

    if-gtz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/o;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fk;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, p3, p4}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/o;->a:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 51
    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 52
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 53
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedEdges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/b;

    .line 54
    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/util/Set;)V

    move v0, v1

    .line 59
    goto :goto_0

    :cond_3
    move v0, v2

    .line 61
    goto :goto_0
.end method
