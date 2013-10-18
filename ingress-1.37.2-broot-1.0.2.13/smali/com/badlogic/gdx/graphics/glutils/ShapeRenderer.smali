.class public Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field color:Lcom/badlogic/gdx/graphics/Color;

.field combined:Lcom/badlogic/gdx/math/Matrix4;

.field currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field matrixDirty:Z

.field projView:Lcom/badlogic/gdx/math/Matrix4;

.field renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field tmp:Lcom/badlogic/gdx/math/Matrix4;

.field transform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(I)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 105
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projView:Lcom/badlogic/gdx/math/Matrix4;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combined:Lcom/badlogic/gdx/math/Matrix4;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Matrix4;

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 117
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    invoke-direct {v0, p1, v2, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projView:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 122
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_0
.end method

.method private checkDirty()V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 513
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 514
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0
.end method

.method private checkFlush(I)V
    .locals 2
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getMaxVertices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 520
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 521
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Call end() before beginning a new shape batch"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 197
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->getGlType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 203
    return-void
.end method

.method public box(FFFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Box:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Box)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 341
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 343
    neg-float v0, p6

    .line 344
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 349
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 350
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, v0

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, v0

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 356
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 357
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, v0

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 359
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, v0

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 361
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 362
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 364
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 365
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 366
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 367
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 369
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 370
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 371
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 372
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 376
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 377
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 379
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 380
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 381
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 382
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, v0

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 384
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 385
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, v0

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 386
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 387
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 389
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 390
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 391
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 392
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 394
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, v0

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 400
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, v0

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 401
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float/2addr v0, p3

    invoke-interface {v1, p1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 403
    return-void
.end method

.method public circle(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    const/high16 v0, 0x40c0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    .line 408
    return-void
.end method

.method public circle(FFFI)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 411
    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "segments must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Circle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Circle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 414
    mul-int/lit8 v0, p4, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 416
    const v0, 0x40c90fda

    int-to-float v1, p4

    div-float/2addr v0, v1

    .line 417
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    .line 418
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    .line 420
    const/4 v0, 0x0

    move v1, v2

    move v3, p3

    :goto_0
    if-ge v0, p4, :cond_2

    .line 421
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 422
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, p1, v3

    add-float v8, p2, v1

    invoke-interface {v4, v7, v8, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 424
    mul-float v4, v5, v3

    mul-float v7, v6, v1

    sub-float/2addr v4, v7

    .line 425
    mul-float/2addr v3, v6

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 426
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v3, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 427
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, p1, v4

    add-float v8, p2, v1

    invoke-interface {v3, v7, v8, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v3, p1

    add-float/2addr v1, p2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v3, p2, v2

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 437
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->dispose()V

    .line 538
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 528
    return-void
.end method

.method public filledCircle(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    const/high16 v0, 0x4080

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->filledCircle(FFFI)V

    .line 442
    return-void
.end method

.method public filledCircle(FFFI)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "segments must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledCircle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.FilledCircle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 448
    mul-int/lit8 v0, p4, 0x3

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 450
    const v0, 0x40c90fda

    int-to-float v1, p4

    div-float/2addr v0, v1

    .line 452
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v4

    .line 453
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v5

    .line 454
    const/4 v1, 0x0

    .line 455
    add-int/lit8 v6, p4, -0x1

    .line 456
    const/4 v0, 0x0

    move v2, p3

    :goto_0
    if-ge v0, v6, :cond_2

    .line 457
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v3, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 458
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v7, 0x0

    invoke-interface {v3, p1, p2, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 459
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v3, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 460
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, p1, v2

    add-float v8, p2, v1

    const/4 v9, 0x0

    invoke-interface {v3, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 462
    mul-float v3, v4, v2

    mul-float v7, v5, v1

    sub-float/2addr v3, v7

    .line 463
    mul-float/2addr v2, v5

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    .line 464
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 465
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, p1, v3

    add-float v8, p2, v1

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v3, 0x0

    invoke-interface {v0, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v2, p1

    add-float/2addr v1, p2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    const/4 v2, 0x0

    add-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 476
    return-void
.end method

.method public filledRect(FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledRectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.FilledRectangle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 290
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 304
    return-void
.end method

.method public filledRect(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledRectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.FilledRectangle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 316
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 330
    return-void
.end method

.method public filledTriangle(FFFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledTriangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.FilledTriangle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 501
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 508
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 533
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 534
    return-void
.end method

.method public identity()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 156
    return-void
.end method

.method public line(FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Line)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Line)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 248
    return-void
.end method

.method public line(FFFFFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Line)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 227
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 232
    return-void
.end method

.method public point(FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Point)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 215
    return-void
.end method

.method public rect(FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Rectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Rectangle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 259
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 279
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 175
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 184
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    .line 138
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 129
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 145
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 150
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 165
    return-void
.end method

.method public triangle(FFFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->currType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Triangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Must call begin(ShapeType.Triangle)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkDirty()V

    .line 481
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->checkFlush(I)V

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 496
    return-void
.end method
