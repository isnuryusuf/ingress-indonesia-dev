.class final Lcom/nianticproject/ingress/common/ui/c/g;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/nianticproject/ingress/common/ui/c/c;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/ui/c/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/c/g;-><init>(Lcom/nianticproject/ingress/common/ui/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->c(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/c/c;->b(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/common/scanner/eo;->a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/c/c;->a(Lcom/nianticproject/ingress/common/ui/c/c;)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0, v5, v3, v5, v4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->b(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/c/g;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->d(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/i;

    move-result-object v0

    sget-object v3, Lcom/nianticproject/ingress/common/ui/c/i;->a:Lcom/nianticproject/ingress/common/ui/c/i;

    if-ne v0, v3, :cond_1

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->e(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bs;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    sget-object v3, Lcom/nianticproject/ingress/common/ui/c/i;->b:Lcom/nianticproject/ingress/common/ui/c/i;

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/ui/c/c;->a(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/common/ui/c/i;)Lcom/nianticproject/ingress/common/ui/c/i;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->d(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/i;

    move-result-object v0

    sget-object v3, Lcom/nianticproject/ingress/common/ui/c/i;->b:Lcom/nianticproject/ingress/common/ui/c/i;

    if-ne v0, v3, :cond_2

    .line 233
    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/f;->a:[I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/c/c;->f(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/c/j;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->g(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->b()F

    move-result v3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c/c;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v4, "the damager container is null. rpcState = %s, fireState = %s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/ui/c/c;->f(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/ui/c/j;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/ui/c/c;->d(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/ui/c/i;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/c/c;->g(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c/c;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v4, "Animation has reached maximum radius but all damage has not been dealt."

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->g(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/c/q;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/c/c;->i(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/ui/c/c;->j(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/j/h;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/ui/c/c;->c(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v7

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    invoke-interface {v0, v5, v6, v7, v3}, Lcom/nianticproject/ingress/common/ui/c/q;->a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;F)Z

    goto :goto_3

    :pswitch_0
    move v0, v2

    .line 238
    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->g(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/c/g;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    sget-object v3, Lcom/nianticproject/ingress/common/ui/c/i;->c:Lcom/nianticproject/ingress/common/ui/c/i;

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/ui/c/c;->a(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/common/ui/c/i;)Lcom/nianticproject/ingress/common/ui/c/i;

    goto/16 :goto_1

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/c/q;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/ui/c/c;->i(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v7

    iget-object v8, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v8}, Lcom/nianticproject/ingress/common/ui/c/c;->j(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/j/h;

    move-result-object v8

    iget-object v9, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v9}, Lcom/nianticproject/ingress/common/ui/c/c;->c(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v9

    invoke-interface {v9}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9, v3}, Lcom/nianticproject/ingress/common/ui/c/q;->a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v4, v5}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/c/q;

    instance-of v5, v0, Lcom/nianticproject/ingress/common/ui/c/p;

    if-eqz v5, :cond_7

    check-cast v0, Lcom/nianticproject/ingress/common/ui/c/p;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/c/c;->q(Lcom/nianticproject/ingress/common/ui/c/c;)I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/c/p;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->r(Lcom/nianticproject/ingress/common/ui/c/c;)I

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->l(Lcom/nianticproject/ingress/common/ui/c/c;)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->m(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v3

    const-string/jumbo v4, "Destroyed %d resonator%s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->l(Lcom/nianticproject/ingress/common/ui/c/c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->l(Lcom/nianticproject/ingress/common/ui/c/c;)I

    move-result v0

    if-le v0, v1, :cond_c

    const-string/jumbo v0, "s"

    :goto_6
    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->n(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aB:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    :cond_a
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->o(Lcom/nianticproject/ingress/common/ui/c/c;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->m(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    const-string/jumbo v1, "Missed all resonators!"

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->i(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/c/c;->p(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/util/Set;)V

    move v0, v2

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, ""

    goto :goto_6

    :cond_d
    move v0, v1

    goto/16 :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/g;->e:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/c;->k(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Z)V

    .line 293
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/q;->dispose()V

    .line 294
    return-void
.end method
