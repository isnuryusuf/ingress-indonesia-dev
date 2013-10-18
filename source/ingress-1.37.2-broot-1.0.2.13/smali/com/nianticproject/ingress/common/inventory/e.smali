.class public final Lcom/nianticproject/ingress/common/inventory/e;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

.field private final b:Lcom/nianticproject/ingress/common/j/f;

.field private final c:Lcom/nianticproject/ingress/gameentity/f;

.field private final d:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field private final e:Lcom/nianticproject/ingress/common/model/k;

.field private final f:Lcom/nianticproject/ingress/common/inventory/g;

.field private g:Lcom/nianticproject/ingress/common/j/d;

.field private final h:Lcom/badlogic/gdx/math/Matrix4;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/inventory/g;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    const-string/jumbo v0, "ItemDetailsActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c()Lcom/nianticproject/ingress/common/j/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->b:Lcom/nianticproject/ingress/common/j/f;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->h:Lcom/badlogic/gdx/math/Matrix4;

    .line 79
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 80
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    .line 81
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->d:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 82
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/g;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    .line 83
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ao;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-virtual {p4, v0}, Lcom/nianticproject/ingress/common/inventory/g;->a(Lcom/nianticproject/ingress/common/inventory/ui/ao;)V

    .line 86
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/inventory/e;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->d:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/n;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/n;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/j;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/j;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/n;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    :goto_0
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/am;

    invoke-direct {v3, v0}, Lcom/nianticproject/ingress/common/inventory/ui/am;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/an;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 88
    invoke-static {p1}, Lcom/nianticproject/ingress/common/inventory/ui/a;->b(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->i:Z

    .line 89
    return-void

    .line 86
    :cond_0
    sget-object v3, Lcom/nianticproject/ingress/common/inventory/f;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/n;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/n;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/j;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/j;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/n;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/ba;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/ba;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/b;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/b;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/ba;Lcom/nianticproject/ingress/common/inventory/ui/bf;)V

    goto :goto_0

    :pswitch_1
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/p;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/p;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/o;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/o;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/p;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/aq;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/aq;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ap;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/ap;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/aq;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/be;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/be;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/bc;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/bc;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/be;Lcom/nianticproject/ingress/common/inventory/ui/bb;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/gameentity/components/f;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {p3, v3, v4}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v3

    iput-object v3, p0, Lcom/nianticproject/ingress/common/inventory/e;->g:Lcom/nianticproject/ingress/common/j/d;

    goto :goto_0

    :pswitch_4
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/av;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/av;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/j;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/j;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/n;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/az;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/az;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/ax;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/ax;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/az;Lcom/nianticproject/ingress/common/inventory/ui/aw;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v3, Lcom/nianticproject/ingress/common/inventory/ui/g;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v3, v0, v4}, Lcom/nianticproject/ingress/common/inventory/ui/g;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/e;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-direct {v0, v3, v4}, Lcom/nianticproject/ingress/common/inventory/ui/e;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/g;Lcom/nianticproject/ingress/common/inventory/ui/d;)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 88
    goto/16 :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 181
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(F)Z

    .line 195
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/a;->a(II)V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->b:Lcom/nianticproject/ingress/common/j/f;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/j/f;->a(II)V

    .line 176
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/e;->d:Lcom/nianticproject/ingress/common/inventory/ui/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/e;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/d;)V

    .line 161
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string/jumbo v0, "ItemDetails"

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x3f333333

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->h:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/nianticproject/ingress/common/w/z;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 186
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->i:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->h:Lcom/badlogic/gdx/math/Matrix4;

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v3, v1, v3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->a:Lcom/nianticproject/ingress/common/inventory/ui/ao;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/e;->h:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/e;->b:Lcom/nianticproject/ingress/common/j/f;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 190
    return-void
.end method

.method public final p_()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->p_()V

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->g:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/e;->f:Lcom/nianticproject/ingress/common/inventory/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/g;->a()V

    .line 170
    return-void
.end method
