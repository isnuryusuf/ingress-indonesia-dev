.class final Lcom/nianticproject/ingress/common/j/bb;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/j/ay;

.field final synthetic b:Lcom/nianticproject/ingress/common/j/ba;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j/ba;Ljava/lang/String;Lcom/nianticproject/ingress/common/j/ay;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/ba;->b(Lcom/nianticproject/ingress/common/j/ba;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/ba;->a(Lcom/nianticproject/ingress/common/j/ba;Lcom/nianticproject/ingress/common/j/ay;)V

    .line 511
    :cond_0
    :goto_0
    return-object v7

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/az;->d(Lcom/nianticproject/ingress/common/j/az;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    iget-boolean v1, v1, Lcom/nianticproject/ingress/common/j/ay;->c:Z

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/az;->a(Lcom/nianticproject/ingress/common/j/az;Z)Z

    .line 490
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/az;->a(Lcom/nianticproject/ingress/common/j/az;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    .line 491
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/az;->e(Lcom/nianticproject/ingress/common/j/az;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 492
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v6, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/j/az;->e(Lcom/nianticproject/ingress/common/j/az;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    iget v4, v3, Lcom/nianticproject/ingress/common/j/ay;->a:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    iget v5, v3, Lcom/nianticproject/ingress/common/j/ay;->b:I

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    invoke-static {v6, v0}, Lcom/nianticproject/ingress/common/j/az;->a(Lcom/nianticproject/ingress/common/j/az;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 495
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    iget v1, v1, Lcom/nianticproject/ingress/common/j/ay;->a:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    iget v2, v2, Lcom/nianticproject/ingress/common/j/ay;->b:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/az;->a(Lcom/nianticproject/ingress/common/j/az;I)I

    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/az;->c(Lcom/nianticproject/ingress/common/j/az;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 506
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/az;->f(Lcom/nianticproject/ingress/common/j/az;)Lcom/nianticproject/ingress/common/j/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ba;->a:Lcom/nianticproject/ingress/common/j/az;

    iget-object v2, v0, Lcom/nianticproject/ingress/common/j/bc;->a:Lcom/nianticproject/ingress/common/j/av;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/az;->h()I

    move-result v1

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/j/av;->a(Lcom/nianticproject/ingress/common/j/av;I)I

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/bc;->a:Lcom/nianticproject/ingress/common/j/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/av;->a()V

    goto/16 :goto_0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/bb;->b:Lcom/nianticproject/ingress/common/j/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/bb;->a:Lcom/nianticproject/ingress/common/j/ay;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/ba;->a(Lcom/nianticproject/ingress/common/j/ba;Lcom/nianticproject/ingress/common/j/ay;)V

    goto/16 :goto_0
.end method
